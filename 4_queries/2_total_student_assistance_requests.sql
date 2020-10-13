Select count(*) 
from assistance_requests,students 
where students.id = assistance_requests.student_id 
and students.name ='Elliot Dickinson' ;