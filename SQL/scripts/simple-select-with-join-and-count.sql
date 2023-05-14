-- people table schema
--     id
--     name

-- toys table schema
--     id
--     name
--     people_id

-- You should return all people fields as well as the toy count as "toy_count".


SELECT 
people.id, people.name, COUNT(toys.people_id) as toy_count 
FROM people
JOIN toys ON
people.id = toys.people_id
GROUP BY people.id;

