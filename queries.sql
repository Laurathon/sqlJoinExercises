SELECT * FROM owners FULL JOIN vehicles on owners.id =vehicles.owner_id;

SELECT first_name, last_name,  COUNT(owner_id) FROM owners JOIN vehicles on owners.id=vehicles.owner_id 
  GROUP BY first_name, last_name 
ORDER BY first_name;

SELECT first_name, last_name,  COUNT(owner_id), ROUND(AVG(price)) as average_price FROM owners JOIN vehicles on owners.id=vehicles.owner_id 
  GROUP BY first_name, last_name 
  HAVING ROUND(AVG(price)) > 10000 AND COUNT(owner_id) >1
ORDER BY first_name DESC;