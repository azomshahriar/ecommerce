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


INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (5, 1, 1, 2, 5000, '2024-03-13 11:47:26', 1, '2024-05-13 11:47:40', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (6, 1, 1, 2, 5000, '2024-03-13 11:47:26', 1, '2024-05-13 11:47:40', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (7, 1, 2, 2, 5000, '2024-03-13 11:47:26', 1, '2024-05-13 11:47:40', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (8, 1, 1, 2, 5000, '2024-03-13 11:47:26', 1, '2024-05-13 11:47:40', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (9, 1, 2, 3, 5000, '2024-03-13 11:47:26', 1, '2024-05-13 11:47:40', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (10, 1, 4, 5, 6000, '2024-03-13 11:47:26', 1, '2024-04-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (11, 1, 5, 2, 5000, '2024-03-13 11:47:26', 1, '2024-04-13 11:47:26', 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (12, 1, 6, 2, 2000, '2024-03-01 11:47:26', 1, '2024-05-13 11:47:26', 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (13, 1, 7, 2, 5000, '2024-03-02 11:47:26', 1, '2024-05-13 11:47:26', 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (14, 1, 1, 2, 3000, '2024-03-03 11:47:26', 1, '2024-05-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (15, 1, 1, 3, 6000, '2024-03-04 11:47:26', 1, '2024-05-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (16, 1, 1, 2, 3000, '2024-03-05 11:47:26', 1, '2024-05-13 11:47:26', 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (17, 1, 2, 2, 3000, '2024-03-06 11:47:26', 1, '2024-05-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (18, 1, 2, 4, 3000, '2024-03-07 11:47:26', 1, '2024-05-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (19, 1, 3, 2, 4000, '2024-03-08 11:47:26', 1, '2024-05-13 11:47:26', 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (20, 1, 1, 2, 4000, '2024-03-09 11:47:26', 1, '2024-05-13 11:47:26', 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (21, 1, 7, 2, 5000, '2024-03-02 11:47:26', 1, '2024-05-13 11:47:26', 1);

-- insert last month data

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (22, 1, 10, 2, 50, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (23, 1, 11, 6, 30,  DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (24, 1, 12, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (25, 1, 13, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (26, 1, 14, 3 , 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (27, 1, 14, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (28, 1, 15, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (29, 1, 15, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (30, 1, 16, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (31, 1, 17, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (32, 1, 18, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (33, 1, 10, 2, 50, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (34, 1, 11, 4, 30,  DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (35, 1, 12, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (36, 1, 13, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (37, 1, 14, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (38, 1, 14, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (39, 1, 15, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (40, 1, 15, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (41, 1, 16, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (42, 1, 17, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);
INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (43, 1, 18, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (44, 1, 10, 2, 50, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);

INSERT INTO ecommerce.sale (id, customer_id, item_id, no_of_item, amount, created_date, created_by, last_modified_date, last_modified_by)
VALUES (45, 1, 12, 2, 40, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1, DATE_ADD(LAST_DAY(DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH)), INTERVAL FLOOR(RAND() * 30) DAY), 1);


