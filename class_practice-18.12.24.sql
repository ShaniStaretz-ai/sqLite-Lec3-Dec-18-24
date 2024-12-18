-- CREATE TABLE sales (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     product_name TEXT NOT NULL,
--     category TEXT NOT NULL,
--     quantity INTEGER NOT NULL,
--     price REAL NOT NULL,
--     sale_date TEXT NOT NULL
-- );

-- INSERT INTO sales (product_name, category, quantity, price, sale_date) VALUES
-- ('Wireless Mouse', 'Electronics', 15, 25.00, '2024-12-07'),
-- ('Keyboard', 'Electronics', 10, 45.00, '2024-12-08'),
-- ('Monitor', 'Electronics', 5, 150.00, '2024-12-09'),
-- ('USB-C Cable', 'Accessories', 25, 10.00, '2024-12-10'),
-- ('HDMI Adapter', 'Accessories', 20, 12.00, '2024-12-11'),
-- ('Office Chair', 'Furniture', 7, 85.00, '2024-12-12'),
-- ('Standing Desk', 'Furniture', 3, 350.00, '2024-12-13'),
-- ('Notebook', 'Stationery', 50, 5.00, '2024-12-14'),
-- ('Pen Set', 'Stationery', 40, 8.00, '2024-12-15'),
-- ('Desk Lamp', 'Furniture', 12, 30.00, '2024-12-16'),
-- ('External Hard Drive', 'Electronics', 8, 100.00, '2024-12-17'),
-- ('Smartwatch', 'Electronics', 6, 200.00, '2024-12-18'),
-- ('Bluetooth Speaker', 'Electronics', 9, 75.00, '2024-12-19'),
-- ('Tablet', 'Electronics', 4, 300.00, '2024-12-20'),
-- ('Printer', 'Electronics', 3, 120.00, '2024-12-21'),
-- ('Desk Organizer', 'Stationery', 30, 15.00, '2024-12-22'),
-- ('Whiteboard', 'Office Supplies', 5, 60.00, '2024-12-23'),
-- ('Projector', 'Electronics', 2, 500.00, '2024-12-24'),
-- ('Coffee Maker', 'Appliances', 4, 80.00, '2024-12-25'),
-- ('Water Bottle', 'Accessories', 25, 12.00, '2024-12-26'),
-- ('Backpack', 'Accessories', 10, 45.00, '2024-12-27'),
-- ('Desk Calendar', 'Stationery', 20, 10.00, '2024-12-28'),
-- ('File Cabinet', 'Furniture', 2, 150.00, '2024-12-29'),
-- ('Shredder', 'Office Supplies', 3, 110.00, '2024-12-30'),
-- ('Stapler', 'Stationery', 35, 7.00, '2024-12-31'),
-- ('Paper Ream', 'Stationery', 50, 6.00, '2025-01-01'),
-- ('Envelope Pack', 'Stationery', 40, 4.00, '2025-01-02'),
-- ('Desk Mat', 'Accessories', 15, 20.00, '2025-01-03'),
-- ('Mouse Pad', 'Accessories', 25, 10.00, '2025-01-04'),
-- ('Laptop Stand', 'Accessories', 10, 35.00, '2025-01-05');

select category, count(*), max(price) from sales group by category order by price desc;
-- 1 group by category, find the avg price per category
select  avg(price) from sales group by category;
-- 2 group by category, find the min quantity per category;
select  min(quantity) from sales group by category;
-- -- 3 select * and total = price * quantity 
select *, (price *quantity) as total from sales;
-- 4 alter table, add column total 
-- alter table sales ADD COLUMN  total;
-- 5 UPDATE total in all rows to price * quantity per sale
update sales set total=price*quantity;

-- 6 group by category, find the sum of total per category
select sum(total) from sales group by category;

