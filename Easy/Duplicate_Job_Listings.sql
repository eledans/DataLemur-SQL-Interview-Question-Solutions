SELECT COUNT(company_id) AS duplicate_companies
FROM (
  SELECT company_id, title, description, COUNT(job_id) AS job_count
  FROM job_listings
  GROUP BY company_id, title, description
  ORDER BY job_count DESC
) AS job
WHERE job_count = 2;
