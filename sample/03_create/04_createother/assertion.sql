-- 1.ASSERTIONで複数のテーブルにまたがった制約を作成することができる
--   PostgreSQLはASSERTIONを実装していないので使用できない
CREATE TABLE table1 (
	countrycode character(3) PRIMARY KEY,
	language text,
	isofficial boolean NOT NULL,
	percentage real NOT NULL
);

CREATE TABLE table2 (
	id integer PRIMARY KEY,
	name text NOT NULL,
	countrycode character(3) NOT NULL,
	district text NOT NULL,
	population integer NOT NULL
);

CREATE ASSERTION population_check
CHECK(NOT EXISTS(
	SELECT *
	FROM table1 t1, table2 t2
	WHERE t1.countrycode = t2.countrycode
	AND t2.population > 1000
	)
);

/*
DROP TABLE table1;
DROP TABLE table2;
DROP ASSERTION population_check;
*/

