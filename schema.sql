create table Departments (
    dept_no varchar(30) not null primary key,
    dept_name varchar(30) not null
);

create table Titles (
    title_id varchar(30) not null primary key,
    title varchar(30) not null
);

create table Employees (
    emp_no int not null primary key,
    emp_title_id varchar(30) not null,
	foreign key (emp_title_id) references Titles(title_id),
    birth_date date not null,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    sex varchar(5) not null,
    hire_date date not null
);


create table Dept_emp (
    emp_no int not null, 
	foreign key (emp_no) references Employees(emp_no),
    dept_no varchar(30) not null,
	foreign key(dept_no) references Departments(dept_no) 
);

create table Dept_manager (
    dept_no varchar(30) not null,
    emp_no int not null,
	foreign key(emp_no) references Employees(emp_no)
);


create table Salaries (
    emp_no int not null, 
	foreign key(emp_no) references Employees(emp_no),
    salary int not null
);
