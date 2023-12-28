-- 2022년 5월 / 총매출 DESC, 식품ID ASC
-- total sales? 


SELECT B.PRODUCT_ID, B.PRODUCT_NAME, SUM(B.PRICE * A.AMOUNT) TOTAL_SALES
FROM FOOD_ORDER A
INNER JOIN FOOD_PRODUCT B
ON A.PRODUCT_ID = B.PRODUCT_ID
WHERE TO_CHAR(PRODUCE_DATE, 'YYYYMM') = '202205' 
GROUP BY B.PRODUCT_ID, B.PRODUCT_NAME
ORDER BY 3 DESC, 1