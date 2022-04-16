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
fkCliente int,
foreign key (fkCliente) references cliente(idCliente)
);

create table registro (
idRegistro int primary key auto_increment,
temperatura_C float,
alerta_temp varchar(15),
umidade_UR float,
alerta_umi varchar(15),
data_hora datetime default current_timestamp,
fkSensor int,
foreign key (fkSensor) references sensor(idSensor),
estado varchar(40)
);

