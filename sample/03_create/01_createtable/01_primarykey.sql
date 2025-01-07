-- 1.主キーがカラム一つの場合列制約、テーブル制約どちらでも設定可能
CREATE TABLE create_test_table (
	countrycode character(3) PRIMARY KEY,
	language text,
	isofficial boolean NOT NULL,
	percentage real NOT NULL
);

/*
DROP TABLE create_test_table;
*/

-- 2.複合主キーの場合はテーブル制約を使用する
CREATE TABLE create_test_table (
	countrycode character(3),
	language text,
	isofficial boolean NOT NULL,
	percentage real NOT NULL,
	PRIMARY KEY (countrycode, language)
);

/*
DROP TABLE create_test_table;
*/

