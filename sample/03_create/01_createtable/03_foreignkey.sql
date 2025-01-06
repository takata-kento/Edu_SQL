-- 1.列制約で設定する場合はREFERENCESから始める
CREATE TABLE create_test_table (
	countrycode character(3) PRIMARY KEY REFERENCES country(code),
	language text,
	isofficial boolean NOT NULL,
	percentage real NOT NULL
);

/*
DROP TABLE create_test_table;
*/

-- 2.テーブル制約で設定する場合
CREATE TABLE create_test_table (
	countrycode character(3) PRIMARY KEY,
	language text,
	isofficial boolean NOT NULL,
	percentage real NOT NULL,
	FOREIGN KEY (countrycode) REFERENCES country(code)
);

/*
DROP TABLE create_test_table;
*/

-- 3.参照先テーブルで更新や削除があった場合のふるまいを設定することができる
--   以下は削除時の例で更新時はON DELETEをON UPDATEにする
--   SET NULLは参照先テーブルで更新・削除が発生したときに参照元テーブルのカラムにNULLをセットする
CREATE TABLE create_test_table (
	countrycode character(3) PRIMARY KEY,
	language text,
	isofficial boolean NOT NULL,
	percentage real NOT NULL,
	FOREIGN KEY (countrycode) REFERENCES country(code) ON DELETE SET NULL
);

/*
DROP TABLE create_test_table;
*/

--  4.CASCADEは参照先テーブルで更新・削除が発生したときに参照元テーブルのカラムを更新またはレコード削除する
CREATE TABLE create_test_table (
	countrycode character(3) PRIMARY KEY,
	language text,
	isofficial boolean NOT NULL,
	percentage real NOT NULL,
	FOREIGN KEY (countrycode) REFERENCES country(code) ON DELETE CASCADE
);

/*
DROP TABLE create_test_table;
*/

