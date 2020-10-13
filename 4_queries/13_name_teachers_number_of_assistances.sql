Select distinct teachers.name,cohorts.name,count(assistance_requests.*)   
from teachers,assistance_requests,cohorts,students 
where assistance_requests.teacher_id = teachers.id 
and assistance_request s.student_id = students.id 
and students.cohort_id = cohorts.id 
and cohorts.name='JUL02' 
group by teachers.name,cohorts.name 
order by teachers.name ;