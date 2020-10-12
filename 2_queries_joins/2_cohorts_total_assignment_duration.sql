Select sum(duration) 
from assignment_submissions,students,cohorts 
where assignment_submissions.student_id = students.id 
and cohorts.id=students.cohort_id 
and cohorts.name = 'FEB12';