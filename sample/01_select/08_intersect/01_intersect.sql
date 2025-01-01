-- 1.積
SELECT
	*
FROM
	city ci
WHERE
	ci.countrycode IN ('AFG', 'NDL')
INTERSECT
SELECT
	*
FROM
	city ci
WHERE
	ci.countrycode = 'AFG';

