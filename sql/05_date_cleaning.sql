-- Standardize date format

UPDATE layoffsr_stagging
SET "date" = REPLACE("date", '-', '/');

-- Convert 'NULL' string to actual NULL

UPDATE layoffsr_stagging
SET "date" = NULL
WHERE "date" = 'NULL';

-- Add proper date column

ALTER TABLE layoffsr_stagging
ADD COLUMN new_date DATE;

-- Convert text to date

UPDATE layoffsr_stagging
SET new_date = TO_DATE("date", 'MM/DD/YYYY');
