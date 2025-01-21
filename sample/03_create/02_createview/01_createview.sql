-- 1.ビューのカラムに名前を付けたい場合はビュー名の後ろにカラム名を列記する
CREATE VIEW city_info(都市ID, 都市名, 国名, 地域名) AS
SELECT ci.id, ci.name, co.name, co.region
FROM city ci
LEFT JOIN country co
ON ci.countrycode = co.code;

/*
SELECT * FROM city_info;

DROP VIEW city_info;
*/

-- 1.SELECT文側に別名を付けても反映される
CREATE VIEW city_info AS
SELECT ci.id, ci.name AS 都市名, co.name AS 国名, co.region AS 地域名
FROM city ci
LEFT JOIN country co
ON ci.countrycode = co.code;

/*
SELECT * FROM city_info;

DROP VIEW city_info;
*/

