# 🎓 Student Result Management System

A simple **SQL-based project** to manage and analyze student academic results.  
This system stores student details, subjects, and marks — then generates reports like total marks, average marks, performance grades, and top performers.

---

## 🗂️ Project Structure

| File | Description |
|------|--------------|
| **student_result_db.sql** | Complete SQL script to create database, tables, and queries. |
| **README.md** | Documentation for understanding and running the project. |

---

## 🧱 Database Schema

### Database: `student_result_db`

**Tables:**
1. **Student** – Stores student info.  
2. **Subject** – Stores subject details.  
3. **Result** – Stores marks obtained and connects students with subjects.

---

## 💾 How to Run

1. Open **MySQL Workbench** or any SQL IDE.  
2. Copy contents of `student_result_db.sql`.  
3. Execute script step-by-step.  
4. Run queries to view:
   - Student-wise marks  
   - Total & average marks  
   - Class performance  
   - Topper details  

---

## 📊 Features

- Create and manage students, subjects, and marks.  
- Calculate total and average marks per student.  
- Classify performance (Excellent, Very Good, Good, etc.).  
- Identify top performer.  
- Uses **JOIN**, **GROUP BY**, **CASE**, and **aggregate functions**.

---

## 🧮 Example Output

| Student | Total Marks | Average | Performance |
|----------|--------------|----------|--------------|
| Riya Mehta | 355 | 88.75 | Very Good |
| Krish Kumar | 328 | 82.00 | Very Good |
| Aman Sharma | 275 | 68.75 | Good |

---

## 🧠 SQL Concepts Used

- Database creation  
- Table creation with keys  
- Data insertion  
- INNER JOIN  
- Aggregate functions (SUM, AVG)  
- GROUP BY / ORDER BY  
- CASE statements  
- LIMIT  

---

## 👨‍💻 Author

**Ayush Gupta**  
Frontend Developer | SQL Enthusiast  
