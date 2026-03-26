-- Standardize industry values (crypto variations)

UPDATE layoffsr_stagging
SET industry = 'crypto'
WHERE LOWER(industry) LIKE 'crypto%';

-- Remove trailing dots in country

UPDATE layoffsr_stagging
SET country = TRIM(TRAILING '.' FROM country);

-- Trim spaces in key columns

UPDATE layoffsr_stagging
SET company = TRIM(company),
    location = TRIM(location),
    industry = TRIM(industry);
