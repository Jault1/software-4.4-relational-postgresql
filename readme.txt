/* hadeTh6T */

Create a new table called users and it should the following columns:
id
username
password
email
firstName
lastName

Create a new table called countries and it should have the following columns:
id
name

Create a new table called addresses and it should the following columns:
id
user_id (referencing users id column)
country_id (referenceing countries id column)




Create 2 users and 3 countries, and populate the location table using the following data:
user_id: 1 & country_id: 1
user_id: 2 & country_id: 1
user_id: 2 & country_id: 3

Identify the query needed to get the following:
List all the countries
List all user emails
List all user firstNames that have the letter "e" in the name.
List all the countries where user_id = 2 lives.