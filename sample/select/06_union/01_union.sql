-- 1.和
SELECT
	*
FROM
	city ci
WHERE
	ci.countrycode = 'AFG'
UNION
SELECT
	*
FROM
	city ci
WHERE
	ci.countrycode = 'NLD';

-- 2.カラムが違う場合は結合できない
SELECT
	*
FROM
	city ci
WHERE
	ci.countrycode = 'AFG'
UNION
SELECT
	ci.id, ci.name, ci.countrycode
FROM
	city ci
WHERE
	ci.countrycode = 'NLD';

-- 3.カラム数が同じなため結合できる
SELECT
	ci.id, ci.name, ci.countrycode
FROM
	city ci
WHERE
	ci.countrycode = 'AFG'
UNION
SELECT
	ci.id AS ID1, ci.name AS NAME2, ci.countrycode AS COUTRYCODE3
FROM
	city ci
WHERE
	ci.countrycode = 'NLD';

-- 3.カラム数は同じだが型が違うため結合できない
SELECT
	ci.id, ci.name, ci.countrycode
FROM
	city ci
WHERE
	ci.countrycode = 'AFG'
UNION
SELECT
	co.code, co.name, co.region
FROM
	country co
WHERE
	co.region = 'Western Europe';

