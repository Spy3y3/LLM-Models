CREATE DATABASE Roommatedb;

USE Roommatedb;

CREATE TABLE Roommates (
   Roommate_ID INT PRIMARY KEY,
   Roommate_FirstName VARCHAR(25),
   Roommate_LastName VARCHAR(25),
   Gender VARCHAR(10),
   Occupation VARCHAR(25),
   Move_In_Date DATE,
   Move_Out_Date DATE
);

INSERT INTO Roommates (Roommate_ID, Roommate_FirstName, Roommate_LastName, Gender, Occupation, Move_In_Date, Move_Out_Date)
VALUES

(1, 'Aarav', 'Kumar', 'Male', 'Software Engineer', '2021-01-01', NULL),
(2, 'Aishwarya', 'Patel', 'Female', 'Marketing Specialist', '2021-02-01', '2022-06-15'),
(3, 'Arjun', 'Sharma', 'Male', 'Teacher', '2021-03-15', NULL),
(4, 'Deepika', 'Singh', 'Female', 'Nurse', '2021-04-10', '2022-08-20'),
(5, 'Rohan', 'Verma', 'Male', 'Accountant', '2021-05-20', NULL),
(6, 'Kriti', 'Gupta', 'Female', 'Graphic Designer', '2021-06-05', '2022-09-25'),
(7, 'Aryan', 'Kapoor', 'Male', 'Chef', '2022-09-01', NULL),
(8, 'Priya', 'Yadav', 'Female', 'Architect', '2022-10-15', '2023-02-10'),
(9, 'Vivaan', 'Singh', 'Male', 'Pharmacist', '2022-11-20', NULL),
(10, 'Zara', 'Khan', 'Female', 'Financial Analyst', '2022-12-05', '2023-04-30'),
(11, 'Advait', 'Desai', 'Male', 'Engineer', '2022-01-02', NULL),
(12, 'Aditi', 'Joshi', 'Female', 'Journalist', '2022-02-15', NULL),
(13, 'Ishika', 'Patel', 'Female', 'Data Analyst', '2023-12-05', NULL),
(14, 'Kabir', 'Sharma', 'Male', 'Software Developer', '2022-01-10', '2023-03-15'),
(15, 'Ishita', 'Gupta', 'Female', 'Data Scientist', '2022-02-25', NULL);

CREATE TABLE Expenses (
 Roommate_ID INT,
 Expense_Type VARCHAR(50),
 Expense_Category VARCHAR(50),
 Retailer VARCHAR(100),
 Invoice_Date DATE,
 FOREIGN KEY (Roommate_ID) REFERENCES Roommates(Roommate_ID)
);

INSERT INTO Expenses (Roommate_ID, Expense_Type, Expense_Category, Retailer, Invoice_Date)
VALUES

