-- City distribution

-- Counting how many distinct cities there are
SELECT COUNT(DISTINCT(city))
FROM unicorn_cos;
-- There are 259 different values in the city column 

-- Checking all the distinct cities in the dataset
SELECT DISTINCT(city)
FROM unicorn_cos
ORDER BY city ASC;

-- Checking the distribution of unicorn companies across each city
SELECT city, COUNT(city)
FROM unicorn_cos
GROUP BY city
ORDER BY COUNT(city) DESC;
-- The top 5 most frequent cities for unicorn companies are: San Francisco, New York, Beijing, Shangai, and London
