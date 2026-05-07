-- activate a database
USE advanced_sql;

-- 6 clauses
SELECT  									-- 7. Return columns to display [Mandatory Clause]
    grade_level,				
    AVG(gpa) AS avg_gpa						-- 4. Calculate aggregation
FROM
    students								-- 1. Get this table
WHERE
    school_lunch = 'Yes'					-- 2. Filter it
GROUP BY grade_level						-- 3. Group it by grade
HAVING avg_gpa < 3.3						-- 5. Filter the grouped table based on aggregation (at step 4)
ORDER BY grade_level;						-- 6. Sort the filtered table

SELECT DISTINCT
    grade_level
FROM
    students;
    
SELECT 
    COUNT(DISTINCT grade_level) 			-- aggregate fx like count, sum, avg, min, max
FROM
    students;
    
SELECT 
    MAX(gpa) - MIN(gpa) AS gpa_range		-- Math operators are +, -, /, *, % 
FROM
    students;

SELECT 
    *
FROM
    students
WHERE
    grade_level IN (10 , 11, 12); 			-- IN is a comparison keywords, found in WHERE clause.
    
SELECT 
    *
FROM
    students
WHERE
    email LIKE '%.com'; 					-- LIKE is a comparison keyword, found in WHERE clause.

SELECT 
    *
FROM
    students
WHERE
    grade_level < 12						-- Comparison operators include =, !=, <>, <, <=, >, >=
        AND school_lunch = 'Yes';
        
SELECT  
    *
FROM
    students
ORDER BY gpa DESC; 							-- DESC or ASC(default)

SELECT 
    *
FROM
    students
LIMIT 10; 									-- TOP in SQL Server and FETCH FIRST in Oracle

SELECT 
    student_name,
    grade_level,
    CASE									-- CASE WHEN THEN ELSE END
        WHEN grade_level = 9 THEN 'Freshman'
        WHEN grade_level = 10 THEN 'Sophomore'
        WHEN grade_level = 11 THEN 'Junior'
        ELSE 'Senior'
    END AS student_class
FROM
    students;
    
    
    