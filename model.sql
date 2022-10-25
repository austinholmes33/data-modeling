CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  password VARCHAR(35) NOT NULL,
  email VARCHAR(35) NOT NULL,
  username VARCHAR(30) NOT NULL,
  recipes_id REFERENCES recipes(id)
);

CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  is_public BOOLEAN(255) NOT NULL,
  is_private BOOLEAN(255) NOT NULL
)  
  
CREATE TABLE occasions (
  id SERIAL PRIMARY KEY,
  occasions VARCHAR(255)
)  

CREATE TABLE ingredients (
  id SERIAL PRIMARY KEY,
  ingredients VARCHAR(255) NOT NULL,
)

CREATE TABLE grocerylist (
  id SERIAL PRIMARY KEY,
  
CREATE TABLE recipe_ingredients (
  id SERIAL PRIMARY KEY,
  ingredients VARCHAR(255) NOT NULL
)  
  
CREATE TABLE grocery_list_ingredients (
  id SERIAL PRIMARY KEY,
  quantity INT NOT NULL,
  measurement_type VARCHAR(255) NOT NULL,
  grocery_id REFERENCES grocerylist(id),
  ingredients_id REFERENCES ingredients(id)
)  
  
CREATE TABLE occasions_recipes (
  id SERIAL PRIMARY KEY,
  occasions_id REFERENCES occasions(id),
  recipes_id REFERENCES recipes(id)
)  