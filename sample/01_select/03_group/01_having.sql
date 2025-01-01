SELECT
	country.region, SUM(country.population)
FROM
	country
GROUP BY
	country.region;

-- havingをつけることでグルーピングの結果に対して表示条件を指定することができる
SELECT
	country.region,
	SUM(
		CASE WHEN
			country.population > '1000'
			
		THEN 1 ELSE 0
		END
	) as SUM_POP
FROM
	country
GROUP BY
	country.region
HAVING
	SUM(
		CASE WHEN
			country.population > '1000'
			
		THEN 1 ELSE 0
		END
	) > 3;

SELECT
	country.region,
	SUM(
		CASE WHEN
			country.population > '1000'
			
		THEN 1 ELSE 0
		END
	) as SUM_POP
FROM
	country
GROUP BY
	country.region
HAVING
	country.region = 'Western Europe';

-- グルーピングしていない検索に対してもhavingは使える
-- その場合表全体が一つのグループと扱われる
SELECT
	'test'
FROM
	city
HAVING
	COUNT(*) <> MAX(city.id);

-- 以下のようにグルーピングしていない状態でhavingを使用するときにhaving条件式で集計関数を使用しないときはDB製品の種類によって挙動が変わる
-- 以下はmysqlの場合は通常のWHERE句と同じ挙動になるがpostgresqlだとエラーになる
SELECT
	*
FROM
	country
HAVING
	country.region = 'Western Europe';

-- テーブルの内容をフィルタリングしたうえでグループ集約する場合はGROUP BYより先にWHEREを使用する
SELECT
	country.region,
	SUM(
		CASE WHEN
			country.population > '1000'
			
		THEN 1 ELSE 0
		END
	) as SUM_POP
FROM
	country
WHERE
	country.region = 'Western Europe'
GROUP BY
	country.region
HAVING
	SUM(
		CASE WHEN
			country.population > '1000'
			
		THEN 1 ELSE 0
		END
	) > 3;

