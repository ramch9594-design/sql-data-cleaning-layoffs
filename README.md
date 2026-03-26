# 📊 SQL Data Cleaning Project – Layoffs Dataset (PostgreSQL)

## 🔍 Project Overview

This project focuses on cleaning a real-world layoffs dataset using PostgreSQL. The goal was to transform raw, inconsistent data into a structured and analysis-ready format by applying practical data cleaning techniques used in industry.

---

## 📁 Dataset Description

* Dataset: Global Layoffs Dataset
* Records: ~2361 rows
* Columns:

  * company
  * location
  * industry
  * total_laid_off
  * percentage_laid_off
  * date
  * stage
  * country
  * funds_raised_millions

---

## 🎯 Objectives

* Remove duplicate records
* Standardize inconsistent text values
* Convert incorrect data types
* Handle NULL and missing values
* Prepare dataset for analysis

---

## 🧹 Data Cleaning Steps

### 1. Created Staging Table

A duplicate table was created to preserve raw data and perform safe transformations.

### 2. Removed Duplicates

Used `ROW_NUMBER()` window function to identify duplicate rows and removed them using `ctid`.

### 3. Standardized Data

* Fixed inconsistent industry values (e.g., Crypto variations)
* Cleaned country names (removed trailing symbols)
* Applied TRIM to remove unnecessary spaces

### 4. Date Cleaning

* Standardized date formats by replacing '-' with '/'
* Converted TEXT to DATE using `TO_DATE()`
* Created a new column for proper date storage

### 5. Handling NULL Values

* Converted string 'NULL' into actual NULL values
* Identified missing industry values and attempted to fill using self-join logic
* Left unresolvable NULL values unchanged to avoid incorrect assumptions

### 6. Final Validation

Verified dataset for:

* No duplicates
* Consistent formats
* Valid data types
* No unnecessary data removal

---

## 🧠 SQL Techniques Used

* Window Functions (`ROW_NUMBER`)
* CTE (Common Table Expressions)
* Data Type Conversion (`TO_DATE`)
* String Functions (`TRIM`, `REPLACE`, `LOWER`)
* Conditional Updates
* Self Joins
* Data Validation Queries

---

## ✅ Final Outcome

* Clean and structured dataset ready for analysis
* Improved data consistency and reliability
* Removed data redundancy
* Preserved data integrity

---

## 📌 Key Learnings

* Data cleaning takes majority of analysis time
* Real-world data is messy and inconsistent
* Understanding data is more important than writing queries
* Not all missing data should be filled

---
