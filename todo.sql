createdb todolist
psql todolist
todolist=# CREATE TABLE "todos" (
todolist(# "id" serial NOT NULL PRIMARY KEY,
todolist(# "title" varchar(255) NOT NULL,
todolist(# "details" varchar(500),
todolist(# "priority" int NOT NULL DEFAULT(1),
todolist(# "created_at" timestamp NOT NULL,
todolist(# "completed_at" timestamp
todolist(# );
--insert 5 rows, one of which needs to be completed
INSERT INTO todos VALUES (1, 'vacuum', 'vacuum rugs in livingroom and bedroom', 1, '2017-06-27 03:15:06');
INSERT INTO todos (id, title, priority, created_at) VALUES (2, 'cook_dinner', 1, '2017-06-27 03:30:06');
INSERT INTO todos (id, title, priority, created_at) VALUES (3, 'laundry', 2, '2017-06-27 03:30:06');
INSERT INTO todos (id, title, priority, created_at) VALUES (4, 'get_groceries', 4, '2017-06-27 03:30:06');
INSERT INTO todos VALUES (5, 'assessment', 'complete_TIY_assessment', 5, '2017-06-27 03:30:06', '2017-06-27 11:59:59');

SELECT * from todos where completed_at IS NULL;

SELECT * from todos where priority > 1;

UPDATE todos SET completed_at = '2017-06-27 03:45:00' where id = 4;

DELETE FROM todos where completed_at IS NOT NULL;
