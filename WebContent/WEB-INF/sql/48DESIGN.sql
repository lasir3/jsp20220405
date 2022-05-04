-- 1대 1

-- address와 salary 를 한 부서에서 관리할 수 없다면
CREATE TABLE Employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(255),
   address VARCHAR(255),
   salary INT
);

CREATE TABLE Employees_chong (
	id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(255),
   address VARCHAR(255)
);

CREATE TABLE Employees_insa (
	id INT PRIMARY KEY AUTO_INCREMENT,
	salary INT
);