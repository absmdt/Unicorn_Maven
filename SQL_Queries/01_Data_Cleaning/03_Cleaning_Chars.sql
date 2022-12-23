--Cleaning unwanted characters
--Removing letter '$' from column valuation_billion
UPDATE unicorn_cos
SET valuation_billion = REPLACE(valuation_billion, '$', '');

--Removing letter 'B' from column 'valuation_billion'
UPDATE unicorn_cos
SET valuation_billion = REPLACE(valuation_billion, 'B', '');

--Modifying data type of 'valuation_billion'(VARCHAR -> INTEGER)
ALTER TABLE unicorn_cos
MODIFY COLUMN valuation_billion INT;

--Removing '$' sign from column 'funding'
UPDATE unicorn_cos
SET funding = REPLACE(funding, '$', '');

--Checking changes
SELECT *
FROM unicorn_cos;
