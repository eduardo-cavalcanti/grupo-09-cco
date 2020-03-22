create database sensor;
use sensor;
create table sensor(
idmovimentos int primary key,
idsensor varchar(5),
dia date,
hora varchar(5),
situação int
);
insert into sensor values
(1,'S1v', '2020-07-19','18:30' ,1),
(2,'S1m', '2020-07-19','18:30' ,1),
(3,'S1c', '2020-07-19','18:30' ,1),
(4,'S9v', '2020-07-19','19:00' ,1),
(5,'S9m', '2020-07-19','19:00' ,1),
(6,'S9c', '2020-07-19','19:00' ,0),
(7,'S27v', '2020-07-19','22:15' ,1),
(8,'S27m', '2020-07-19','22:15' ,0),
(9,'S27c', '2020-07-19','22:15' ,0);
select * from sensor;
drop table sensor;
create table geladeira(
idgeladeira int primary key auto_increment,
nome_empresa varchar(40),
endereco varchar(40)
);
insert into geladeira(nome_empresa,endereco)values
('Bandtec', 'haddock lobo'),
('Anhembi', 'Paulista'),
('Anhanguera','Rudge'),
('UNIP','Anchieta');
select*from geladeira;
drop table geladeira;
create table produto(
idproduto int primary key auto_increment,
Produto varchar(40)
);
insert into produto(Produto) values
('Coca-cola'),
('Sanduíche de frango'),
('Sanduíche Atum'),
('Salada de frutas'),
('Nescau');
select*from produto;
drop table produto;
create table relacional(
idsensor varchar(15) primary key,
sensorbase varchar(5),
idgeladeira int,
idproduto int
);
insert into relacional(idsensor,idgeladeira,idproduto,dia,hora) values
('S1c','s1',5,3),
('S1v','s1',5,3),
('S9v','s9',3,2);
select*from relacional;
drop table relacional;

create table situacao(
idsituação int primary key,
sensorbase varchar(5),
estoque varchar(10)
);

insert into situacao value 
(1,'s1','Médio'),
(2,'s9','Quase vazio');

select* from situacao;
drop table situacao;