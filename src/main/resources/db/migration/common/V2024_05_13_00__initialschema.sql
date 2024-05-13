CREATE TABLE if not exists  wish_list
(
    id                 BIGINT NOT NULL,
    customer_id        BIGINT,
    item_id            BIGINT,
    created_date       TIMESTAMP,
    created_by         BIGINT,
    last_modified_date TIMESTAMP,
    last_modified_by   BIGINT,
        PRIMARY KEY (id),
    INDEX              customer_id_idx (customer_id)
);


CREATE TABLE if not exists  sale
(
    id                 BIGINT NOT NULL,
    customer_id        BIGINT,
    item_id            BIGINT,
    no_of_item         BIGINT,
    amount             DECIMAL,
    created_date       TIMESTAMP,
    created_by         BIGINT,
    last_modified_date TIMESTAMP,
    last_modified_by   BIGINT,
        PRIMARY KEY (id),
    INDEX              customer_id_idx (customer_id),
    INDEX              item_id_idx (item_id)

);