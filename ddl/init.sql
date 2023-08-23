CREATE TABLE IF NOT EXISTS fructs
(	id_fructs int,
	name_fructs varchar(60),
	price money,
	manufacturer_country varchar(60),
	date_of_manufacture date
)
DISTRIBUTED BY (id_fructs)
PARTITION BY RANGE(date_of_manufacture)
(START (date '2023-01-01') INCLUSIVE
END (date '2024-01-01') EXCLUSIVE
EVERY (INTERVAL '1 month'));

CREATE TABLE IF NOT EXISTS sales
(	id int,
	id_fructs int,
	count_sales int,
	date_sales date
)
DISTRIBUTED BY (id)
PARTITION BY RANGE (date_sales)
(START (date '2023-01-01') INCLUSIVE
END (date '2024-01-01') EXCLUSIVE
EVERY (INTERVAL '1 month') );