-- 1.副問い合わせ結果が1行のみの時
SELECT
	cl.language AS ことば
FROM
	countrylanguage AS cl
WHERE
	cl.countrycode = (
					SELECT
						co.code
					FROM
						country co
					WHERE
						co.code = 'AFG'
					);

-- 2.副問い合わせ結果が複数行の時
SELECT
	*
FROM
	city
WHERE
	countrycode IN (
					SELECT
						co.code
					FROM
						country co
					WHERE
						co.region = 'Western Europe'
					);

