-- 1.差
SELECT
	*
FROM
	city ci
EXCEPT
SELECT
	*
FROM
	city ci
WHERE
	ci.countrycode = 'AFG';

