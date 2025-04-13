-- 1. List all books with their authors
SELECT b.title, a.author_name, b.price
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;
-- 2. Show customer orders with details
SELECT 
    c.first_name, 
    c.last_name, 
    co.order_date, 
    b.title, 
    ol.quantity,  
    ol.price,
    (ol.quantity * ol.price) AS subtotal
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id
JOIN order_line ol ON co.order_id = ol.order_id
JOIN book b ON ol.book_id = b.book_id;
-- 3. Check order status history for a specific order
SELECT 
    co.order_id,
    c.first_name,
    c.last_name,
    os.status_name,
    oh.status_date
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN order_history oh ON co.order_id = oh.order_id
JOIN order_status os ON oh.status_id = os.status_id
WHERE co.order_id = 1
ORDER BY oh.status_date;
-- 4. Calculate total sales by book
SELECT 
    b.title,
    SUM(ol.quantity) AS total_copies_sold,
    SUM(ol.quantity * ol.price) AS total_revenue
FROM book b
JOIN order_line ol ON b.book_id = ol.book_id
GROUP BY b.title
ORDER BY total_revenue DESC;
-- 5. Order status tracking
SELECT 
    co.order_id,
    DATE(co.order_date) AS order_date,
    CONCAT(c.first_name, ' ', c.last_name) AS customer,
    os.status_name,
    oh.status_date
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN order_history oh ON co.order_id = oh.order_id
JOIN order_status os ON oh.status_id = os.status_id
WHERE co.order_id = 1
ORDER BY oh.status_date;
--6. Display all authors
SELECT * FROM author;
--7. Display all books in English
SELECT title FROM book
WHERE langID = 1;
--8. Insert a new customer
INSERT INTO customer 
VALUES (16, 'Zoe Adams', 'zoe@gmail.com', '0878783464');
--9. Display all orderID with a total amount greater than 1500
SELECT orderID, totalAmount FROM cust_order
WHERE totalAmount > 1500;
--10. Display all orders where statusID is 3, 'Shipped'
SELECT orderID, statusID FROM cust_order
WHERE statusID = 3;
--11. Display the total number of books ordered by each orderID
SELECT orderID, SUM(quantityOrdered) AS totalBooks
FROM order_line
GROUP BY orderID;
--12. Display the total amount paid by each order
SELECT orderID, SUM(lineTotal) AS totalAmount
FROM order_line
GROUP BY orderID;
--13. Display all customerID in Kenya
SELECT countryID, customerID 
FROM customer_address
WHERE countryID = 1;