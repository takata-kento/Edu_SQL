-- 1.複数件を挿入する(カラム名は省略可能.その場合はすべてのカラムの値を指定する必要がある)
INSERT INTO
	countrylanguage(countrycode, language, isofficial, percentage)
VALUES
	('JPN', 'test_1', 'f', 0),
	('JPN', 'test_2', 'f', 0);

/*
DELETE FROM countrylanguage
WHERE
	countrycode = 'JPN'
AND
	language IN ('test_1', 'test_2');
*/

-- 2.VALUESの代わりにSELECTの結果を指定することもできる
/*
CREATE TABLE insert_test_table (
	countrycode character(3),
	language text,
	isofficial boolean NOT NULL,
	percentage real NOT NULL,
	PRIMARY KEY (countrycode, language)
);
*/

INSERT INTO
	insert_test_table (countrycode, language, isofficial, percentage)
SELECT *
FROM countrylanguage
WHERE
	countrycode = 'JPN';

/*
DROP TABLE insert_test_table;
*/

