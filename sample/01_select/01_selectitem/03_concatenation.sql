SELECT
	country.name, country.population
FROM
	country;

-- ||をつけることで連結ができる
SELECT
	'国名=' || country.name, country.population
FROM
	country;

