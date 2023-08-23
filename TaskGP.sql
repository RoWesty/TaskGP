set optimizer = on;
SELECT name_fructs, SUM(f.price*s.count_sales) as final_sales
FROM sales s INNER JOIN fructs f ON f.id_fructs = s.id_fructs
WHERE s.id_fructs = 7 and date_sales >= '2023-06-01'
GROUP BY name_fructs
