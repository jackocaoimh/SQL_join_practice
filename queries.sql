-- write your queries here

-- first query
SELECT * FROM owners o
  FULL OUTER JOIN vehicles v
    ON o.id=v.owner_id;

-- second query
SELECT first_name, last_name,
  COUNT(owner_id) FROM owners o
  JOIN vehicles v on o.id=v.owner_id
  GROUP BY (first_name, last_name)
ORDER BY first_name;

SELECT first_name, last_name, avg(price) AS average_price, COUNT(owner_id) AS count
FROM owners o join vehicles v on o.id=v.owner_id
GROUP BY (first_name,last_name)
HAVING COUNT(owner_id) > 1 and avg(price) > 10000

-- third query
SELECT
  first_name, last_name,
  ROUND(AVG(price)) as average_price,
  COUNT(owner_id)
FROM owners o
JOIN vehicles v on o.id=v.owner_id
GROUP BY
  (first_name, last_name)
HAVING
  COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;
