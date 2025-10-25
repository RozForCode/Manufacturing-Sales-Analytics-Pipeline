INSERT INTO FactSales (SaleID, ProductID, CustomerID, RegionID, SaleDate, QuantitySold, TotalAmount, TotalProfit)
SELECT SaleID, ProductID, CustomerID, RegionID, SaleDate, QuantitySold, TotalAmount, TotalProfit
FROM cleaned_sales;
