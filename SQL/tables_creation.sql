CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    region VARCHAR2(50) NOT NULL
);

CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    category VARCHAR2(50) NOT NULL
);

CREATE TABLE transactions (
    transaction_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    sale_date DATE NOT NULL,
    amount NUMBER(10,2) NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products(product_id)
);
