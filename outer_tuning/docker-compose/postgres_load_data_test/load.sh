#!/bin/bash

echo '##### USER: (postgres) ##### PASS: ('$POSTGRES_PASSWORD') ##### DB: ('$POSTGRES_DB')';

# Drop existing tables and create new ones
psql -U postgres -d $POSTGRES_DB -c "DROP TABLE IF EXISTS general_log";
psql -U postgres -d $POSTGRES_DB -c "CREATE TABLE general_log (
    log_id SERIAL PRIMARY KEY,  -- Unique identifier for each log entry
    event_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- When the query was executed
    user_name TEXT,             -- User who executed the query
    database_name TEXT,         -- Database in which the query was executed
    query TEXT,                 -- The executed SQL query
    client_addr INET            -- Client IP address
)";
psql -U postgres -d $POSTGRES_DB -c "DROP TABLE IF EXISTS NATION";
psql -U postgres -d $POSTGRES_DB -c "CREATE TABLE NATION (
    N_NATIONKEY INTEGER PRIMARY KEY,
    N_NAME CHAR(25) NOT NULL,
    N_REGIONKEY INTEGER NOT NULL,
    N_COMMENT VARCHAR(152)
)";
psql -U postgres -d $POSTGRES_DB -c "\copy NATION FROM '/opt/nation.tbl' WITH DELIMITER '|' CSV";

psql -U postgres -d $POSTGRES_DB -c "DROP TABLE IF EXISTS REGION";
psql -U postgres -d $POSTGRES_DB -c "CREATE TABLE REGION (
    R_REGIONKEY INTEGER PRIMARY KEY,
    R_NAME CHAR(25) NOT NULL,
    R_COMMENT VARCHAR(152)
)";
psql -U postgres -d $POSTGRES_DB -c "\copy REGION FROM '/opt/region.tbl' WITH DELIMITER '|' CSV";

psql -U postgres -d $POSTGRES_DB -c "DROP TABLE IF EXISTS PART";
psql -U postgres -d $POSTGRES_DB -c "CREATE TABLE PART (
    P_PARTKEY INTEGER PRIMARY KEY,
    P_NAME VARCHAR(55) NOT NULL,
    P_MFGR CHAR(25) NOT NULL,
    P_BRAND CHAR(10) NOT NULL,
    P_TYPE VARCHAR(25) NOT NULL,
    P_SIZE INTEGER NOT NULL,
    P_CONTAINER CHAR(10) NOT NULL,
    P_RETAILPRICE NUMERIC(15,2) NOT NULL,
    P_COMMENT VARCHAR(23) NOT NULL
)";
psql -U postgres -d $POSTGRES_DB -c "\copy PART FROM '/opt/part.tbl' WITH DELIMITER '|' CSV";

psql -U postgres -d $POSTGRES_DB -c "DROP TABLE IF EXISTS SUPPLIER";
psql -U postgres -d $POSTGRES_DB -c "CREATE TABLE SUPPLIER (
    S_SUPPKEY INTEGER PRIMARY KEY,
    S_NAME CHAR(25) NOT NULL,
    S_ADDRESS VARCHAR(40) NOT NULL,
    S_NATIONKEY INTEGER NOT NULL,
    S_PHONE CHAR(15) NOT NULL,
    S_ACCTBAL NUMERIC(15,2) NOT NULL,
    S_COMMENT VARCHAR(101) NOT NULL
)";
psql -U postgres -d $POSTGRES_DB -c "\copy SUPPLIER FROM '/opt/supplier.tbl' WITH DELIMITER '|' CSV";

psql -U postgres -d $POSTGRES_DB -c "DROP TABLE IF EXISTS PARTSUPP";
psql -U postgres -d $POSTGRES_DB -c "CREATE TABLE PARTSUPP (
    PS_PARTKEY INTEGER NOT NULL,
    PS_SUPPKEY INTEGER NOT NULL,
    PS_AVAILQTY INTEGER NOT NULL,
    PS_SUPPLYCOST NUMERIC(15,2) NOT NULL,
    PS_COMMENT VARCHAR(199) NOT NULL,
    PRIMARY KEY (PS_PARTKEY, PS_SUPPKEY)
)";
psql -U postgres -d $POSTGRES_DB -c "\copy PARTSUPP FROM '/opt/partsupp.tbl' WITH DELIMITER '|' CSV";

