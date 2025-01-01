-- 1.
UPDATE
	countrylanguage
SET language = 'test'
WHERE
	countrycode = 'JPN'
AND
	language = 'Ainu';

/*
UPDATE
	countrylanguage
SET language = 'AInu'
WHERE
	countrycode = 'JPN'
AND
	language = 'test';
*/

