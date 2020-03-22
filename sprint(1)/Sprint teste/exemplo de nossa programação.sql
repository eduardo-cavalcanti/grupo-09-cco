create database sensor;
use sensor;
create table sensor
(idsensor varchar(5) primary key,
idgeladeira int,
idproduto int);
-- Cada sensor tem 4 variações sendo elas v=vazio m=médio c=cheio t=tem produto
insert into sensor values
('s1v',1,1),
('s1m',1,1),
('s1c',1,1),
('s1t',1,1),
('s2v',2,1),
('s2m',2,1),
('s2c',2,1),
('s2t',2,1),
('s9v',3,2);

select * from sensor;

update sensor set idgeladeira = 4 where idsensor = 's9v';

insert into sensor values 
('s9m',3,2),
('s9c',3,2),
('s9t',3,2);

desc  sensor;

delete from sensor where idsensor like 's9%';