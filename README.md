# 🎓 University Academic Database System

A comprehensive PostgreSQL database system for managing academic operations within a university. This project models real-world academic entities like Students, Professors, Courses, Enrollments, Grades, and Schedules, with strong relational integrity and support for advanced analytical queries.

---

## 📚 Project Overview

This relational database was designed to:

- Track student enrollment and performance
- Manage professor schedules and workloads
- Organize courses by department and instructor
- Enable real-time analytics with complex SQL queries

Ideal for educational institutions, research use cases, and advanced SQL demonstrations.

---

## 🏗️ Database Schema

The system includes the following core tables:

| Table         | Description                                     |
|---------------|-------------------------------------------------|
| `students`    | Stores student details and admission year       |
| `professors`  | Contains professor contact and department info  |
| `courses`     | Lists all courses with credit hours and linkage to professors |
| `enrollments` | Tracks which students are enrolled in which courses |
| `grades`      | Holds grading information per course enrollment |
| `schedules`   | Specifies when and where courses are held       |

Relational integrity is maintained with foreign key constraints across all relevant entities.

---

## 🧠 Features & Highlights

- ✅ **Realistic Test Data**: 50+ students, 30+ professors, 30+ courses
- 🎯 **Advanced Queries**: GPA-like calculations, rankings, attendance tracking
- 🧮 **Analytics-Ready**: Professor workload, course popularity, student failures
- 🧩 **Modular Design**: Clean schema separation for reuse and extension
- 🔒 **Data Integrity**: Strong foreign key constraints and normalized design

---

## 💡 Sample Complex Queries

> Showcase-ready SQL queries to demonstrate real-world functionality and analysis.

- 🏆 Top-performing students by GPA-like logic  
- 📈 Courses with the highest enrollment counts  
- 👨‍🏫 Professors teaching multiple classes in a week  
- 🚨 Students who failed more than 2 courses  
- 🗓️ Classroom schedules by day of week  
- 🧾 Professor teaching hours per week  
- 🧑‍🎓 Ranking students using window functions


---

## ⚙️ Technologies Used

- **PostgreSQL** (v14+)
- **SQL** (Standard + PostgreSQL extensions)
- Data generated using randomization scripts

---

## 📁 Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/university-db.git
   cd university-db
2. **Run the SQL Schema**
   ```bash
   psql -U youruser -d yourdb -f schema.sql
3. **Insert Sample Data**
   ```bash
   psql -U youruser -d yourdb -f sample_data.sql
4. **Test with Queries**
   ```bash
   psql -U youruser -d yourdb -f queries.sql

📊 ER Diagram

![ERD](/ERD-University-Management-DB.png)


## 🧪 Use Cases
- 📘 Academic Research: Showcase normalization, constraints, analytics

- 🧑‍🏫 Teaching Tool: Teach students about relational design and SQL joins

- ⚙️ Backend Integration: Can be integrated with a front-end app or API



