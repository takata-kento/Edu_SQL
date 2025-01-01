-- 1.存在するかどうか(EXISTS)で相関副問い合わせを実行する場合
SELECT
	cl.language
FROM
	countrylanguage cl
WHERE
	EXISTS (
		SELECT *
		FROM
			country co
		WHERE
			co.code = cl.countrycode
		AND
			co.population < 2000
		);

-- 2.そのほかの場合
SELECT
	cl.language
FROM
	countrylanguage cl
WHERE
	cl.countrycode IN (
		SELECT co.code
		FROM
			country co
		WHERE
			co.code = cl.countrycode
		AND
			co.population < 2000
		);

