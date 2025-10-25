-- sql_transformations.sql
CREATE VIEW v_sales_summary AS
SELECT
    s.Region,
    p.Category AS ProductCategory,
    SUM(s.TotalAmount) AS TotalRevenue,
    SUM(s.TotalProfit) AS TotalProfit,
    COUNT(DISTINCT s.CustomerID) AS UniqueCustomers
FROM cleaned_sales s
JOIN products p ON s.ProductID = p.ProductID
GROUP BY s.Region, p.Category;