(1, 'Rent', 'Rent', NULL, '2022-01-01'),
(1, 'Ration', 'Groceries', 'Flipkart', '2022-01-05'),
(1, 'Ration', 'Veggies', 'Amazon', '2022-01-10'),
(1, 'Maid Expense', 'Maid Expense', NULL, '2022-01-15'),
(1, 'Utilities', 'Cleaning', NULL, '2022-01-20'),
(1, 'Other', 'Internet Bill', 'ISP A', '2022-01-25'),
(2, 'Rent', 'Rent', NULL, '2022-01-02'),
(2, 'Ration', 'Groceries', 'D-Mart', '2022-01-06'),
(2, 'Ration', 'Veggies', 'Zepto', '2022-01-11'),
(2, 'Maid Expense', 'Maid Expense', NULL, '2022-01-16'),
(2, 'Utilities', 'Cleaning', NULL, '2022-01-21'),
(2, 'Other', 'Electricity Bill', NULL, '2022-01-26'),
(2, 'Other', 'Dining Out', 'Restaurant Y', '2022-02-02'),
(3, 'Rent', 'Rent', NULL, '2022-01-03'),
(3, 'Ration', 'Groceries', 'Frazo', '2022-01-07'),
(3, 'Ration', 'Veggies', 'Flipkart', '2022-01-12'),
(3, 'Maid Expense', 'Maid Expense', NULL, '2022-01-17'),
(3, 'Utilities', 'Cleaning', 'Amazon', '2022-01-22'),
(3, 'Other', 'Internet Bill', 'ISP B', '2022-01-27'),
(4, 'Rent', 'Rent', NULL, '2022-02-01'),
(4, 'Ration', 'Groceries', 'Flipkart', '2022-02-05'),
(4, 'Ration', 'Veggies', 'D-Mart', '2022-02-10'),
(4, 'Maid Expense', 'Maid Expense', NULL, '2022-02-15'),
(4, 'Utilities', 'Cleaning', 'Zepto', '2022-02-20'),
(4, 'Other', 'Electricity Bill', NULL, '2022-02-25'),
(4, 'Other', 'Dining Out', 'Restaurant X', '2022-03-01'),
(5, 'Rent', 'Rent', NULL, '2022-02-02'),
(5, 'Ration', 'Groceries', 'Amazon', '2022-02-06'),
(5, 'Ration', 'Veggies', 'D-Mart', '2022-02-11'),
(5, 'Maid Expense', 'Maid Expense', NULL, '2022-02-16'),
(5, 'Utilities', 'Cleaning', NULL, '2022-02-21'),
(5, 'Other', 'Internet Bill', 'ISP C', '2022-02-26'),
(6, 'Rent', 'Rent', NULL, '2022-03-01'),
(6, 'Ration', 'Groceries', 'Flipkart', '2022-03-05'),
(6, 'Ration', 'Veggies', 'D-Mart', '2022-03-10'),
(6, 'Maid Expense', 'Maid Expense', NULL, '2022-03-15'),
(6, 'Utilities', 'Cleaning', 'Zepto', '2022-03-20'),
(6, 'Other', 'Internet Bill', 'ISP B', '2022-03-25'),
(6, 'Other', 'Dining Out', 'Restaurant Z', '2022-04-01'),
(7, 'Rent', 'Rent', NULL, '2022-03-02'),
(7, 'Ration', 'Groceries', 'Frazo', '2022-03-06'),
(7, 'Ration', 'Veggies', 'Flipkart', '2022-03-11'),
(7, 'Maid Expense', 'Maid Expense', NULL, '2022-03-16'),
(7, 'Utilities', 'Cleaning', 'Amazon', '2022-03-21'),
(7, 'Other', 'Electricity Bill', NULL, '2022-03-26'),
(8, 'Rent', 'Rent', NULL, '2022-04-01'),
(8, 'Ration', 'Groceries', 'Flipkart', '2022-04-05'),
(8, 'Ration', 'Veggies', 'D-Mart', '2022-04-10'),
(8, 'Maid Expense', 'Maid Expense', NULL, '2022-04-15'),
(8, 'Utilities', 'Cleaning', 'Zepto', '2022-04-20'),
(8, 'Other', 'Internet Bill', 'ISP A', '2022-04-25'),
(8, 'Other', 'Dining Out', 'Restaurant Y', '2022-05-01'),
(9, 'Rent', 'Rent', NULL, '2022-04-02'),
(9, 'Ration', 'Groceries', 'Frazo', '2022-04-06'),
(9, 'Ration', 'Veggies', 'Flipkart', '2022-04-11'),
(9, 'Maid Expense', 'Maid Expense', NULL, '2022-04-16'),
(9, 'Utilities', 'Cleaning', 'Amazon', '2022-04-21'),
(9, 'Other', 'Electricity Bill', NULL, '2022-04-26'),
(9, 'Other', 'Dining Out', 'Restaurant Z', '2022-05-02'),
(10, 'Rent', 'Rent', NULL, '2022-05-01'),
(10, 'Ration', 'Groceries', 'D-Mart', '2022-05-05'),
(10, 'Ration', 'Veggies', 'Zepto', '2022-05-10'),
(10, 'Maid Expense', 'Maid Expense', NULL, '2022-05-15'),
(10, 'Utilities', 'Cleaning', 'Amazon', '2022-05-20'),
(10, 'Other', 'Internet Bill', 'ISP B', '2022-05-25'),
(11, 'Rent', 'Rent', NULL, '2022-05-02'),
(11, 'Ration', 'Groceries', 'Frazo', '2022-05-06'),
(11, 'Ration', 'Veggies', 'Flipkart', '2022-05-11'),
(11, 'Maid Expense', 'Maid Expense', NULL, '2022-05-16'),
(11, 'Utilities', 'Cleaning', 'Amazon', '2022-05-21'),
(11, 'Other', 'Electricity Bill', NULL, '2022-05-26'),
(11, 'Other', 'Dining Out', 'Restaurant Y', '2022-06-02'),
(12, 'Rent', 'Rent', NULL, '2022-06-01'),
(12, 'Ration', 'Groceries', 'Frazo', '2022-06-05'),
(12, 'Ration', 'Veggies', 'Flipkart', '2022-06-10'),
(12, 'Maid Expense', 'Maid Expense', NULL, '2022-06-15'),
(12, 'Utilities', 'Cleaning', 'Amazon', '2022-06-20'),
(12, 'Other', 'Internet Bill', 'ISP A', '2022-06-25'),
(13, 'Rent', 'Rent', NULL, '2022-07-01'),
(13, 'Ration', 'Groceries', 'Flipkart', '2022-07-05'),
(13, 'Ration', 'Veggies', 'D-Mart', '2022-07-10'),
(13, 'Maid Expense', 'Maid Expense', NULL, '2022-07-15'),
(13, 'Utilities', 'Cleaning', 'Zepto', '2022-07-20'),
(13, 'Other', 'Electricity Bill', NULL, '2022-07-25'),
(13, 'Other', 'Dining Out', 'Restaurant Y', '2022-08-01'),
(14, 'Rent', 'Rent', NULL, '2022-10-01'),
(14, 'Ration', 'Groceries', 'D-Mart', '2022-10-05'),
(14, 'Ration', 'Veggies', 'Zepto', '2022-10-10'),
(14, 'Maid Expense', 'Maid Expense', NULL, '2022-10-15'),
(14, 'Utilities', 'Cleaning', 'Amazon', '2022-10-20'),
(14, 'Other', 'Electricity Bill', NULL, '2022-10-25'),
(14, 'Other', 'Dining Out', 'Restaurant X', '2022-11-01'),
(15, 'Rent', 'Rent', NULL, '2023-01-01'),
(15, 'Ration', 'Groceries', 'Flipkart', '2023-01-05'),
(15, 'Ration', 'Veggies', 'D-Mart', '2023-01-10'),
(15, 'Maid Expense', 'Maid Expense', NULL, '2023-01-15'),
(15, 'Utilities', 'Cleaning', 'Zepto', '2023-01-20'),
(15, 'Other', 'Internet Bill', 'ISP A', '2023-01-25');

