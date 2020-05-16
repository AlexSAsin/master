--№1--
select n_group, count(n_group)
from students
group by n_group

--№2--
select n_group, max(score)
from students
group by n_group

--№3--
select surname, count(surname)
from students
group by surname

--№5--
select substr(st.n_group::varchar, 1, 1) as number, avg(st.score) as score
from students st
group by substr(st.n_group::varchar, 1, 1)

--№6--
SELECT st.n_group, MAX(st.score)
FROM students st
GROUP BY st.n_group
LIMIT 1

--№7--
SELECT st.n_group, AVG(st.score) AS avg
FROM students st
GROUP BY st.n_group
HAVING AVG(st.score) <= 3.5
ORDER BY avg DESC

--№8--
SELECT st.n_group, AVG(st.score) AS avg, MAX(st.score) AS max, MIN(st.score) AS min, COUNT(st.score) AS count
FROM students st
GROUP BY st.n_group

--№9--
SELECT *
FROM students st
WHERE st.score= (SELECT MAX(st.score)
				 FROM students st)

--№10--
Select st.*
From students st
INNER Join(
    Select st.n_group, max(st.score)
    From students st
    Group BY st.n_group) as t
	ON st.n_group=t.n_group AND st.score=t.max(st.score)