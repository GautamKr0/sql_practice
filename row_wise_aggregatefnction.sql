CREATE TABLE PRODUCT (
	P_Name VARCHAR(50)
	,D1_Price MONEY
	,D2_Price MONEY
	,D3_Price MONEY
	,D4_Price MONEY
	,D5_Price MONEY
	)

INSERT INTO PRODUCT
VALUES (
	'HP'
	,8
	,9
	,8.9
	,6.5
	,9.05
	)
	,(
	'APPLE'
	,6
	,7
	,8.9
	,6.5
	,9.05
	)
	,(
	'DELL'
	,9
	,9
	,8.9
	,6.5
	,9.05
	)
	,(
	'ASUS'
	,7
	,8.9
	,8.9
	,6.5
	,9.05
	)
	,(
	'LENOVO'
	,4
	,5
	,8.9
	,3.5
	,9.05
	)

SELECT P_Name
	,D1_Price
	,D2_Price
	,D3_Price
	,D4_Price
	,D5_Price
FROM PRODUCT

SELECT P_Name
	,(
		SELECT MIN(MIN_Price)
		FROM (
			VALUES (D1_Price)
				,(D2_Price)
				,(D3_Price)
				,(D4_Price)
				,(D5_Price)
			) AS MinPrice(MIN_Price)
		) AS MIN_Price
	,(
		SELECT MAX(MAX_Price)
		FROM (
			VALUES (D1_Price)
				,(D2_Price)
				,(D3_Price)
				,(D4_Price)
				,(D5_Price)
			) AS MaxPrice(MAX_Price)
		) AS MAX_Price
	,(
		SELECT AVG(AVG_Price)
		FROM (
			VALUES (D1_Price)
				,(D2_Price)
				,(D3_Price)
				,(D4_Price)
				,(D5_Price)
			) AS AvgPrice(AVG_Price)
		) AS AVG_Price
FROM PRODUCT
