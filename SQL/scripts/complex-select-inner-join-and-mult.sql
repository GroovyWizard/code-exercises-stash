-- Using the following tables, return the pokemon_name, modifiedStrength and element 
--of the Pokemon whose strength, after taking these changes into account, 
--is greater than or equal to 40, ordered from strongest to weakest.

-- pokemon schema

--     id
--     pokemon_name
--     element_id
--     str

-- multipliers schema

--     id
--     element
--     multiplier


SELECT 
  pokemon.pokemon_name, 
  pokemon.str * multipliers.multiplier AS modifiedStrength,
  multipliers.element
FROM pokemon
INNER JOIN multipliers 
ON pokemon.element_id = multipliers.id
AND pokemon.str * multipliers.multiplier > 40
ORDER BY modifiedStrength DESC;
