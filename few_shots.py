few_shots = [
    {
        "Query": "Display details of all roommates whose move-in date is after '2022-01-01'.",
        "SQLQuery": "SELECT * FROM Roommates WHERE Move_In_Date > '2022-01-01';",
        "SQLResult": "Result of the SQL query",
        "Answer": "Result set of roommates who moved in after '2022-01-01'."
    },
    {
        "Query": "Count the total number of expenses recorded.",
        "SQLQuery": "SELECT COUNT(*) FROM Expenses;",
        "SQLResult": "Result of the SQL query",
        "Answer": "Total count of expenses."
    },
    {
        "Query": "Display the average payment amount made by roommates.",
        "SQLQuery": "SELECT AVG(Amount) FROM Payments;",
        "SQLResult": "Result of the SQL query",
        "Answer": "Average payment amount made by roommates."
    },
    {
        "Query": "List the roommates along with their total payment amounts, sorted in descending order of payment amounts.",
        "SQLQuery": "SELECT r.Roommate_FirstName, r.Roommate_LastName, SUM(p.Amount) AS Total_Payment_Amount FROM Roommates r JOIN Payments p ON r.Roommate_ID = p.Roommate_ID GROUP BY r.Roommate_ID ORDER BY Total_Payment_Amount DESC;",
        "SQLResult": "Result of the SQL query",
        "Answer": "List of roommates with their total payment amounts, sorted by total payment amounts."
    },
    {
        "Query": "Find the roommate who has made the highest payment.",
        "SQLQuery": "SELECT r.Roommate_FirstName, r.Roommate_LastName, SUM(p.Amount) AS Total_Payment_Amount FROM Roommates r JOIN Payments p ON r.Roommate_ID = p.Roommate_ID GROUP BY r.Roommate_ID ORDER BY Total_Payment_Amount DESC LIMIT 1;",
        "SQLResult": "Result of the SQL query",
        "Answer": "Roommate with the highest payment amount."
    },    {
        "Query": "List all roommates who are currently living in the apartment (i.e., Move_Out_Date is NULL).",
        "SQLQuery": "SELECT * FROM Roommates WHERE Move_Out_Date IS NULL;",
        "SQLResult": "Result set of roommates currently living in the apartment.",
        "Answer": "Result of the SQL query"
    },
    {
        "Query": "Display the total amount paid by each roommate, sorted in descending order of total payment amount.",
        "SQLQuery": "SELECT r.Roommate_FirstName, r.Roommate_LastName, COALESCE(SUM(p.Amount), 0) AS Total_Payment_Amount FROM Roommates r LEFT JOIN Payments p ON r.Roommate_ID = p.Roommate_ID GROUP BY r.Roommate_ID ORDER BY Total_Payment_Amount DESC;",
        "SQLResult": "List of roommates with their total payment amounts, sorted by total payment amounts.",
        "Answer": "Result of the SQL query"
    },
    {
        "Query": "Find the average amount spent on groceries by each roommate.",
        "SQLQuery": "SELECT r.Roommate_FirstName, r.Roommate_LastName, AVG(e.Amount) AS Avg_Groceries_Amount FROM Roommates r JOIN Expenses e ON r.Roommate_ID = e.Roommate_ID WHERE e.Expense_Category = 'Groceries' GROUP BY r.Roommate_ID;",
        "SQLResult": "Average amount spent on groceries by each roommate.",
        "Answer": "Result of the SQL query"
    },
    {
        "Query": "Display the top 3 roommates who have made the highest payments.",
        "SQLQuery": "SELECT r.Roommate_FirstName, r.Roommate_LastName, COALESCE(SUM(p.Amount), 0) AS Total_Payment_Amount FROM Roommates r LEFT JOIN Payments p ON r.Roommate_ID = p.Roommate_ID GROUP BY r.Roommate_ID ORDER BY Total_Payment_Amount DESC LIMIT 3;",
        "SQLResult": "Top 3 roommates with the highest payment amounts.",
        "Answer": "Result of the SQL query"
    }
]
