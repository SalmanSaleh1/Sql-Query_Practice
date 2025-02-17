# Sql Query Practice
## About the Repository

This repository was created by **Salman** to help make learning SQL easier for the team. It provides a hands-on approach to practicing SQL queries using a MySQL database running in Docker. The goal is to give the team a simple, reproducible environment to experiment with SQL, run queries, and collaborate on improving database management skills. 

By using Docker, this project ensures that the setup is quick and consistent, allowing everyone to focus on learning and improving their SQL writing skills together.



### How to Run the Database

1. **Clone the Repository**  
   First, clone this repository to your local machine:
   
   ```bash
   git clone https://github.com/yourusername/Sql-Query_Practice.git
2. **Navigate to the Project Directory**
    Change to the project directory:
   ```bash
   cd Sql-Query_Practice

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
