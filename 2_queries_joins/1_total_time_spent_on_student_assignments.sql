Select sum(duration) 
from assignment_submissions 
JOIN students 
on student_id = students.id 
where name ='Ibrahim Schimmel';