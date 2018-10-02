-- Select to track the current quantity of each item
SELECT quantity
FROM movements
    JOIN movement_types ON movements.movement_type_id = movement_types.id
    JOIN directions ON movement_types.direction_id = directions.id
    JOIN articles ON movements.article_id = articles.id
    JOIN units ON articles.unit_id = units.id
GROUP BY articles.name_article;

-- consultation of the movements of stock and the current quantity
SELECT SUM(quantity * sell_price)
FROM movements
    JOIN movement_types ON movements.movement_type_id = movement_types.id
    JOIN directions ON movement_types.direction_id = directions.id
    JOIN articles ON movements.article_id = articles.id;

-- display stock values ​​by category and total stock
SELECT SUM(quantity * sell_price)
FROM movements
    JOIN movement_types ON movements.movement_type_id = movement_types.id
    JOIN directions ON movement_types.direction_id = directions.id
    JOIN articles ON movements.article_id = articles.id
    JOIN categories ON articles.category_id = categories.id
GROUP BY categories.name_category;