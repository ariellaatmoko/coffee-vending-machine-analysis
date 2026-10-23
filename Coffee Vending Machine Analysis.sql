/*
Title: Coffee Vending Machine Queries 
By: Ariella Atmoko
*/

--There are total of 3636 row from the dataset.


SELECT *
FROM "Coffee Sales"
WHERE "Coffee Name" IS NULL
   OR "Date" IS NULL
   OR "Price" IS NULL;

--Dataset was cleaned on Excel before. The query shows that the data is cleaned and there is no missing data.

SELECT 
	"Coffee Name",
	COUNT(*)AS total_orders
FROM "Coffee Sales"
GROUP BY "Coffee Name"
ORDER BY total_orders DESC;

SELECT
	"Coffee Name",
	SUM("Price")AS revenue
FROM "Coffee Sales"
GROUP BY "Coffee Name"
ORDER BY revenue DESC;

--Queries shows Americano with Milk sold the most but Latte has the most revenue. Americano with Milk is cheaper than Latte by 4,9. 

SELECT
	"Date",
	COUNT(*)AS total_transactions
FROM "Coffee Sales"
GROUP BY "Date"
ORDER BY total_transactions DESC;

SELECT
	"Date",
	SUM("Price")AS total_revenue
FROM "Coffee Sales"
GROUP BY "Date"
ORDER BY total_revenue DESC;

SELECT
	"Coffee Name",
	COUNT(*)AS total_transactions
FROM "Coffee Sales"
WHERE "Date" = '2024-10-11'
GROUP BY "Coffee Name"
ORDER BY total_transactions DESC;

SELECT
	EXTRACT(HOUR FROM "Datetime")AS rush_hour,
	COUNT(*)AS total_transaction
FROM "Coffee Sales"
WHERE "Date" = '2024-10-11'
GROUP BY EXTRACT(HOUR FROM "Datetime")
ORDER BY total_transaction DESC;

--11 Oct '24 has the most spending with total spent 26 transaction and 836.66 as total revenue. Hot Chocolate, Americano, Americano with Milk and Latte sold the most that day. Mostly people buy buy coffee at 8 A.M.

SELECT
    CASE
        WHEN "Card Code" IS NULL THEN 'Cash'
        ELSE 'Card'
    END AS payment_method,
    COUNT(*) AS total_purchases
FROM "Coffee Sales"
GROUP BY payment_method
ORDER BY total_purchases DESC;

SELECT
    CASE
        WHEN "Card Code" IS NULL THEN 'Cash'
        ELSE 'Card'
    END AS payment_method,
    COUNT(*) AS total_purchases,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS purchase_percentage
FROM "Coffee Sales"
GROUP BY payment_method
ORDER BY total_purchases DESC;

SELECT
	"Card Code",
	COUNT(*)AS total_purchases
FROM "Coffee Sales"
GROUP BY "Card Code"
ORDER BY total_purchases DESC;

--Top three customers: ANON-0000-0000-0012, ANON-0000-0000-0141, and [null]. The data [null] means cash transactions, it doesn't refer to a person because it could be purchased by different people. 


SELECT
    "Card Code",
    COUNT(*) AS total_purchases,
    SUM("Price") AS total_spending
FROM "Coffee Sales"
WHERE "Card Code" IS NOT NULL
GROUP BY "Card Code"
HAVING COUNT(*) >= 5
ORDER BY total_purchases DESC;

WITH customer_summary AS(
	SELECT
	c."Card Code",
	c."First Name",
	c."Last Name",
	SUM(s."Price")AS total_spending
FROM "Coffee Sales" s
INNER JOIN "Customers" c
	ON s."Card Code" = c."Card Code"
GROUP BY
	c."Card Code",
	c."First Name",
	c."Last Name"
)
SELECT*
FROM customer_summary
ORDER BY total_spending DESC;

--Liam Gonzalez, Liam Scott, and Emma Roberts are top three customers can be trace by their card code. 

--End of note