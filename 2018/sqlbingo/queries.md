## Queries:

```
SELECT instructor_first FROM courses WHERE units= 5;

```
* Ben, Lowell

```
SELECT  first FROM students WHERE last = 'Cruz' AND cohort = 2019;
```

* Abdullah, Chloe

```
SELECT instructor_first FROM courses WHERE category = 'Background';


```

* Marilyn, Spencer, Tom

```
# What if we did:

SELECT instructor_first FROM courses WHERE category LIKE 'Background%';
SELECT instructor_first FROM courses WHERE category LIKE '%Background';

```

* Marilyn, Spencer, Tom
* Koci
* Andres

-------------------------------------

Okay, so what if we want to find all the students who are enrolled in 5 unit classes?

```
SELECT first_name FROM students
	LEFT JOIN registration ON students.sid = registration.sid
	LEFT JOIN courses ON registration.course_id = courses.course_id
	WHERE courses.units = 5 ORDER BY students.sid;

```

"Abdullah"
"Angela"
"Caron"
"Caron"
"Cat"
