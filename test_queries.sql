--List all books with their authors
SELECT b.title, a.first_name, a.last_name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;

--Show all customers with their current address
SELECT c.first_name, c.last_name, a.street, a.city, cn.country_name
FROM customer c
JOIN customer_address ca ON c.customer_id = ca.customer_id
JOIN address a ON ca.address_id = a.address_id
JOIN country cn ON a.country_id = cn.country_id
WHERE ca.address_status_id = 1;

--Find all orders with their total amount and status
SELECT o.order_id, c.first_name, c.last_name, os.status_name, o.total_amount
FROM cust_order o
JOIN customer c ON o.customer_id = c.customer_id
JOIN order_status os ON o.order_status_id = os.order_status_id;

--List all books ordered,quantity and total line price
SELECT b.title, ol.quantity, (ol.quantity * ol.price) AS line_total
FROM order_line ol
JOIN book b ON ol.book_id = b.book_id;
