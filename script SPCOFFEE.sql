CREATE DATABASE spCoffee;
USE spCoffee;


CREATE TABLE USUARIO(
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
sobrenome VARCHAR(50),
dtNasc DATE,
telefoneFixo char(15)
);

INSERT INTO USUARIO (nome, sobrenome, dtNasc, telefoneFixo) VALUES 
('João', 'Silva', '1976-09-10','55 11 3221-6745'), -- são paulo
('Bernado', 'Lima', '1983-04-18','55 19 5514-9720'), -- campinhas
('Carlos', 'Nunes', '1978-11-03','55 31 7431-9527'), -- minas
('Roberto', 'Santos', '1980-01-07','55 31 5515-7426'), -- minas
('Maria', 'Cruz', '1970-12-25','55 12 6753-8976'); -- josé dos campos

SELECT * FROM USUARIO;

CREATE TABLE AMBIENTE (
idAmbiente INT PRIMARY KEY AUTO_INCREMENT,
largura int,
comprimento int
);

CREATE TABLE produto(
idProduto INT PRIMARY KEY,
tipo_grao varchar(50),
tipo_Solo varchar(40)
);

CREATE TABLE endereco(
idEndereco INT PRIMARY KEY AUTO_INCREMENT,
pais varchar(30),
estado varchar(30),
cidade varchar(30),
bairro varchar(30),
CEP char(8),
logradouro varchar(50),
numero int
);

CREATE TABLE sensor(
idSensor int primary key,
status_Sensor varchar(15), -- adicionar check ativo e inativo
temperatura decimal,
umidade decimal,
tempo datetime
);

Alter table sensor add constraint chkStatus check (status_Sensor in('ativo', 'inativo'));

-- INTEGRANTES

-- RAYANE GONÇALVES DOS REIS RA: 01241013
-- MAYARA DAMAS RA: 01241009
-- SOPHIA NEVES  RA: 01241036
-- SAMUEL TEODORO RA: 01241166
-- MATHEUS SOARES RA: 01241171
-- VITOR MATHEUS WEBER RA: 01241212
-- KAUAN MARQUES RA:01241216


