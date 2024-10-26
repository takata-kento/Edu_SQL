SELECT
	country.region
FROM
	country;

-- likeをつけることで部分一致条件にできる
-- %は任意の0文字以上の文字列を意味する
SELECT
	country.region
FROM
	country
WHERE
	country.region LIKE '_a%';  -- _を使うと1桁目は任意の文字でよいとう条件になる

