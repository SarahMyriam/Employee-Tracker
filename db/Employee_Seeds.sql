-- Inserts a set of records into the "department" table
INSERT INTO department (name)
VALUE ("Management"), ("Engineering"), ("Finance"),("HR");

-- Inserts a set of records into the "role" table
INSERT INTO role (title, salary, department_id)
VALUE ("General Manager", 250000, 1),
        ("Software Dev. Director", 180000, 1),
        ("Senior Software Engineer", 150000, 2),
        ("Software Engineer", 120000, 2),
        ("Software Engineer", 120000, 2),
        ("Finance", 125000, 4),
        ("Human Ressources", 250000, 3);
        

-- Inserts a set of records into the "employee" table
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUE   ("Alberto", "Bossi", 1, NULL);
        INSERT INTO employee (first_name, last_name, role_id, manager_id)
        --EVERY EMPLOYEE WILL HAVE ALBERTO AS A MANAGER 
        ("Nicklaus", "Mickaelson", 2, 1),
        ("Dorine", "Angui", 3,NULL ),
        ("Kevin", "Tompson", 4, 1),
        ("Damon", "Salvator", 5, NULL),
        ("Myriam", "Baillie", 6, NULL),
        ("Travis", "Parker", 7,1);
        


SELECT * FROM department;
SELECT * FROM `role`;
SELECT * FROM employee;
