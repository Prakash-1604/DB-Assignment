-- Product Category Table
CREATE TABLE product_category (
    id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    category_desc VARCHAR(50),
    created_at timeStamp NOT NULL,
    modified_at timeStamp NOT NULL,
    deleted_at timeStamp NOT NULL
);

-- Product Inventory Table
CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    quantity INT NOT NULL,
    created_at timeStamp NOT NULL,
    modified_at timeStamp NOT NULL,
    deleted_at timeStamp NOT NULL
);

-- Discount Table
CREATE TABLE discount (
    id INT PRIMARY KEY,
    discount_name VARCHAR(50) NOT NULL,
    discount_desc VARCHAR(50) NOT NULL,
    discount_percent DECIMAL(10,2) NOT NULL,
    active boolean NOT NULL,
    created_at timeStamp NOT NULL,
    modified_at timeStamp NOT NULL,
    deleted_at timeStamp NOT NULL
);

-- Product Table with Foreign Key Constraint
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    product_desc VARCHAR(100) NOT NULL,
    product_SKU VARCHAR(100) NOT NULL,
    category_id INT,
    inventory_id INT,
    price DECIMAL(10, 2) NOT NULL,
    discount_id INT NOT NULL,
    created_at timeStamp NOT NULL,
    modified_at timeStamp NOT NULL,
    deleted_at timeStamp NOT NULL,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES product_category(id)
    CONSTRAINT fk_inventory FOREIGN KEY (inventory_id_id) REFERENCES product_inventory(id)
    CONSTRAINT fk_discount FOREIGN KEY (discount_id) REFERENCES discount(id)

);