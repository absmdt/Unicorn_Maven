-- Fixing typos within the industry field
-- There are 73 entries with the industry name of 'Artificial intelligence' with a lowercase 'i'
SELECT *
FROM unicorn_cos 
WHERE industry = 'Artificial intelligence';

-- There are 11 entries with the industry name of 'Artificial Intelligence' with a uppercase 'I'
SELECT *
FROM unicorn_cos 
WHERE industry = 'Artificial Intelligence'
ORDER BY id;

-- Fixing industry typo in 'Artificial Intelligence'
UPDATE unicorn_cos
SET industry = 'Artificial intelligence'
WHERE industry = 'Artificial Intelligence';

-- Checking changes
SELECT *
FROM unicorn_cos
WHERE id IN (271, 413, 444, 524, 638, 644, 790, 864, 897, 930, 992);
