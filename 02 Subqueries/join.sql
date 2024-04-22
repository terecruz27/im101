select a.employee_id, a.first_name, a.last_name, b.job_title
from employees a
left join jobs b on a.job_id = b.job_id