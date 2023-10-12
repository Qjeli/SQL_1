SELECT person.name as person_name, menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name FROM person_order
    INNER JOIN person on person_order.person_id = person.id
    INNER JOIN menu on menu.id = person_order.menu_id
    INNER JOIN pizzeria on pizzeria.id=menu.pizzeria_id
    ORDER BY person_name, pizza_name, pizzeria.name;