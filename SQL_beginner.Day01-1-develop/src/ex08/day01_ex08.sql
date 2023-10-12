 SELECT order_date, concat(person.name, ' (', 'age:', person.age, ')') as person_information
 FROM person_order
 NATURAL JOIN (SELECT person.id as person_id, name, age FROM person) person
 ORDER BY order_date, person_information