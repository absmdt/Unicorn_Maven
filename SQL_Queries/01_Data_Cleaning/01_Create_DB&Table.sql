--Creating Database
CREATE SCHEMA IF NOT EXISTS unicorn_proj;

--Creating Table
CREATE TABLE unicorn
(
	company VARCHAR(255),
	industry VARCHAR(255),
	year_founded INTEGER,
	city VARCHAR(255),
	country VARCHAR(255),
	continent VARCHAR(255),
	date_joined DATE,
	valuation_billion VARCHAR(255),
	funding VARCHAR(255),
	investors TEXT
);

--Imported .csv file

--Returning all results
SELECT * FROM unicorn_cos;
-- No errors
