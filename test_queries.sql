-- 1. View all books in the database
SELECT * FROM Book;

-- 2. Find all books written by a specific author
SELECT Book.title, Author.name
FROM Book
JOIN Author ON Book.author_id = Author.author_id
WHERE Author.name = 'Chinua Achebe';

-- 3. Get all orders placed by a specific customer
SELECT OrderTable.order_id, OrderTable.order_date, Book.title
FROM OrderTable
JOIN OrderItem ON OrderTable.order_id = OrderItem.order_id
JOIN Book ON OrderItem.book_id = Book.book_id
JOIN Customer ON OrderTable.customer_id = Customer.customer_id
WHERE Customer.name = 'Amelia Zitha';

-- 4. List all customers and their orders
SELECT Customer.name, OrderTable.order_id, OrderTable.order_date
FROM Customer
JOIN OrderTable ON Customer.customer_id = OrderTable.customer_id;

-- 5. Count how many books are in each category
SELECT Category.name, COUNT(Book.book_id) AS total_books
FROM Category
JOIN Book ON Category.category_id = Book.category_id
GROUP BY Category.name;
