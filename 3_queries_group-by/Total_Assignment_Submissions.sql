select cohorts.name as cohort,count(assignment_submissions.*) as total_submissions
from cohorts join students on cohorts.id = cohort_id
join assignment_submissions on  students.id=student_id 
group by cohorts.name
order by total_submissions desc;