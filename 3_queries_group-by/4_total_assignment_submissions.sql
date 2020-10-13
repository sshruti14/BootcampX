Select count(assignment_id),cohorts.name 
from assignment_submissions,students,cohorts 
where assignment_submissions.student_id = students.id 
and students.cohort_id = cohorts.id group by cohorts.name
ORDER BY total_submissions DESC;