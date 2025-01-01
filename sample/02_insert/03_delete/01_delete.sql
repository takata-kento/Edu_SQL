-- 1.WHEREで指定することをしないとテーブル内のすべてのレコードが対象になる
/*
INSERT INTO
	countrylanguage(countrycode, language, isofficial, percentage)
VALUES
	('JPN', 'test_1', 'f', 0),
	('JPN', 'test_2', 'f', 0);
*/

DELETE FROM countrylanguage
WHERE
	countrycode = 'JPN'
AND
	language IN ('test_1', 'test_2');

