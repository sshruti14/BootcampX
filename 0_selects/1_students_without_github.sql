select id,name,email,cohort_id 
from students 
where github is null 
order by cohort_id