/*
    **Question: What are the most in-demand skills for data analysts?**
    - Identify the top 5 in-demand skills for a data analyst.
    - Focus on all job postings.
    - Why? Retrieves the top 5 skills with the highest demand in the job market, 
    providing insights into the most valuable skills for job seekers.
*/
    SELECT 
        skills,
        salary_year_avg AS salary,
        COUNT(job_postings_fact.job_id) AS demand_count,
        company_dim.name AS company_name
    FROM 
        job_postings_fact
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
    INNER JOIN company_dim ON company_dim.company_id = job_postings_fact.company_id
    WHERE 
        job_postings_fact.job_title_short = 'Data Analyst'
        AND job_postings_fact.salary_year_avg IS NOT NULL
        AND job_postings_fact.job_work_from_home = TRUE
    GROUP BY
        skills, salary, company_name
    ORDER BY 
        demand_count DESC
    LIMIT 5;
