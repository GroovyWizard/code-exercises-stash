-- Given film_actor and film
--tables from the DVD Rental sample database
--find all movies both Sidney Crowe (actor_id = 105)
--and Salma Nolte (actor_id = 122)
-- cast in together and order the result set
--alphabetically

-- Double left joins getting all films two times
-- Get all films where both are staring together
SELECT
    f.title
FROM
    film f
    LEFT JOIN film_actor sidney_films ON f.film_id = sidney_films.film_id
    LEFT JOIN film_actor salma_films ON f.film_id = salma_films.film_id
WHERE
    sidney_films.actor_id = 105
    AND salma_films.actor_id = 122
ORDER BY
    title;
