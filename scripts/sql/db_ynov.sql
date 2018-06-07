--Table students
CREATE TABLE students (
student_id serial PRIMARY KEY,
firstname VARCHAR(50),
lastname VARCHAR(50)
);

--Table classes
CREATE TABLE classes(
classe_id serial PRIMARY KEY,
classe_name VARCHAR(255),
professor_name VARCHAR(255)
);

--Table jointure notes
CREATE TABLE notes(
student_id integer REFERENCES students(student_id),
classe_id integer REFERENCES classes(classe_id),
note integer,
coeficient integer
);

--On desable les trigger de notre table note jointure pour pouvoir la peupler
ALTER TABLE "notes" DISABLE TRIGGER ALL;

--On peuple nos tables
INSERT INTO students(firstname,lastname) VALUES('Jeremie','Esparel');
INSERT INTO students(firstname,lastname) VALUES('Theophile','Cibert');

INSERT INTO classes(classe_name,professor_name) VALUES('NodeJs','Gabin');
INSERT INTO classes(classe_name,professor_name) VALUES('Linux','Girod');

INSERT INTO notes(student_id,classe_id,note,coeficient) VALUES(1,1,16,2);
INSERT INTO notes(student_id,classe_id,note,coeficient) VALUES(1,2,10,3);
INSERT INTO notes(student_id,classe_id,note,coeficient) VALUES(2,1,12,2);
INSERT INTO notes(student_id,classe_id,note,coeficient) VALUES(2,2,14,3);

--On Enable nos trigger sur notes
ALTER TABLE "notes" ENABLE TRIGGER ALL;

--On crée notre view. Pour cela, on selection nom, prenom dans notre table students, notes coef dans notre table notes
--On join les student_id present dans students et notes et on group by par student_id
CREATE VIEW moyenneEleves AS
	SELECT s.firstname, s.lastname, SUM(n.note*n.coeficient)/SUM(n.coeficient) AS moyenneGen
	FROM students s
	JOIN notes n on s.student_id = n.student_id
	GROUP BY s.student_id;

--On affiche notre view
SELECT * FROM moyenneEleves;
