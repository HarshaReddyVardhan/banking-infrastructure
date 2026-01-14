-- Create databases
CREATE DATABASE auth_db;
CREATE DATABASE user_db;
CREATE DATABASE ledger_db;
CREATE DATABASE reporting_db;
CREATE DATABASE notification_db;
-- Grant privileges (optional, simplified for dev)
ALTER USER postgres WITH PASSWORD 'password';