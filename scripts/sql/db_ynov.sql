CREATE TABLE students (
student_id serial PRIMARY KEY,
firstname VARCHAR(50),
lastname VARCHAR(50)
);

CREATE TABLE classes(
classe_id serial PRIMARY KEY,
classe_name VARCHAR(255),
professor_name VARCHAR(255)
);

CREATE TABLE notes(
student_id integer REFERENCES students(student_id),
classe_id integer REFERENCES classes(classe_id),
note integer,
coeficient integer
);

ALTER TABLE "notes" DISABLE TRIGGER ALL;

INSERT INTO students(firstname,lastname) VALUES('Jeremie','Esparel');
INSERT INTO students(firstname,lastname) VALUES('Theophile','Cibert');

INSERT INTO classes(classe_name,professor_name) VALUES('NodeJs','Gabin');
INSERT INTO classes(classe_name,professor_name) VALUES('Linux','Girod');

INSERT INTO notes(student_id,classe_id,note,coeficient) VALUES(1,1,16,2);
INSERT INTO notes(student_id,classe_id,note,coeficient) VALUES(1,2,10,3);
INSERT INTO notes(student_id,classe_id,note,coeficient) VALUES(2,1,12,2);
INSERT INTO notes(student_id,classe_id,note,coeficient) VALUES(2,2,14,3);


ALTER TABLE "notes" ENABLE TRIGGER ALL;

CREATE VIEW moyenneEleves AS
	SELECT s.firstname, s.lastname, SUM(n.note*n.coeficient)/SUM(n.coeficient) AS moyenneGen
	FROM students s
	JOIN notes n on s.student_id = n.student_id
	GROUP BY s.student_id;

SELECT * FROM moyenneEleves;
