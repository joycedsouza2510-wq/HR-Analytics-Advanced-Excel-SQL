--                        HR ANALYTICS SQL PROJECT
-- Data Analysis using MySQL
-- Dataset:500 Employee records

-- Query 1: Total Number of Employees
SELECT COUNT(*) AS total_employees
FROM HR_Analytics.employees;

-- Query 2: Employee Count by Department
SELECT 
    department,
    COUNT(*) AS employee_count
FROM HR_Analytics.employees
GROUP BY department
ORDER BY employee_count DESC;

-- Query 3: Average Salary
SELECT 
    ROUND(AVG(salary), 2) AS average_salary
FROM HR_Analytics.employees;

-- Query 4: Total Salary by Department
SELECT 
    department,
    ROUND(SUM(salary), 2) AS total_salary
FROM HR_Analytics.employees
GROUP BY department
ORDER BY total_salary DESC;

-- Query 5: Average Salary by Department
SELECT 
    department,
    ROUND(AVG(salary), 2) AS average_salary
FROM HR_Analytics.employees
GROUP BY department
ORDER BY average_salary DESC;

-- Query 6: Top 10 Highest Paid Employees
SELECT 
    first_name,
    last_name,
    department,
    salary
FROM HR_Analytics.employees
ORDER BY salary DESC
LIMIT 10;

-- Query 7: Lowest 10 Paid Employees
SELECT
    first_name,
    last_name,
    department,
    salary
FROM HR_Analytics.employees
ORDER BY salary ASC
LIMIT 10;

-- Query 8: Employee Count by Employment Status
SELECT
    employment_status,
    COUNT(*) AS employee_count
FROM HR_Analytics.employees
GROUP BY employment_status
ORDER BY employee_count DESC;

-- Query 9: Average Rating by Department
SELECT
    department,
    ROUND(AVG(performance_rating), 2) AS average_rating
FROM HR_Analytics.employees
GROUP BY department
ORDER BY average_rating DESC;

-- Query 10: Total Bonus by Department
SELECT
    department,
    ROUND(SUM(bonus), 2) AS total_bonus
FROM HR_Analytics.employees
GROUP BY department
ORDER BY total_bonus DESC;

-- Query 11: Promotion Rate by Department
SELECT
    department,
    ROUND(
        SUM(CASE 
            WHEN promotion_status = 'Promoted' THEN 1 
            ELSE 0 
        END) * 100.0 / COUNT(*),
        2
    ) AS promotion_rate
FROM HR_Analytics.employees
GROUP BY department
ORDER BY promotion_rate DESC;

-- Query 12: Employee Count by Job Title
SELECT
    job_role,
    COUNT(*) AS employee_count
FROM HR_Analytics.employees
GROUP BY job_role
ORDER BY employee_count DESC;

-- Query 13: Average Salary by Job Role
SELECT
    job_role,
    ROUND(AVG(salary), 2) AS average_salary
FROM HR_Analytics.employees
GROUP BY job_role
ORDER BY average_salary DESC;

-- Query 14: Employee Count by Gender
SELECT
    gender,
    COUNT(*) AS employee_count
FROM HR_Analytics.employees
GROUP BY gender
ORDER BY employee_count DESC;

-- Query 15: Average Salary by Employment Status
SELECT
    employment_status,
    ROUND(AVG(salary), 2) AS average_salary
FROM HR_Analytics.employees
GROUP BY employment_status
ORDER BY average_salary DESC;