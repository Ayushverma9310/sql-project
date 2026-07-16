SELECT 
    job_title_short AS title,
    job_location AS  location,
    job_posted_date::DATE AS date
FROM job_postings_fact
LIMIT 5;



SELECT 
    job_title_short AS title,
    job_location AS  location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time
FROM job_postings_fact
LIMIT 5;


SELECT 
    job_title_short AS title,
    job_location AS  location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time,
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(YEAR FROM job_posted_date) AS date_year
FROM job_postings_fact
LIMIT 5;


SELECT 
    COUNT(job_id) AS job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) AS month
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY month
ORDER BY job_posted_count DESC;


SELECT 
    salary_year_avg,
    salary_hour_avg
FROM
    job_postings_fact
WHERE 
    job_posted_date > '2023-06-01'
GROUP BY 
        job_schedule_type;

SELECT * FROM job_postings_fact
LIMIT 5;