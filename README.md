# postgresql-data-cleaning-etl
# Data Cleaning and Migration Project with PostgreSQL

## Objective
This project demonstrates a complete ETL (Extract, Transform, Load) process. The goal was to take a raw, messy patient dataset from a CSV file, clean and transform it using SQL, and load it into a well-structured, analysis-ready PostgreSQL database.

## Tools Used
* **Database:** PostgreSQL (hosted on Neon)
* **SQL Client:** DBeaver
* **Language:** SQL

## Workflow
The project followed a multi-step process to ensure data quality and integrity.

**1. Data Loading (Staging)**
* A staging table (`patients_source`) was created with all columns set to `VARCHAR`. This flexible schema guaranteed a successful initial import of the raw CSV data without data type errors.

**2. Schema Design & Mapping**
* A final, clean table (`patients_clean`) was designed using best-practice data types, including `INTEGER`, `BOOLEAN`, `FLOAT`, and a custom `ENUM` type for categorical data (`activity_level`).
* A mapping plan was established to define the transformation rules for each column. 

**3. Data Transformation and Loading**
* A single, robust SQL script was written to migrate data from `patients_source` to `patients_clean`.
* This script handled various data quality issues, including:
    * Converting text to correct numeric types (`CAST`).
    * Handling empty strings by converting them to `NULL` to prevent errors.
    * Standardizing text data to handle case-sensitivity (`UPPER`).
    * Mapping text values (e.g., "Yes"/"No") to booleans and ENUMs (`CASE`).

**4. Data Analysis**
* Basic exploratory queries were run on the final `patients_clean` table to derive simple insights, demonstrating the value of the cleaned data.

## Data Source
The raw data used for this project is the Heart Disease dataset, available on Kaggle : https://www.kaggle.com/datasets/oktayrdeki/heart-disease/data
