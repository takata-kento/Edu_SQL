-- 1.検査制約を使用して入力制御できる
CREATE TABLE create_test_table (
	countrycode character(3),
	language text,
	isofficial boolean NOT NULL,
	percentage real NOT NULL CHECK(percentage >= 0 AND percentage <= 100),
	PRIMARY KEY (countrycode, language)
);

/*
DROP TABLE create_test_table;
*/

