--1. get avg of grades for each year:
SELECT avg(grade) from grades GROUP by exam_year;

-- 2. get avg from each student, in year 2024:
SELECT student_name,avg(grade) from grades where exam_year=2024 group by student_name;

--3. get max,min grade from each subject in every year:
select subject_name,exam_year, max(grade),min(grade) from grades GROUP by exam_year,subject_name;

--4. get for each year, count exams taken for each subject:
select subject_name,exam_year,count(grade) from grades group by exam_year, subject_name;

--5. get subject_name, where avg grades in this subject is more than 85:
SELECT subject_name,avg(grade) from grades GROUP by subject_name having avg(grade)>85;

--6. get count grades for each grade above 90

SELECT grade,count(grade) FROM grades where grade>90 group by grade;