psql -U postgres -d $POSTGRES_DB -c "DROP TABLE IF EXISTS CUSTOMER";
psql -U postgres -d $POSTGRES_DB -c "CREATE TABLE CUSTOMER (
    C_CUSTKEY INTEGER PRIMARY KEY,
    C_NAME VARCHAR(25) NOT NULL,
    C_ADDRESS VARCHAR(40) NOT NULL,
    C_NATIONKEY INTEGER NOT NULL,
    C_PHONE CHAR(15) NOT NULL,
    C_ACCTBAL NUMERIC(15,2) NOT NULL,
    C_MKTSEGMENT CHAR(10) NOT NULL,
    C_COMMENT VARCHAR(117) NOT NULL
)";
psql -U postgres -d $POSTGRES_DB -c "\copy CUSTOMER FROM '/opt/customer.tbl' WITH DELIMITER '|' CSV";

psql -U postgres -d $POSTGRES_DB -c "DROP TABLE IF EXISTS ORDERS";
psql -U postgres -d $POSTGRES_DB -c "CREATE TABLE ORDERS (
    O_ORDERKEY INTEGER PRIMARY KEY,
    O_CUSTKEY INTEGER NOT NULL,
    O_ORDERSTATUS CHAR(1) NOT NULL,
    O_TOTALPRICE NUMERIC(15,2) NOT NULL,
    O_ORDERDATE DATE NOT NULL,
    O_ORDERPRIORITY CHAR(15) NOT NULL,
    O_CLERK CHAR(15) NOT NULL,
    O_SHIPPRIORITY INTEGER NOT NULL,
    O_COMMENT VARCHAR(79) NOT NULL
)";
psql -U postgres -d $POSTGRES_DB -c "\copy ORDERS FROM '/opt/orders.tbl' WITH DELIMITER '|' CSV";

psql -U postgres -d $POSTGRES_DB -c "DROP TABLE IF EXISTS LINEITEM";
psql -U postgres -d $POSTGRES_DB -c "CREATE TABLE LINEITEM (
    L_ORDERKEY INTEGER NOT NULL,
    L_PARTKEY INTEGER NOT NULL,
    L_SUPPKEY INTEGER NOT NULL,
    L_LINENUMBER INTEGER NOT NULL,
    L_QUANTITY NUMERIC(15,2) NOT NULL,
    L_EXTENDEDPRICE NUMERIC(15,2) NOT NULL,
    L_DISCOUNT NUMERIC(15,2) NOT NULL,
    L_TAX NUMERIC(15,2) NOT NULL,
    L_RETURNFLAG CHAR(1) NOT NULL,
    L_LINESTATUS CHAR(1) NOT NULL,
    L_SHIPDATE DATE NOT NULL,
    L_COMMITDATE DATE NOT NULL,
    L_RECEIPTDATE DATE NOT NULL,
    L_SHIPINSTRUCT CHAR(25) NOT NULL,
    L_SHIPMODE CHAR(10) NOT NULL,
    L_COMMENT VARCHAR(44) NOT NULL,
    PRIMARY KEY (L_ORDERKEY, L_LINENUMBER)
)";
psql -U postgres -d $POSTGRES_DB -c "\copy LINEITEM FROM '/opt/lineitem.tbl' WITH DELIMITER '|' CSV";

psql -U postgres -d $POSTGRES_DB -c "DROP TABLE IF EXISTS matviews";
psql -U postgres -d $POSTGRES_DB -c "CREATE TABLE matviews (
    mv VARCHAR(64) PRIMARY KEY,
    view VARCHAR(64) NOT NULL,
    last_refresh TIMESTAMP,
    refresh_time INTEGER
)";

psql -U postgres -d $POSTGRES_DB -c "ANALYZE;";

# Create PostgreSQL functions for managing materialized views
psql -U postgres -d $POSTGRES_DB <<EOF

-- Function to create a materialized view
CREATE OR REPLACE FUNCTION create_matview(matview VARCHAR, view_name VARCHAR)
RETURNS VOID AS \$\$
DECLARE
    time_start TIMESTAMP;
    time_stop TIMESTAMP;
BEGIN
    IF EXISTS (SELECT FROM pg_matviews WHERE matviewname = matview) THEN
        RAISE EXCEPTION 'ERROR! A matview or table with that name already exists. Will not proceed';
    END IF;

    time_start := CURRENT_TIMESTAMP;
    EXECUTE format('CREATE MATERIALIZED VIEW %I AS SELECT * FROM %I', matview, view_name);
    time_stop := CURRENT_TIMESTAMP;

    INSERT INTO matviews (mv, view, last_refresh, refresh_time)
    VALUES (matview, view_name, time_start, EXTRACT(EPOCH FROM (time_stop - time_start)));
    RAISE NOTICE 'Materialized view created successfully';
