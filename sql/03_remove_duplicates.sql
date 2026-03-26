-- Remove duplicate rows using ROW_NUMBER

DELETE FROM layoffsr_stagging
WHERE ctid IN (
    SELECT ctid
    FROM (
        SELECT ctid,
               ROW_NUMBER() OVER (
                   PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, "date", stage, country, funds_raised_millions
               ) AS row_num
        FROM layoffsr_stagging
    ) t
    WHERE row_num > 1
);
