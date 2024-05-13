-- wish-list
INSERT INTO ecommerce.wish_list (id, customer_id, item_id, created_date, created_by, last_modified_date, last_modified_by) VALUES
            (1, 1, 1, '2024-01-13 11:45:25', 1, '2024-05-13 11:45:41', 1);
INSERT INTO ecommerce.wish_list (id, customer_id, item_id, created_date, created_by, last_modified_date, last_modified_by) VALUES
    (2, 2, 1, '2024-01-13 11:45:25', 1, '2024-05-13 11:45:41', 1);
INSERT INTO ecommerce.wish_list (id, customer_id, item_id, created_date, created_by, last_modified_date, last_modified_by) VALUES
    (3, 1, 2, '2024-01-13 11:45:25', 1, '2024-05-13 11:45:41', 1);
INSERT INTO ecommerce.wish_list (id, customer_id, item_id, created_date, created_by, last_modified_date, last_modified_by) VALUES
    (4, 4, 1, '2024-01-13 11:45:25', 1, '2024-05-13 11:45:41', 1);
INSERT INTO ecommerce.wish_list (id, customer_id, item_id, created_date, created_by, last_modified_date, last_modified_by) VALUES
    (5, 1, 3, '2024-01-13 11:45:25', 1, '2024-05-13 11:45:41', 1);
INSERT INTO ecommerce.wish_list (id, customer_id, item_id, created_date, created_by, last_modified_date, last_modified_by) VALUES
    (6, 6, 1, '2024-01-13 11:45:25', 1, '2024-05-13 11:45:41', 1);

-- sale total sale amount current date
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (1, 1, 1, 2, 500, now(), 1, now(), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (2, 2, 1, 2, 1000, now(), 1, now(), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (3, 1, 3, 2, 500, now(), 1, now(), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (4, 2, 1, 2, 500, now(), 1, now(), 1);


-- max sell date 04-13 last 3 month
-- item 1 is always
-- top 5 selling item all time ( sale amount)
-- top 5 selling items last month ( number of sell)
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (5, 1, 1, 2, 500, '2024-04-13 11:47:26', 1, '2024-05-13 11:47:40', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (6, 1, 1, 2, 500, '2024-04-13 11:47:26', 1, '2024-05-13 11:47:40', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (7, 1, 2, 2, 500, '2024-04-13 11:47:26', 1, '2024-05-13 11:47:40', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (8, 1, 1, 2, 500, '2024-04-13 11:47:26', 1, '2024-05-13 11:47:40', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (9, 1, 2, 3, 500, '2024-04-13 11:47:26', 1, '2024-05-13 11:47:40', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (10, 1, 4, 5, 500, '2024-04-13 11:47:26', 1, '2024-04-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (11, 1, 5, 2, 1000, '2024-04-13 11:47:26', 1, '2024-04-13 11:47:26', 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (12, 1, 6, 2, 200, '2024-05-01 11:47:26', 1, '2024-05-13 11:47:26', 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (13, 1, 7, 2, 5000, '2024-05-02 11:47:26', 1, '2024-05-13 11:47:26', 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (14, 1, 1, 2, 300, '2024-05-03 11:47:26', 1, '2024-05-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (15, 1, 1, 3, 600, '2024-05-04 11:47:26', 1, '2024-05-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (16, 1, 1, 2, 800, '2024-05-05 11:47:26', 1, '2024-05-13 11:47:26', 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (17, 1, 2, 2, 800, '2024-05-06 11:47:26', 1, '2024-05-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (18, 1, 2, 4, 800, '2024-05-07 11:47:26', 1, '2024-05-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (19, 1, 3, 2, 1000, '2024-05-08 11:47:26', 1, '2024-05-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (20, 1, 1, 2, 1000, '2024-05-09 11:47:26', 1, '2024-05-13 11:47:26', 1);

