-- Insert Data

INSERT INTO author (author_id, first_name, last_name) VALUES
(1, 'Lusanda', 'Zile'),
(2, 'Austin', 'Luz'),
(3, 'Sherry', 'Williams');

INSERT INTO publisher (publisher_id, publisher_name) VALUES
(1, 'MacMillan'),
(2, 'Scholastic'),
(3, 'Big Books');

INSERT INTO book_language (language_id, language_name) VALUES
(1, 'English'),
(2, 'Spanish');

INSERT INTO book (book_id, title, publisher_id, language_id) VALUES
(1, 'Boss Baby', 1, 1),
(2, 'The Strange Doll', 2, 1),
(3, 'Little One', 3, 1);

INSERT INTO book_author (book_author_id, book_id, author_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

INSERT INTO country (country_id, country_name) VALUES
(1, 'South Africa'),
(2, 'Mexico'),
(3, 'Kenya');

INSERT INTO address (address_id, street, city, postal_code, country_id) VALUES
(1, '354 Bok St', 'Johannesburg', '2000', 1),
(2, '45 Kenyatta Ave', 'Kenya', '6001', 3);

INSERT INTO address_status (address_status_id, status_description) VALUES
(1, 'Current'),
(2, 'Previous');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number) VALUES
(1, 'Lulo', 'Samsons', 'lulo@gmail.com', '0821234567'),
(2, 'Katleho', 'Sebusi', 'kat@gmail.com', '0739876543');

INSERT INTO customer_address (customer_address_id, customer_id, address_id, address_status_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1);

INSERT INTO shipping_method (shipping_method_id, method_name, delivery_time_days) VALUES
(1, 'Standard Shipping', 5),
(2, 'Express Shipping', 2);

INSERT INTO order_status (order_status_id, status_name) VALUES
(1, 'Pending'),
(2, 'Shipped'),
(3, 'Delivered');

INSERT INTO cust_order (order_id, customer_id, order_status_id, shipping_method_id, order_date, total_amount) VALUES
(1, 1, 1, 1, '2025-04-01', 99.98),
(2, 2, 3, 2, '2024-05-02', 79.99);

INSERT INTO order_history (order_history_id, order_id, order_status_id, changed_on, notes) VALUES
(1, 1, 1, '2024-04-01 09:00:00', 'Order created'),
(2, 1, 2, '2024-04-02 10:00:00', 'Order shipped');

INSERT INTO order_line (order_line_id, order_id, book_id, quantity, price) VALUES
(1, 1, 1, 2, 29.99),
(2, 2, 2, 1, 59.99);
