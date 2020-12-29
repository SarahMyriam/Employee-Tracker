INSERT INTO department(name) VALUES ("Management");

INSERT INTO `role` (title, salary, department_id) VALUES ("Manager",4000.0,1 );

INSERT INTO department(name) VALUES ("Engineering");
INSERT INTO `role` (title, salary, department_id) VALUES ("engineer",3000.0,2 );
INSERT INTO `role` (title, salary, department_id) VALUES ("Intern",2000.0,2 );


INSERT INTO employee (first_name, last_name,role_id, manager_id) VALUES ("Alberto","Bossi",1,1);
