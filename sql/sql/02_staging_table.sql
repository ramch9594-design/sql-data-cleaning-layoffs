-- Create staging table (working copy)

CREATE TABLE layoffsr_stagging AS
SELECT * FROM layoffsr;


🧠 Why

👉 Never clean raw data directly
👉 Safe experimentation
