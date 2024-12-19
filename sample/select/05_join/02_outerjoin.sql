-- 1.外部結合
SELECT
	*
FROM
	country co LEFT JOIN city ci
ON
	co.code = ci.countrycode;

-- 2.3表の内部結合
SELECT
	co.code, co.name, ci.id, ci.name, lang."language"
FROM
	country co
LEFT JOIN
	city ci ON co.code = ci.countrycode
LEFT JOIN
	countrylanguage lang ON ci.countrycode = lang.countrycode;

SELECT
	co.code, co.name, ci.id, ci.name, lang."language"
FROM
	country co
LEFT JOIN
	city ci ON co.code = ci.countrycode
RIGHT JOIN
	countrylanguage lang ON ci.countrycode = lang.countrycode;

-- 3.結合条件のカラム名が同じであればUSINGを使用して簡潔に記述できる
SELECT
	ci.id, ci.name, lang."language"
FROM
	city ci
LEFT JOIN
	countrylanguage lang USING(countrycode);

