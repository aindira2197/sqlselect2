CREATE TABLE customers (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE orders (
    id INT,
    customer_id INT,
    total INT
);

INSERT INTO customers VALUES
(1,'Ali'),(2,'Vali'),(3,'Sami');

INSERT INTO orders VALUES
(1,1,300),(2,1,250),
(3,2,200),(4,3,600);

SELECT c.name, SUM(o.total) AS total_spent
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
HAVING SUM(o.total) > 500;
