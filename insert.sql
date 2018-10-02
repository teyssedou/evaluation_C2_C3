INSERT INTO units
    (id, name_unit)
VALUES
    (1, 'KG'),
    (2, 'Litre'),
    (3, 'Unité'),
    (4, 'Carton'),
    (5, 'Bouteille');

INSERT INTO categories
    (id, name_category)
VALUES
    (1, 'Alimentaire'),
    (2, 'Produits ménagers'),
    (3, 'Objets'),
    (4, 'Boissons');

INSERT INTO articles
    (id, name_article, sell_price, category_id, unit_id)
VALUES
    (1, 'Pain', 0.7, 1, 3),
    (2, 'Serpillère', 6.00, 2, 3),
    (3, 'Coca-Cola', 1.08, 4, 5),
    (4, 'Sac', 500, 3, 3);

INSERT INTO suppliers
    (id, name_supplier)
VALUES
    (1, 'Baguette France'),
    (2, 'Coca-Cola'),
    (3, 'Vuitton'),
    (4, 'Vileda');

INSERT INTO articles_suppliers
    (article_id, supplier_id, purchase_price)
VALUES
    (1, 1, 0.15),
    (2, 4, 2.00),
    (3, 2, 0.45),
    (4, 3, 300);

INSERT INTO directions
    (id, name_direction, factor)
VALUES
    (1, 'Entrée', 1),
    (2, 'Sortie', -1);

INSERT INTO movement_types
    (id, name_movement_type, direction_id)
VALUES
    (1, 'Achat', 1),
    (2, 'Vente', 2),
    (3, 'Perte', 2),
    (4, 'Vol', 2);

INSERT INTO purchases
    (id, date, supplier_id)
VALUES
    (1, CURRENT_TIMESTAMP, 1),
    (2, CURRENT_TIMESTAMP, 2),
    (3, CURRENT_TIMESTAMP, 3),
    (4, CURRENT_TIMESTAMP, 4);

INSERT INTO sells
    (id,date)
VALUES
    (1, CURRENT_TIMESTAMP),
    (2, CURRENT_TIMESTAMP),
    (3, CURRENT_TIMESTAMP);

INSERT INTO movements
    (id, quantity, date, purchase_id, movement_type_id, article_id,sells_id)
VALUES
    (1, 100, CURRENT_TIMESTAMP, 1, 1, 1, NULL),
    (2, -40, CURRENT_TIMESTAMP, NULL, 2, 1, 1);
