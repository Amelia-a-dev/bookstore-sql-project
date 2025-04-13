-- Create Tables

CREATE TABLE author (
    author_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE publisher (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(100)
);

CREATE TABLE book_language (
    language_id INT PRIMARY KEY,
    language_name VARCHAR(50)
);

CREATE TABLE book (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    publisher_id INT,
    language_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
    FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);

CREATE TABLE book_author (
    book_author_id INT PRIMARY KEY,
    book_id INT,
    author_id INT,
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

CREATE TABLE country (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100)
);

CREATE TABLE address (
    address_id INT PRIMARY KEY,
    street VARCHAR(100),
    city VARCHAR(50),
    postal_code VARCHAR(10),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE address_status (
    address_status_id INT PRIMARY KEY,
    status_description VARCHAR(50)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

CREATE TABLE customer_address (
    customer_address_id INT PRIMARY KEY,
    customer_id INT,
    address_id INT,
    address_status_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id),
    FOREIGN KEY (address_status_id) REFERENCES address_status(address_status_id)
);

CREATE TABLE shipping_method (
    shipping_method_id INT PRIMARY KEY,
    method_name VARCHAR(50),
    delivery_time_days INT
);

CREATE TABLE order_status (
    order_status_id INT PRIMARY KEY,
    status_name VARCHAR(50)
);

CREATE TABLE cust_order (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_status_id INT,
    shipping_method_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id),
    FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(shipping_method_id)
);

CREATE TABLE order_history (
    order_history_id INT PRIMARY KEY,
    order_id INT,
    order_status_id INT,
    changed_on DATETIME,
    notes VARCHAR(255),
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
);

CREATE TABLE order_line (
    order_line_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);
