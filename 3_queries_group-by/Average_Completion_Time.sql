select students.name, sum(duration)/count(assignment_submissions.*) as average_assignment_duration
from students join assignment_submissions on students.id = student_id
where students.end_date is null
group by students.name
order by average_assignment_duration desc;