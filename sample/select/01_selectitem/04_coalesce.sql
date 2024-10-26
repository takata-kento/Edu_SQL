SELECT
	country.name, SUM(country.population)
FROM
	country
GROUP BY
	country.name;

-- coalesceをつけることでnullでない最初の引数を返す
SELECT
	country.name, COALESCE(null, SUM(country.population))
FROM
	country
GROUP BY
	country.name;

