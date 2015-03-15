# sqlite-fk-triggers
SQLite parses and understands the syntax for foreign key constraints, but it doesn't enforce them in any way, it does however support triggers and those can be used to enforce the foreign key constraints.

This project provides tools to generate such triggers from the the sql used to create the tables. 
