-- retrieve all customer data--
SELECT * 
FROM customers

-- retrieve each customers name, country, score--
SELECT first_name, country, score
FROM customers

--retrieve customers with a score not equal to 0 --
SELECT *
FROM customers
WHERE score != 0

--retrieve customers from Germany 
SELECT *
FROM customers
WHERE country = 'Germany'

--retrieve customers name, country from Germany
SELECT first_name, country
FROM customers
WHERE country = 'Germany'

-- retrieve all customers and sort the results by the highest score first
SELECT * 
FROM customers
ORDER BY score DESC

-- retrieve all customers and sort the result by the lowest score first
 -- order by
 SELECT * 
 FROM customers
 ORDER BY score ASC

 -- retireieve all customers and sort the results 
 -- by the country and then by the highest score
 -- nested order by
 SELECT * 
 FROM customers
 ORDER BY country ASC, score DESC

 SELECT * 
 FROM customers
 ORDER BY score DESC, country ASC 
 --no duplicates in score so makes no sense using country asc

 --Find the total score for each country
 SELECT
 country,
 SUM(score)   --with this query there will be no column name for added values as we have change the score to total score temporarily which only exist in query not in DB
               
 FROM customers
 GROUP BY country 

 SELECT 
 country,
 SUM(score) AS total_score --to give Column Name we can add AS (Alias)
                           -- only exits in query, u r not renaming anything in db, 
						   --u cannot use in any other qyery only can be used in this query
 FROM customers
 GROUP BY country