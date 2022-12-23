--Finding NULLs/Empty Fields
SELECT *
FROM unicorn_cos
WHERE city = '';

--Counting NULLs
SELECT COUNT(*)
FROM unicorn
WHERE city = '';

--Inserting 'Nassau' as the city
UPDATE unicorn_cos 
SET city = 'Nassau' 
WHERE city = ''
AND id = 13;

-- Checking changes
SELECT *
FROM unicorn_cos
WHERE id = 13;

-- Inserting 'Hong Kong' as the city
UPDATE unicorn_cos 
SET city = 'Hong Kong' 
WHERE city = ''
AND country = 'Hong Kong';

-- Checking changes
SELECT *
FROM unicorn_cos
WHERE city = 'Hong Kong';

-- Inserting 'China' as the country where was previously 'Hong Kong' as country
UPDATE unicorn_cos 
SET country = 'China' 
WHERE city = 'Hong Kong';

-- Checking changes
SELECT *
FROM unicorn_cos
WHERE id IN (326, 894, 1062);

-- Correcting other 'Hong Kong' as a country errors
SELECT *
FROM unicorn_cos
WHERE country = 'Hong Kong';

UPDATE unicorn_cos 
SET city = 'Hong Kong' 
WHERE country = 'Hong Kong';

UPDATE unicorn_cos 
SET country = 'China' 
WHERE id IN (57, 596, 721);

-- Checking changes
SELECT *
FROM unicorn_cos
WHERE id IN (57, 596, 721);

-- Inserting 'Singapore' as a city into the remaining empty entries
UPDATE unicorn_cos 
SET city = 'Singapore' 
WHERE city = '';

-- Checking changes
SELECT id, company, city, country
FROM unicorn_cos
WHERE id IN (171, 243, 252, 383, 542, 812, 849, 881, 890, 981, 987, 995)
ORDER BY id ASC;

-- Checking all the rows that were previously NULLs
SELECT id, company, city, country
FROM unicorn_cos
WHERE id IN (13, 171, 243, 252, 326, 383, 542, 812, 849, 881, 890, 894, 981, 987, 995, 1062)
ORDER BY id ASC;

-- Checking the other rows that had 'Hong Kong' as a country
SELECT id, company, city, country
FROM unicorn_cos
WHERE id IN (57, 596, 721)
ORDER BY id ASC;
