SELECT
	country.region, country.name
FROM
	country;

-- order byの後に整数値をつけるとN番目の列でソートしてくれる
SELECT
	country.name, country.region
FROM
	country
ORDER BY 2;

