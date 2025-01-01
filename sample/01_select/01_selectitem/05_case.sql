SELECT
	country.region, SUM(country.population)
FROM
	country
GROUP BY
	country.region;

-- caseをつけることで条件式を組み込める
SELECT
	country.region,
	SUM(
		CASE WHEN
			country.population > '1000'
			
		THEN 1 ELSE 0
		END
	)
FROM
	country
GROUP BY
	country.region;

