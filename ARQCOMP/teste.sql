CREATE DATABASE teste;

USE teste;

CREATE TABLE medida (
    dht11_temperatura DECIMAL(5,2),
    dht11_umidade DECIMAL(5,2),
    momento DATETIME
);

DROP TABLE medida;