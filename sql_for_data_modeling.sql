USE accenture;

-- Create tables for contents, reactions, and reactoin_types
CREATE TABLE contents (
Content_ID VARCHAR(255) not null,
Content_type VARCHAR(255) not null,
Category VARCHAR(255) not null
);

CREATE TABLE reactions(
Content_ID VARCHAR(255) not null,
Reaction_type VARCHAR(255) not null,
DateTime VARCHAR(255) not null
);

CREATE TABLE reaction_types(
Reaction_type VARCHAR(255) not null,
Sentiment VARCHAR(255) not null,
Score int not null
);

-- Load csv files of cleaned data into tables 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/final_reaction_type_data.csv'
INTO TABLE reaction_types
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Change datatype of datetime to DATETIME which will be used for time vs reaction analysis
ALTER TABLE reactions
MODIFY COLUMN DateTime DATETIME;

-- To find top 5 categories
SELECT
r.Content_ID, c.Content_Type, c.Category, SUM(rt.Score) as total_score
FROM reactions as r
JOIN contents as c ON c.Content_ID = r.Content_ID 
JOIN reaction_types as rt ON r.Reaction_Type = rt.Reaction_Type
GROUP BY c.Content_ID, c.Content_Type, c.Category
ORDER BY total_score DESC
LIMIT 5;

-- To get all the categories
SELECT distinct Category
FROM contents;

-- Sentiment anaylsis of top 5 categories
WITH TopCategories AS (
    SELECT 
        CASE 
            WHEN UPPER(c.Category) = 'ANIMALS' THEN 'animals'
            ELSE c.Category
        END AS Standardized_Category
    FROM contents c
    JOIN reactions r ON c.Content_ID = r.Content_ID
    JOIN reaction_types rt ON r.Reaction_Type = rt.Reaction_Type
    GROUP BY 
        Standardized_Category
    ORDER BY SUM(rt.Score) DESC
    LIMIT 5
)

-- Main query to select reaction types for the top 5 categories
SELECT DISTINCT 
    c.Category,
    r.Reaction_Type, 
    rt.Sentiment, 
    COUNT(r.Reaction_Type) AS No_reaction_type,
    SUM(rt.Score) as total_score
FROM contents c
JOIN reactions r ON c.Content_ID = r.Content_ID
JOIN reaction_types rt ON r.Reaction_Type = rt.Reaction_Type
GROUP BY 
    c.Category,
    r.Reaction_Type, 
    rt.Sentiment
HAVING 
    c.Category IN (SELECT Standardized_Category FROM TopCategories)
ORDER BY c.Category, No_reaction_type DESC;



SELECT * FROM contents;
SELECT * FROM reactions;
SELECT * FROM reaction_types;

DROP TABLE contents;
DROP TABLE reactions;
DROP TABLE reaction_types;
