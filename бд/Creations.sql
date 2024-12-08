CREATE TABLE gas_stations(
id_column CHARACTER (10) UNIQUE not NULL,
id_station CHARACTER (8) not NULL,
title CHARACTER VARYING (40),
address CHARACTER VARYING (40),
telephone CHARACTER (7) UNIQUE not NULL,
PRIMARY KEY (id_station, id_column)
);
CREATE TABLE gas (
id_column CHARACTER (10) UNIQUE not NULL,
id_gas CHARACTER (5) not NULL,
title CHARACTER VARYING (20) not NULL,
discription CHARACTER VARYING (100),
PRIMARY KEY (id_gas, id_column)
);
CREATE TABLE amount_gas (
id_column CHARACTER (10) UNIQUE not NULL,
id_station CHARACTER (8) not NULL,
id_gas CHARACTER (5) not NULL,
amount NUMERIC (10, 2),
PRIMARY KEY (id_station, id_column)
);
CREATE TABLE purchase (
id_column CHARACTER (10) UNIQUE not NULL,
id_station CHARACTER (8) not NULL,
id_gas CHARACTER (5) not NULL,
date_of_receipt DATE,
date_of_sale DATE,
PRIMARY KEY (id_column),
FOREIGN KEY (id_column) REFERENCES gas_stations(id_column),
FOREIGN KEY (id_column) REFERENCES gas(id_column),
FOREIGN KEY (id_column) REFERENCES amount_gas(id_column)
);