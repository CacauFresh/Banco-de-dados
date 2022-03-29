create database cacauFresh;

use cacaufresh;

create table cliente (
idCliente int primary key auto_increment,
nome varchar(30),
CEP char(9),
endereco varchar(300),
CNPJ char(18),
telefone varchar(20),
email varchar(50),
senha varchar(40),
nomeRepresentante varchar(50)
); 

create table Sensor (
idSensor int primary key auto_increment,
setor varchar(50),
fkCliente int
);

create table registro (
idRegistro int primary key auto_increment,
temperatura_C float,
umidade_UR float,
data_hora datetime default current_timestamp,
fkSensor int,
estado varchar(40)
);



select * from Clientes;
select * from Monitoramento;
select * from Sensor;

INSERT INTO Clientes (Nome, CEP, endereco, CNPJ, telefone, email, senha, nome_do_representante)
			  VALUES ('choconice', '06706-070','','85.170.800/0001-03', '11998756423', 'choconice@sptech.school', '' ,'Gerson'),
			         ('chocolight', '08587-400','', '65.194.370/0001-52', '1196358742', 'chocolight@sptech.school' , '' , 'Denise'),
                     ('chocolovers', '09912-060','' , '94.489.510/0001-18', '11987456321', 'chocolovers@sptech.school', '' , 'Rosa');
               
INSERT INTO Monitoramento (setor, fkCliente)
	               VALUES ('', ''),
						  ('', ''),
                          ('', '');

INSERT INTO Sensor (temperatura_C, umidade_UR, data_hora, fkSensor, estado)
			VALUES ('', '', '','', ''),
				   ('', '', '','', ''),
                   ('', '', '','', '');