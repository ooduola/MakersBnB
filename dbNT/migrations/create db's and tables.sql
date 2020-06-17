CREATE DATABASE makers_bnb;
\c makers_bnb;
CREATE TABLE spaces (id SERIAL PRIMARY KEY, name VARCHAR(50));
CREATE DATABASE makers_bnb_test;
\c makers_bnb_test;
CREATE TABLE spaces (id SERIAL PRIMARY KEY, name VARCHAR(50));

Day2
\c makers_bnb;
ALTER TABLE spaces
ADD COLUMN price varchar(30);
ADD COLUMN description varchar(30);
ALTER TABLE spaces


\c makers_test_bnb;
ALTER TABLE spaces
ADD COLUMN price varchar(30);
ADD COLUMN description varchar(30);
ALTER TABLE spaces
