select people.id, people.name, count(toys.name) as toy_count from
people
inner join
toys
ON people.id = toys.people_id
group by people.id, people.name;