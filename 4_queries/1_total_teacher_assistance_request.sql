Select count(*) 
from assistance_requests,teachers 
where teachers.id = assistance_requests.teacher_id 
and teachers.name ='Waylon Boehm' 
and teachers.is_active='t';