END;
\$\$ LANGUAGE plpgsql;

-- Function to refresh a materialized view
CREATE OR REPLACE FUNCTION refresh_matview(matview VARCHAR)
RETURNS VOID AS \$\$
DECLARE
    time_start TIMESTAMP;
    time_stop TIMESTAMP;
    view_name VARCHAR;
BEGIN
    SELECT view INTO view_name FROM matviews WHERE mv = matview;
    IF view_name IS NULL THEN
        RAISE EXCEPTION 'ERROR! A matview with that name does not exist, will not proceed';
    END IF;

    time_start := CURRENT_TIMESTAMP;
    EXECUTE format('REFRESH MATERIALIZED VIEW %I', matview);
    time_stop := CURRENT_TIMESTAMP;

    UPDATE matviews
    SET last_refresh = time_start,
        refresh_time = EXTRACT(EPOCH FROM (time_stop - time_start))
    WHERE mv = matview;

    RAISE NOTICE 'Materialized view refreshed successfully';
END;
\$\$ LANGUAGE plpgsql;

-- Function to drop a materialized view
CREATE OR REPLACE FUNCTION drop_matview(matview VARCHAR)
RETURNS VOID AS \$\$
BEGIN
    IF NOT EXISTS (SELECT FROM matviews WHERE mv = matview) THEN
        RAISE EXCEPTION 'ERROR! A matview with that name does not exist, will not proceed';
    END IF;

    EXECUTE format('DROP MATERIALIZED VIEW %I', matview);
    DELETE FROM matviews WHERE mv = matview;
    RAISE NOTICE 'Materialized view dropped successfully';
END;
\$\$ LANGUAGE plpgsql;

-- Function to refresh all materialized views (to be run by cron)
CREATE OR REPLACE FUNCTION refresh_all_matviews()
RETURNS VOID AS \$\$
DECLARE
    matview_name VARCHAR;
BEGIN
    FOR matview_name IN SELECT mv FROM matviews LOOP
        PERFORM refresh_matview(matview_name);
    END LOOP;
END;
\$\$ LANGUAGE plpgsql;


-- Enable the file_fdw extension
CREATE EXTENSION IF NOT EXISTS file_fdw;

-- Create a server for file_fdw
CREATE SERVER IF NOT EXISTS csv_log_server FOREIGN DATA WRAPPER file_fdw;

-- Create a foreign table to read the CSV log file
DROP FOREIGN TABLE IF EXISTS csv_logs;
CREATE FOREIGN TABLE csv_logs (
    log_time TIMESTAMP,
    user_name TEXT,
    database_name TEXT,
    process_id INTEGER,
    connection_from TEXT,
    session_id TEXT,
    session_line_num BIGINT,
    command_tag TEXT,
    session_start_time TIMESTAMP,
    virtual_transaction_id TEXT,
    transaction_id BIGINT,
    error_severity TEXT,
    sql_state_code TEXT,
    message TEXT,
    detail TEXT,
    hint TEXT,
    internal_query TEXT,
    internal_query_pos INTEGER,
    context TEXT,
    query TEXT,
    query_pos INTEGER,
    location TEXT,
    application_name TEXT
)
SERVER csv_log_server
OPTIONS (
    filename '/var/log/postgresql/postgresqllogs.csv',
    format 'csv',
    header 'true'
);

-- Create a view that selects only SELECT queries from the csv_logs
CREATE OR REPLACE VIEW query_logs AS
SELECT
    log_time,
    session_start_time,
    user_name,
    database_name,
    process_id,
    connection_from,
    session_id,
    session_line_num,
    command_tag,
    virtual_transaction_id,
    transaction_id,
    error_severity,
    sql_state_code,
    -- Remove 'statement: ' prefix from message
    CASE
        WHEN message LIKE 'statement: %' THEN substr(message, 11)
        ELSE message
    END AS query_text,
    detail,
    hint,
    internal_query,
    internal_query_pos,
    context,
    query_pos,
    location,
    application_name
FROM csv_logs
WHERE command_tag = 'idle' AND message LIKE '%TPC_H%';


-- Grant permissions if necessary
GRANT SELECT ON query_logs TO public;

EOF

echo "Database setup complete. Materialized view functions are ready."
