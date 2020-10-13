SELECT avg(completed_at - started_at) AS average_assistance_request_duration,cohorts.name
FROM assistance_requests,students,cohorts 
where assistance_requests.student_id = students.id 
and students.cohort_id =cohorts.id 
group by cohorts.name 
order by average_assistance_request_duration desc limit 1;