-- CREATE TABLE Payments (
--  Roommate_ID INT,
--  Amount DECIMAL(10,2),
--  Payment_Date DATE,
--  Payment_Mode VARCHAR(20),
--  Payment_Status VARCHAR(20),
--  FOREIGN KEY (Roommate_ID) REFERENCES Roommates(Roommate_ID)
-- );

-- INSERT INTO Payments (Roommate_ID, Amount, Payment_Date, Payment_Mode, Payment_Status)
-- VALUES

-- (1, 5231, '2023-01-27', 'Debit Card', 'UnPaid'),
-- (2, 3874, '2022-12-20', 'UPI', 'Paid'),
-- (3, 4128, '2023-01-18', 'Credit Card', 'UnPaid'),
-- (4, 7962, '2022-12-08', 'UPI', 'Paid'),
-- (5, 2543, '2023-01-05', 'Credit Card', 'UnPaid'),
-- (6, 8105, '2022-11-25', 'UPI', 'UnPaid'),
-- (7, 6852, '2023-01-24', 'Cash', 'Paid'),
-- (8, 4219, '2022-12-15', 'UPI', 'UnPaid'),
-- (9, 3657, '2023-01-11', 'Credit Card', 'UnPaid'),
-- (10, 9821, '2022-12-02', 'Debit Card', 'Paid'),
-- (11, 4752, '2023-02-02', 'UPI', 'UnPaid'),
-- (12, 2198, '2023-01-15', 'Credit Card', 'UnPaid'),
-- (13, 6542, '2022-12-29', 'Debit Card', 'Paid'),
-- (14, 3107, '2023-01-21', 'Cash', 'Unpaid'),
-- (15, 8531, '2022-12-12', 'Debit Card', 'Paid');

-- Add new columns to the Expenses table to store payment information
-- ALTER TABLE Expenses
-- ADD COLUMN Payment_Amount DECIMAL(10, 2),
-- ADD COLUMN Payment_Date DATE,
-- ADD COLUMN Payment_Mode VARCHAR(20),
-- ADD COLUMN Payment_Status VARCHAR(20);

-- Update the Expenses table with payment information from the Payments table
-- UPDATE Expenses AS e
-- JOIN Payments AS p ON e.Roommate_ID = p.Roommate_ID
-- SET 
--     e.Payment_Amount = p.Amount,
--     e.Payment_Date = p.Payment_Date,
--     e.Payment_Mode = p.Payment_Mode,
--     e.Payment_Status = p.Payment_Status;

-- select roommate_firstname, expense_type, sum(e.payment_amount)
-- from expenses as e
-- join roommates as r on e.Roommate_ID = r.Roommate_ID
-- where e.Expense_Type = 'Ration' and r.Roommate_ID = 1
-- group by r.roommate_firstname, e.Expense_Type
