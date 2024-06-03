create database automoveis
  
use automoveis

create table carros(
	id int primary key,
	marca varchar(15) not null,
	modelo varchar(15) not null,
	anodeFabricacao date not null,
	cor varchar(10) not null,
	quilometragem float not null,
	precoInicial float not null,
	precoVenda float
)

insert into carros
(id, marca, modelo, anodeFabricacao,cor,quilometragem, precoInicial, precoVenda)
values (1,'fiat', 'cronos', '2019-03-12','preto',0,90000, null)

insert into carros
(id, marca, modelo, anodeFabricacao,cor,quilometragem, precoInicial, precoVenda)
values (2,'fiat', 'fiorino', '2010-05-01','branco',201000,50000,30788)

insert into carros
(id, marca, modelo, anodeFabricacao,cor,quilometragem, precoInicial, precoVenda)
values (3,'fiat', 'mobi', '2023-09-01','preto',0,69990,null)

insert into carros
(id, marca, modelo, anodeFabricacao,cor,quilometragem, precoInicial, precoVenda)
values (4,'fiat', '500e', '2015-04-01','vermelho',150000,60000,46900)

insert into carros
(id, marca, modelo, anodeFabricacao,cor,quilometragem, precoInicial, precoVenda)
values (5,'fiat', 'Titano', '2023-04-01','branco',0,120000,143990)

update carros set precoVenda = precoInicial + precoInicial*0.5
where anodeFabricacao>'2018-12-31'and anodeFabricacao<'2020-01-01'

update carros set precoVenda = precoInicial + precoInicial*1.10
where marca = 'toyota'

update carros set anodeFabricacao = '2022-01-01'
where marca = 'honda'

update carros set cor = 'azul'

update carros set modelo = 'cronos 1.0'
where id = 1

delete from carros
where anodeFabricacao < '2015-01-01'

delete from carros
where marca = 'ford'

delete from carros 
where precoVenda >= 10000 and precoVenda <=20000

select * from carros
