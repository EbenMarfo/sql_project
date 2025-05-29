/*
    Question: What are the top paying data analyst jobs?
    - Identify the top-10 Data Analyst roles that are available remotely
    - Focus on job postings with specified salaries (Remove nulls)
    Why? highlights the job opportunities for Data Analysts, offering insights employment opportunities.
*/

SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM 
    job_postings_fact
    INNER JOIN 
    company_dim ON company_dim.company_id = job_postings_fact.company_id
WHERE 
    job_title = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL 
    AND job_location = 'Anywhere'
ORDER BY
    salary_year_avg DESC
LIMIT 
    10

