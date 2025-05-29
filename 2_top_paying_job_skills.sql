/*
   -  Add the specific skills required for these roles
    - Why? it provides a detailed a detailed look at which high-paying jobs demand certain skills,
        helping job seekers to understand which skills to develop that align with top salaries
*/
WITH top_paying_skills AS (
    SELECT 
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM 
        job_postings_fact
        INNER JOIN 
        company_dim ON company_dim.company_id = job_postings_fact.company_id
    WHERE 
        job_title = 'Data Analyst' 
        AND salary_year_avg IS NOT NULL 
        AND job_location = 'United States'
    ORDER BY
        salary_year_avg DESC
    LIMIT 
        10
)
    SELECT 
        top_paying_skills.*,
        skills
    FROM 
        top_paying_skills
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = top_paying_skills.job_id
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
    ORDER BY
        salary_year_avg DESC

/*
[
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matlab"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "pandas"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "python"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "mysql"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "aws"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "r"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "python"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "java"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "r"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "javascript"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "c++"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "tableau"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "power bi"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "qlik"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "sql"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "python"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "r"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "golang"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "elasticsearch"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "aws"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "bigquery"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "gcp"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "pandas"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "scikit-learn"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "looker"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "kubernetes"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "swift"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "excel"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "tableau"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "looker"
  },
  {
    "job_id": 1482852,
    "job_title": "Data Analyst",
    "salary_year_avg": "138500.0",
    "company_name": "Overmind",
    "skills": "sql"
  },
  {
    "job_id": 1482852,
    "job_title": "Data Analyst",
    "salary_year_avg": "138500.0",
    "company_name": "Overmind",
    "skills": "python"
  },
  {
    "job_id": 1326467,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "EPIC Brokers",
    "skills": "excel"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "excel"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
*/
