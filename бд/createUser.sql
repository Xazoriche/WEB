CREATE USER buyer WITH PASSWORD '123';
GRANT CONNECT ON DATABASE gas_stations TO buyer;
-- Предоставление прав на чтение и запись к таблице
GRANT SELECT, INSERT ON TABLE gas TO buyer;
-- Запрет других прав (если необходимо)
REVOKE ALL PRIVILEGES ON DATABASE gas_stations FROM buyer;

CREATE USER worker WITH PASSWORD '456';
GRANT CONNECT ON DATABASE gas_stations TO worker;
-- Предоставление прав на чтение и запись к таблице
GRANT SELECT, INSERT ON TABLE gas_stations TO worker;
-- Запрет других прав (если необходимо)
REVOKE ALL PRIVILEGES ON DATABASE gas_stations FROM worker;

CREATE USER cashier WITH PASSWORD '789';
GRANT CONNECT ON DATABASE gas_stations TO cashier;
-- Предоставление прав на чтение и запись к таблице
GRANT SELECT, INSERT ON TABLE amount_gas TO cashier;
-- Запрет других прав (если необходимо)
REVOKE ALL PRIVILEGES ON DATABASE gas_stations FROM cashier;

CREATE USER logistician WITH PASSWORD '000';
GRANT CONNECT ON DATABASE gas_stations TO logistician;
-- Предоставление прав на чтение и запись к таблице
GRANT SELECT, INSERT ON TABLE purchase TO logistician;
-- Запрет других прав (если необходимо)
REVOKE ALL PRIVILEGES ON DATABASE gas_stations FROM logistician;
