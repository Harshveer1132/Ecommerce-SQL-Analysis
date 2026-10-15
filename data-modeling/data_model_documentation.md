# E-Commerce Database Model

## Overview
This project uses a relational database to analyze e-commerce sales, customers, products, orders, and reviews.

## Tables
- `customers` — Customer information
- `products` — Product details
- `orders` — Order records
- `order_items` — Products included in each order
- `reviews` — Customer product reviews

## Relationships
- Customers → Orders: One-to-Many
- Orders → Order Items: One-to-Many
- Products → Order Items: One-to-Many
- Customers → Reviews: One-to-Many
- Products → Reviews: One-to-Many

## Design
Primary Keys uniquely identify records. Foreign Keys connect related tables and help maintain referential integrity.

## Files
- `ER_Diagram.png` — Visual database diagram
- `ecommerce_sql_model.mwb` — Editable MySQL Workbench model

