-- Create admin user with full access
CREATE USER 'bookstore_admin'@'localhost' IDENTIFIED BY 'admin_password';
GRANT ALL PRIVILEGES ON bookstore.* TO 'bookstore_admin'@'localhost';
-- Create staff user with limited access
CREATE USER 'bookstore_staff'@'localhost' IDENTIFIED BY 'staff_password';
GRANT SELECT, INSERT, UPDATE ON bookstore.* TO 'bookstore_staff'@'localhost';
-- Create customer service user with read-only access
CREATE USER 'bookstore_cs'@'localhost' IDENTIFIED BY 'cs_password';
GRANT SELECT ON bookstore.* TO 'bookstore_cs'@'localhost';

FLUSH PRIVILEGES;