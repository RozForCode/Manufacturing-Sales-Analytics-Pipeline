-- create_star_schema.sql
CREATE TABLE DimProduct (
    ProductID VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    UnitPrice DECIMAL(10,2),
    ProductionCost DECIMAL(10,2)
);

CREATE TABLE FactSales (
    SaleID VARCHAR(10) PRIMARY KEY,
    ProductID VARCHAR(10) REFERENCES DimProduct(ProductID),
    CustomerID VARCHAR(10),
    RegionID VARCHAR(10),
    SaleDate DATE,
    QuantitySold INT,
    TotalAmount DECIMAL(10,2),
    TotalProfit DECIMAL(10,2)
);
