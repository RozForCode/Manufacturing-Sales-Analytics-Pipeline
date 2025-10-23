# ADF Pipeline Design – IKO Data Pipeline

## Objective

Automate ingestion of raw CSVs from Azure Data Lake → transform using Databricks → load into SQL-based Data Warehouse.

## Pipeline Components

1. **Ingest**

   - Source: Azure Blob (01_raw_data/)
   - Datasets: materials.csv, shipments.csv, sales.csv, etc.
   - Activity: Copy Data (Blob → Data Lake Storage Gen2)

2. **Transform**

   - Activity: Databricks Notebook (`databricks_cleaning.ipynb`)
   - Tasks:
     - Remove nulls
     - Standardize date formats
     - Join region names
     - Calculate profit per sale (sales - production cost)

3. **Load**
   - Sink: Azure SQL Database
   - Activity: Stored Proc `load_transformed_data.sql`

## Trigger

- Schedule: Daily at 3AM ET
