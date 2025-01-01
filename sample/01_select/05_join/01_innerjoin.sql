-- 1.内部結合
SELECT
	*
FROM
	country co JOIN city ci
ON
	co.code = ci.countrycode;

-- 2.`join on`を使用せずに以下のように記述することもできる
SELECT
	*
FROM
	country co, city ci
WHERE
	co.code = ci.countrycode;

-- 3.3表の内部結合
SELECT
	co.code, co.name, ci.id, ci.name, lang."language"
FROM
	country co, city ci, countrylanguage lang
WHERE
	co.code = ci.countrycode
AND
	ci.countrycode = lang.countrycode;

-- 4.3表の内部結合(join版)
SELECT
	co.code, co.name, ci.id, ci.name, lang."language"
FROM
	country co
JOIN
	city ci ON co.code = ci.countrycode
JOIN
	countrylanguage lang ON ci.countrycode = lang.countrycode;

-- 5.結合条件のカラム名が同じであればUSINGを使用して簡潔に記述できる
SELECT
	ci.id, ci.name, lang."language"
FROM
	city ci
JOIN
	countrylanguage lang USING(countrycode);

