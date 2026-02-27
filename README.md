# Video-Rental-Project

### This project contains a series of SQL queries written in MySQL, designed to extract meaningful insights from a video rental database (based on the Sakila schema). The queries demonstrate practical data analysis skills including joining multiple tables, aggregating data, and filtering results using conditional logic.

#  Tools
    Database: MySQL
    Schema: "mavenmovies_csv"
# Concepts Used:
    JOIN operations (LEFT, INNER, RIGHT)
    Aggregate Functions (COUNT, AVG, MIN, MAX)
    GROUP BY & HAVING clauses
    Aliasing & Result Ordering

# Query Summary

## Description                                                     
 ### 1. Film titles and their actor counts ------ LEFT JOIN, COUNT, GROUP BY
 ### 2. Actor and award records compared across join types ----- INNER JOIN, LEFT JOIN, RIGHT JOIN
 ### 3. Customers with fewer than 15 all-time rentals ----- LEFT JOIN, HAVING, COUNT
 ### 4. Film stats grouped by replacement cost ----- GROUP BY, AVG, MIN, MAX
 ### 5. Film breakdown by rating, duration & cost ----- Multi-column GROUP BY

# Key Learnings & Observations



 
## JOIN Comparison
## Running the same query across three different join types revealed the following:

  ### INNER JOIN – Returns only actors who have a matching award record. No NULLs.
  ### LEFT JOIN – Returns all actors, even those without awards. Missing award data appears as NULL.
  ### RIGHT JOIN – Returns all award records, showing only actors who match. Useful when the award table is the primary focus.
