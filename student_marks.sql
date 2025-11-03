-- ===========================
-- Student Result Management System
-- ===========================

-- Step 1: Create Database
CREATE DATABASE student_result_db;

-- Step 2: Use the Database
USE student_result_db;

-- Step 3: Create Student Table
CREATE TABLE Student (
  student_id INT PRIMARY KEY,
  name VARCHAR(50),
  class VARCHAR(10),
  roll_no INT
);

-- Step 4: Create Subject Table
CREATE TABLE Subject (
  subject_id INT PRIMARY KEY,
  subject_name VARCHAR(50),
  max_marks INT
);

-- Step 5: Create Result Table
CREATE TABLE Result (
  result_id INT PRIMARY KEY,
  student_id INT,
  subject_id INT,
  marks_obtained INT,
  FOREIGN KEY (student_id) REFERENCES Student(student_id),
  FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);

-- Step 6: Insert Data into Student Table
INSERT INTO Student (student_id, name, class, roll_no) VALUES
(1, 'Krish Kumar', 'BCA-2', 101),
(2, 'Aman Sharma', 'BCA-2', 102),
(3, 'Riya Mehta', 'BCA-2', 103);

-- Step 7: Insert Data into Subject Table
INSERT INTO Subject (subject_id, subject_name, max_marks) VALUES
(1, 'DBMS', 100),
(2, 'C++', 100),
(3, 'SQL', 100),
(4, 'Python', 100);

-- Step 8: Insert Data into Result Table
INSERT INTO Result (result_id, student_id, subject_id, marks_obtained) VALUES
-- Krish Kumar
(1, 1, 1, 88),
(2, 1, 2, 75),
(3, 1, 3, 80),
(4, 1, 4, 85),
-- Aman Sharma
(5, 2, 1, 70),
(6, 2, 2, 65),
(7, 2, 3, 72),
(8, 2, 4, 68),
-- Riya Mehta
(9, 3, 1, 90),
(10, 3, 2, 85),
(11, 3, 3, 88),
(12, 3, 4, 92);

-- ===========================
-- Step 9: Display Student-Wise Marks (Using JOIN)
-- ===========================
SELECT 
  s.name AS Student_Name,
  s.class AS Class,
  sub.subject_name AS Subject,
  r.marks_obtained AS Marks_Obtained
FROM 
  Student s
JOIN 
  Result r ON s.student_id = r.student_id
JOIN 
  Subject sub ON r.subject_id = sub.subject_id
ORDER BY 
  s.name, sub.subject_name;

-- ===========================
-- Step 10: Calculate Total Marks and Average Marks for Each Student
-- ===========================
SELECT 
  s.name AS Student_Name,
  SUM(r.marks_obtained) AS Total_Marks,
  ROUND(AVG(r.marks_obtained), 2) AS Average_Marks
FROM 
  Student s
JOIN 
  Result r ON s.student_id = r.student_id
GROUP BY 
  s.name
ORDER BY 
  Total_Marks DESC;

-- ===========================
-- Step 11: Display Class Result with Performance Remark
-- ===========================
SELECT 
  s.name AS Student_Name,
  SUM(r.marks_obtained) AS Total_Marks,
  ROUND(AVG(r.marks_obtained), 2) AS Average_Marks,
  CASE 
    WHEN AVG(r.marks_obtained) >= 90 THEN 'Excellent'
    WHEN AVG(r.marks_obtained) >= 80 THEN 'Very Good'
    WHEN AVG(r.marks_obtained) >= 70 THEN 'Good'
    WHEN AVG(r.marks_obtained) >= 60 THEN 'Satisfactory'
    ELSE 'Needs Improvement'
  END AS Performance
FROM 
  Student s
JOIN 
  Result r ON s.student_id = r.student_id
GROUP BY 
  s.name
ORDER BY 
  Average_Marks DESC;

-- ===========================
-- Step 12: Display Top Performer
-- ===========================
SELECT 
  s.name AS Topper,
  SUM(r.marks_obtained) AS Total_Marks
FROM 
  Student s
JOIN 
  Result r ON s.student_id = r.student_id
GROUP BY 
  s.name
ORDER BY 
  Total_Marks DESC
LIMIT 1;

-- ===========================
-- Step 13: View All Data (for verification)
-- ===========================
SELECT * FROM Student;
SELECT * FROM Subject;
SELECT * FROM Result;
