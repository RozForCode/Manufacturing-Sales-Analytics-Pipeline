# Manufacturing-Sales-Analytics-Pipeline

# 🏭 Manufacturing Sales Analytics Pipeline

[![Azure](https://img.shields.io/badge/Azure-Data%20Pipeline-0078D4?logo=microsoftazure)](https://azure.microsoft.com)
[![Databricks](https://img.shields.io/badge/Databricks-Analytics-FC3921?logo=databricks)](https://www.databricks.com/)
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi)](https://powerbi.microsoft.com/)
[![Mockaroo](https://img.shields.io/badge/Data-Mockaroo-orange)](https://www.mockaroo.com/)
[![Status](https://img.shields.io/badge/Status-Active-success)]()

### Created by [Navrose Singh Johal](https://github.com/navrosejohal)

---

## 📄 Overview

**Manufacturing Sales Analytics Pipeline** is a cloud-based data engineering project simulating an end-to-end workflow — from raw data ingestion to actionable insights.

It uses **synthetic data** generated with [Mockaroo](https://www.mockaroo.com) and processes it through **Azure services** like Blob Storage, Data Factory, and Databricks to create a structured analytics pipeline.

---

## 📦 Datasets

| File | Description | Example Columns |
|------|--------------|-----------------|
| `materials.csv` | Details of raw materials used in manufacturing. | `MaterialID`, `MaterialName`, `Supplier`, `CostPerUnit`, `StockQuantity`, `ReorderLevel` |
| `production.csv` | Records production runs and operational data. | `ProductionID`, `MaterialID`, `UnitsProduced`, `Date`, `Shift`, `OperatorName` |
| `sales.csv` | Tracks product sales, revenue, and regions. | `SaleID`, `ProductID`, `Region`, `UnitsSold`, `UnitPrice`, `TotalRevenue`, `Date` |

> 💡 All data was generated using Mockaroo to simulate realistic manufacturing and sales workflows.

---

## ⚙️ Azure Data Pipeline Architecture

```text
Mockaroo CSVs → Azure Blob Storage → Azure Data Factory → Azure Databricks → SQL Database / Power BI

