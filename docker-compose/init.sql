-- ===================================================================
-- Banking Microservices - Database Initialization
-- ===================================================================
-- This script creates all databases and users needed by the services.
-- It runs automatically when PostgreSQL container starts for the first time.
-- ===================================================================
-- Create databases for each service
CREATE DATABASE auth_db;
CREATE DATABASE users_db;
CREATE DATABASE transactions_db;
CREATE DATABASE ledger_db;
CREATE DATABASE reporting_db;
CREATE DATABASE notification_db;
CREATE DATABASE fraud_db;
CREATE DATABASE aml_db;
CREATE DATABASE audit_db;
-- Create service-specific users
CREATE USER auth_user WITH PASSWORD 'auth_password_dev';
CREATE USER notification_user WITH PASSWORD 'notification_password_dev';
-- Grant privileges to service users
GRANT ALL PRIVILEGES ON DATABASE auth_db TO auth_user;
GRANT ALL PRIVILEGES ON DATABASE notification_db TO notification_user;
-- Grant privileges to postgres user for remaining databases
GRANT ALL PRIVILEGES ON DATABASE users_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE transactions_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE ledger_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE reporting_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE fraud_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE aml_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE audit_db TO postgres;
-- Set password for postgres user (dev only)
ALTER USER postgres WITH PASSWORD 'password';