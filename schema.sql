CREATE DATABASE ecommerce_db;

\c ecommerce_db

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR NOT NULL
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR NOT NULL,
    price DECIMAL NOT NULL,
    stock INTEGER DEFAULT 10,
    category_id INTEGER REFERENCES categories(id)
);

CREATE TABLE tags (
    id SERIAL PRIMARY KEY,
    tag_name VARCHAR
);

CREATE TABLE product_tags (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(id),
    tag_id INTEGER REFERENCES tags(id)
);
