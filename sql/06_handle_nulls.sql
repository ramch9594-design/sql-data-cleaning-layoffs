-- Fill missing industry using same company & location

UPDATE layoffsr_stagging t1
SET industry = t2.industry
FROM layoffsr_stagging t2
WHERE t1.company = t2.company
AND t1.location = t2.location
AND t1.industry IS NULL
AND t2.industry IS NOT NULL;
