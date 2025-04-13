-- Insert into book_language
INSERT INTO book_language (language_name) VALUES 
('English'),
('Spanish'),
('French'),
('German'),
('Chinese');
-- Insert into publisher
INSERT INTO publisher (publisher_name) VALUES 
('Penguin Random House'),
('HarperCollins'),
('Macmillan'),
('Hachette'),
('Simon & Schuster');
-- Insert into author
INSERT INTO author (author_name) VALUES 
('J.K. Rowling'),
('Stephen King'),
('Agatha Christie'),
('George Orwell'),
('Jane Austen');
-- Insert into book
INSERT INTO book (title, isbn, publisher_id, language_id, price, publication_date) VALUES 
('Harry Potter and the Philosopher''s Stone', '9780747532743', 1, 1, 12.99, '1997-06-26'),
('The Shining', '9780307743657', 2, 1, 9.99, '1977-01-28'),
('Murder on the Orient Express', '9780062073501', 3, 1, 8.50, '1934-01-01'),
('1984', '9780451524935', 4, 1, 7.99, '1949-06-08'),
('Pride and Prejudice', '9780141439518', 5, 1, 6.50, '1813-01-28');
-- Insert into book_author
INSERT INTO book_author (book_id, author_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
-- Insert into country
INSERT INTO country (country_name) VALUES 
('United States'),
('United Kingdom'),
('Canada'),
('France'),
('Germany');
-- Insert into address_status
INSERT INTO address_status (status_name) VALUES 
('Current'),
('Previous'),
('Business');
-- Insert into address
INSERT INTO address (street_number, street_name, city, country_id) VALUES 
('123', 'Main St', 'New York', 1),
('456', 'Oak Ave', 'London', 2),
('789', 'Maple Rd', 'Toronto', 3),
('10', 'Rue de Paris', 'Paris', 4),
('55', 'Berliner Str', 'Berlin', 5);
-- Insert into customer
INSERT INTO customer (first_name, last_name, email) VALUES 
('Grace', 'Montana', 'Grace24@gmail.com'),
('Zee', 'Nxumalo', 'ZeeN2004@gmail.com'),
('Amanda', 'Smith', 'Smith07@gmail.com'),
('Chris', 'Grey', 'Chris.grey@gmail.com'),
('Beyonce', 'Williams', 'B.williams2@gmail.com'),
('Zoe Adams', 'zoe@gmail.com', '0878783464');
-- Insert into customer_address
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES 
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);
-- Insert into shipping_method
INSERT INTO shipping_method (method_name, cost) VALUES 
('Standard', 7.99),
('Express', 15.99),
('24Hours', 30.99);
-- Insert into order_status
INSERT INTO order_status (status_name) VALUES 
('Pending'),
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled');
-- Insert into cust_order
INSERT INTO cust_order (customer_id, order_date, shipping_method_id, address_id) VALUES 
(1, '2025-01-15 10:30:00', 1, 1),
(2, '2025-02-20 14:45:00', 2, 2),
(3, '2025-03-10 09:15:00', 1, 3),
(4, '2025-04-05 16:20:00', 3, 4),
(5, '2025-05-12 11:00:00', 2, 5);
-- Insert into order_line
INSERT INTO order_line (order_id, book_id, quantity, price) VALUES 
(1, 1, 1, 32.99),
(1, 2, 1, 9.99),
(2, 3, 2, 9.50),
(3, 4, 1, 7.99),
(4, 5, 3, 16.50),
(5, 1, 1, 22.99),
(5, 5, 1, 4.50);
-- Insert into order_history
INSERT INTO order_history (order_id, status_id, status_date) VALUES 
(1, 1, '2025-01-15 10:30:00'),
(1, 2, '2025-01-16 09:40:00'),
(1, 3, '2025-01-18 14:30:00'),
(1, 4, '2025-01-20 11:15:00'),
(2, 1, '2025-02-20 14:45:00'),
(2, 2, '2025-02-21 10:00:00'),
(3, 1, '2025-03-10 09:15:00'),
(4, 1, '2025-04-05 16:20:00'),
(5, 1, '2025-05-12 11:50:00');

