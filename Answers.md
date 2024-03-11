1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
Ans. In the given diagram, the "Product" and "Product_Category" entities likely have a one-to-many relationship, where each product in the "Product" table can belong to only one category in the "Product_Category" table. This relationship is commonly represented by a foreign key in the "Product" table is "category_id", referencing the primary key in the "Product_Category" table is "id".


2. How could you ensure that each product in the "Product" table has a valid category assigned to it?
Ans. To ensure that each product in the "Product" table has a valid category assigned, you can enforce a foreign key constraint in the database schema. This constraint will link the foreign key in the "Product" table to the primary key in the "Product_Category" table, ensuring that every product's category corresponds to an existing category in the "Product_Category" table.
