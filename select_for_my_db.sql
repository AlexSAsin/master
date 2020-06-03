--1. Для заданного города выведите ближайшие открытия магазинов
select s.open_date, s.town
from shop as s
where town = 'Cartwrig' and open_date > current_date
--2. 
select t.start, t.finish, s.name
from timetable as t, shop as s, staff_shop as ss
where cast (s.name AS varchar) like 'QQQ' and s.id = ss.shop_id and t.start is not null
--3—
Select c.id, c.name, c.surname, sum(b.summ)
From costumer as c
INNER JOIN buy as b ON b.id=c.id
Where age(b.create_data, '2000-01-01') > age(now(), '2000-01-16')
Group by c.id
Having sum(b.summ) > 10000
--4
with p as
(select b.id, sum(b.summ) as buy,count(*)::real as c
from buy as b
where(now()::date-b.create_data::date)*24<=240
Group By b.id ),
p1 as
(select count(*)::real as c1 from buy as b)
select p.buy , costumer.name
from p, costumer, p1
where costumer.id = p.id
order by p.buy desc
limit (select count(*)/10 from costumer)
--5

with temp as(
			SELECT c.id, c.name, c.surname, MAX(b.summ) as buy
			FROM costumer as c
			INNER JOIN buy as b ON c.id=b.id
			WHERE (now()::date-b.create_date::date)*24<=240
			GROUP BY c.id, c.name, c.surname, b.summ
			having b.summ = MAX(b.summ)
			ORDER BY b.summ desc
			)
select avg(temp.buy) as average
from temp


--6
SELECT r.id, first, second, third, fourth
FROM receipt r

LEFT JOIN (SELECT r.count, r.product_id
From buy b
INNER JOIN receipt r ON r.buy_id = b.id
WHERE b.create_date > now()-interval '7 days') as first ON r.id=first.product_id

LEFT JOIN (SELECT r.count, r.product_id
From buy b
INNER JOIN receipt r ON r.buy_id = b.id
WHERE b.create_date > now()-interval '14 days' and b.create_date < now()-interval '7 days') as second ON r.id=second.product_id

LEFT JOIN (SELECT r.count, r.product_id
From buy b
INNER JOIN receipt r ON r.buy_id = b.id
WHERE b.create_date > now()-interval '21 days' and b.create_date < now()-interval '14 days') as third ON r.id=third.product_id

LEFT JOIN (SELECT r.count, r.product_id
From buy b
INNER JOIN receipt r ON r.buy_id = b.id
WHERE b.create_date > now()-interval '28 days' and b.create_date < now()-interval '21 days') as fourth ON r.id=fourth.product_id
ORDER BY r.id

--7



--8
select s.name, s.surname, s.timetable, tb.start, tb.finish
from staff s
inner join timetable tb on s.id = tb.id
where s.id = 2


--9

SELECT second_last.second_last, first_last.first_last, now.now, first_next.first_next, second_next.second_next
FROM product as p

LEFT JOIN (SELECT p.id as id, ABS((pr.price_before-pr.price_after)*100)/pr.price_before::real as second_last
FROM product as p
INNER JOIN price pr ON pr.product_id=p.id
WHERE pr.changes_date > now() - interval '14 days' and pr.changes_date < now()-interval '7 days') as second_last ON second_last.id = p.id

LEFT JOIN (SELECT p.id as id, ABS((pr.price_before-pr.price_after)*100)/pr.price_before::real as first_last
FROM product as p
INNER JOIN price pr ON pr.product_id=p.id
WHERE pr.changes_date > now() - interval '7 days') as first_last ON first_last.id = p.id
LEFT JOIN (SELECT p.id as id, pr.price_after as now
FROM product as p
INNER JOIN price pr ON pr.product_id=p.id) as now ON now.id=p.id

LEFT JOIN (SELECT p.id as id, ABS((pr.price_after-pr.price_after)*100)/pr.price_after::real as first_next
FROM product as p
INNER JOIN price pr ON pr.product_id=p.id
WHERE pr.changes_date < now() + interval '7 days') as first_next ON first_next.id = p.id

LEFT JOIN (SELECT p.id as id, ABS((pr.price_after-pr.price_after)*100)/pr.price_after::real as second_next
FROM product as p
INNER JOIN price pr ON pr.product_id=p.id
WHERE pr.changes_date < now() + interval '14 days' and pr.changes_date > now()+interval '7 days') as second_next ON second_next.id = p.id

--12
select s.name, s.surname, count(*) as count
from staff s
inner join suply_product as sp on sp.staff_id = s.id
inner join supplier as su on su.id = sp.supplier_id
where sp.shop_id = 5 and su.firm = 'Erdman LLC'
group by s.name, s.surname
order by count desc
limit 1

--15
alter table staff add column salary integer
update staff set salary = 30000
where staff.id is not null
alter table staff alter column salary set not null