CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    manager_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (manager_id) REFERENCES employees(id)
);

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE
);

CREATE TABLE employee_projects (
    employee_id INT,
    project_id INT,
    role VARCHAR(50),
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES employees(id),
    FOREIGN KEY (project_id) REFERENCES projects(id)
);

INSERT INTO departments (name) VALUES
('Engineering'),
('HR'),
('Marketing'),
('Finance');

INSERT INTO employees (first_name, last_name, department_id, salary, hire_date, manager_id) VALUES
('Alice', 'Johnson', 1, 75000.00, '2020-06-15', NULL),
('Bob', 'Smith', 1, 68000.00, '2021-04-10', 1),
('Charlie', 'Brown', 2, 60000.00, '2019-09-23', NULL),
('David', 'Williams', 3, 72000.00, '2022-01-30', 3),
('Emma', 'Taylor', 4, 80000.00, '2018-07-19', NULL),
('Frank', 'Miller', 1, 71000.00, '2021-11-03', 1),
('Grace', 'Davis', 3, 69000.00, '2020-05-21', 4);

INSERT INTO projects (name, start_date, end_date) VALUES
('Website Redesign', '2023-01-15', '2023-06-30'),
('HR System Upgrade', '2023-02-01', '2023-08-15'),
('Marketing Campaign', '2023-03-10', '2023-09-30');

INSERT INTO employee_projects (employee_id, project_id, role) VALUES
(1, 1, 'Lead Developer'),
(2, 1, 'Developer'),
(3, 2, 'HR Specialist'),
(4, 3, 'Marketing Lead'),
(5, 3, 'Finance Advisor'),
(6, 1, 'Support Developer'),
(7, 3, 'Marketing Assistant');
