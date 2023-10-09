CREATE DATABASE users;
USE users;

CREATE TABLE users (
id INT AUTO_INCREMENT NOT NULL,
username VARCHAR(255) UNIQUE NOT NULL,
password VARCHAR(20) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
firstName VARCHAR(100) NOT NULL,
lastName VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE countries (
id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(150) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE addresses (
id INT AUTO_INCREMENT NOT NULL,
user_id INT,
country_id INT,
PRIMARY KEY (id)
);
-- FOREIGN KEY (user_id)
--     REFERENCES users(id)
--     ON DELETE CASCADE
--     ON UPDATE CASCADE,
-- FOREIGN KEY (country_id)
--     REFERENCES countries(id)
--     ON DELETE CASCADE
--     ON UPDATE CASCADE


-- Create 2 users and 3 countries, and populate the address table 
-- using the following data:

-- user_id: 1 & country_id: 1
INSERT INTO users (username, password, email, firstName, lastName)
    VALUES
        ('jault', 'Skagen21', 'jault@w3schools.com', 'John', 'Ault'),
        ('cault', 'Gateve15', 'cault@w3schools.com', 'Christian', 'Ault');
INSERT INTO countries (name)
    VALUES
        ('United States'),
        ('Canada'),
        ('Mexico');
INSERT INTO addresses (user_id, country_id)
    VALUES
        (1, 1),
        (2, 1),
        (2, 3);


-- user_id: 2 & country_id: 1
-- user_id: 2 & country_id: 3

-- Identify the query needed to get the following:
-- List all the countries
SELECT * FROM countries;

-- List all user emails
SELECT email FROM users;

-- List all user firstNames that have the letter "e" in the name.
SELECT firstName FROM users WHERE firstName LIKE 'e%';

-- List all the countries where user_id = 2 lives.
SELECT * from countries
WHERE user_id = 2; 

select name from country 
    where id = (
        select country_id from addresses 
        where user_id = 2;
    );


