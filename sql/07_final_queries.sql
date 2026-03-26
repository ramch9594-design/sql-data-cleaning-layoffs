-- Final dataset validation

SELECT COUNT(*) AS total_rows
FROM layoffsr_stagging;

-- Preview cleaned data

SELECT *
FROM layoffsr_stagging
LIMIT 10;

-- Check remaining NULL industry

SELECT COUNT(*) AS null_industry
FROM layoffsr_stagging
WHERE industry IS NULL;
