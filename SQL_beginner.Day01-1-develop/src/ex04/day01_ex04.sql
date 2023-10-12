SELECT order_date as action_date, person_id
FROM person_order
WHERE order_date IN('2022-01-07')

EXCEPT all

SELECT visit_date, person_id
FROM person_visits
WHERE visit_date IN('2022-01-07')
ORDER BY action_date ASC, person_id DESC
