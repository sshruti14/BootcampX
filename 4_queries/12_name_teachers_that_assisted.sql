Select distinct teachers.name,cohorts.name 
from teachers,assistance_requests,cohorts,students 
where assistance_requests.teacher_id = teachers.id 
and assistance_requests.student_id = students.id 
and students.cohort_id = cohorts.id 
and cohorts.name='JUL02' 
order by teachers.name ;