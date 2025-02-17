# Sql Query Practice
## About the Repository

This repository was created by **Salman** to help make learning SQL easier for the team. It provides a hands-on approach to practicing SQL queries using a MySQL database running in Docker. The goal is to give the team a simple, reproducible environment to experiment with SQL, run queries, and collaborate on improving database management skills. 

By using Docker, this project ensures that the setup is quick and consistent, allowing everyone to focus on learning and improving their SQL writing skills together.


## How to Run the Database

1. **Clone the Repository**  
   First, clone this repository to your local machine:
   
   ```bash
   git clone https://github.com/yourusername/Sql-Query_Practice.git
2. **Navigate to the Project Directory**
    Change to the project directory:
   ```bash
   cd Sql-Query_Practice
<img src="https://www.docker.com/app/uploads/2023/08/logo-guide-logos-1.svg" width="100" height="auto" />

3. **Set Up Docker**
    Make sure Docker is installed and running on your machine. If you haven’t installed it yet, follow the installation instructions above.

4. **Configure .env File**
    Create a .env file in the root of the repository with the following content:
   ```env
   DB_PORT=3306
   INIT_FILE=./resources
   HOSTNAME=test
   MYSQL_DATABASE=root
   MYSQL_ROOT_PASSWORD=changeme
   MYSQL_USER=dbuser
   MYSQL_PASSWORD=changeme
   SCHEMA=schema_name 

5. **Run the Docker Compose Command**
    Build and start the MySQL container using Docker Compose:
    ```bash
    docker-compose up -d

6. **Connect to the Database Using MySQL Workbench**  
![MySQL Workbench Logo](https://www.mysql.com/common/logos/logo-mysql-170x115.png)

   **MySQL Workbench** is a popular, free tool used to interact with MySQL databases. It provides a visual interface for database management and allows you to run queries, design schemas, and perform administrative tasks.

   ### How to Download MySQL Workbench:
   1. Go to the official MySQL website
   2. Download the version for your operating system (Windows, macOS, or Linux).
   3. Follow the installation instructions for your platform.

   ### Steps to Connect to the Database:
   After installing MySQL Workbench, follow these steps to connect to the database:
   1. Open MySQL Workbench.
   2. Click on the `+` sign next to "MySQL Connections" to create a new connection.
   3. In the connection setup:
      - **Hostname**: `localhost`
      - **Port**: `3306`
      - **Username**: `dbuser` (as per the .env file)
      - **Password**: `changeme` (as per the .env file)
   4. Click on "Test Connection" to ensure the connection is successful.
   5. Once the connection is successful, you can start writing and executing queries on your MySQL database.

   You can now interact with your database from within MySQL Workbench, run SQL queries, and manage your data directly.



## SQL Query Practice - Tasks

These tasks are designed to help you practice writing and executing various SQL queries on the project database. Complete each task to improve your skills and understanding of SQL.

### 1. Basic SELECT Queries
**Task**:  
Select all columns from the `employees` table.

---

### 2. Aggregation Functions
**Task**:  
Count how many employees there are in each department.

---

### 3. JOIN Queries
**Task**:  
Get the `first_name`, `last_name`, and `department_name` for each employee by joining the `employees` and `departments` tables.

---

### 4. Subqueries
**Task**:  
Select the `first_name`, `last_name`, and department name for all employees working in departments that have more than 10 employees.

---

### 5. UPDATE Queries
**Task**:  
Update the salary of a specific employee (e.g., employee `John Doe`) to a new amount.

---

### 6. DELETE Queries
**Task**:  
Delete an employee based on their `employee_id`.

---

### 7. INSERT Queries
**Task**:  
Insert a new employee into the `employees` table with sample data.

---

### 8. Advanced Queries
**Task**:  
Categorize employees as `High`, `Medium`, or `Low` salary earners based on their salary using a `CASE WHEN` clause.

---

### 9. Constraints and Transactions
**Task**:  
Add a UNIQUE constraint to the `email` column in the `employees` table.

---

### 10. Indexes
**Task**:  
Create an index on the `last_name` column of the `employees` table to improve query performance for queries filtering by last name.
