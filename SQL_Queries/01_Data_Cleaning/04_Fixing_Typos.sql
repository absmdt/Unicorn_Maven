--Fixing typos in the investors field
--Companies 'SVOLT' and 'Evidation' both have double comma typo in the investors column; their id are 105 and 910, respectively 
SELECT *
FROM unicorn_cos
WHERE investors LIKE '%,,%';

--Updating 'SVOLT' investors to the correct string 
UPDATE unicorn_cos
SET investors = 'IDG Capital, Bank Of China Group Investment, SDIC CMC Investment Management'
WHERE id = 106;

--Updating 'Evidation' investors to the correct string 
UPDATE unicorn_cos
SET investors = 'B Capital Group, GE Ventures, McKesson Ventures'
WHERE id = 911;

--Checking the changes made
SELECT id, company, investors
FROM unicorn_cos
WHERE id IN (106, 911);

--Fixing investor name typo; the company 'Rappi' has one of its investors name written wrongly
UPDATE unicorn_cos
SET investors = 'DST Global, Andreessen Horowitz, Sequoia Capital, Redpoint Ventures'
WHERE id = 150;

--Checking the change made
SELECT id, company, investors
FROM unicorn_cos
WHERE id = 150;

--One company has 'N/A' (Non Applicable) in the investors field 
SELECT *
FROM unicorn_cos
WHERE investors = 'N/A';

--Changing from 'N/A' to NULL
UPDATE unicorn_cos
SET investors = NULL
WHERE investors = 'N/A';

--Checking changes
SELECT *
FROM unicorn_cos
WHERE id = 630;

--There are two companies with 'Undisclosed' investors
SELECT *
FROM unicorn_cos
WHERE investors = 'Undisclosed';

--Changing from 'Undisclosed' to NULL
UPDATE unicorn_cos
SET investors = NULL
WHERE investors = 'Undisclosed';

--Checking changes
SELECT *
FROM unicorn_cos
WHERE id IN (745, 551);

--The company 'Skydio' has a duplicate in the investors field
SELECT *
FROM unicorn_cos
WHERE company = 'Skydio'

--Updating 'Skydio' investors to the correct string
UPDATE unicorn_cos
SET investors = 'Andreessen Horowitz, Institutional Venture Partners, Accel'
WHERE id = 1026;

--Checking changes
SELECT *
FROM unicorn_cos
WHERE id = 1026;
