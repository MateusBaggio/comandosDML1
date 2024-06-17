create database viagens1

use viagens1

create table DESTINOS (
    id int primary key,
    nome varchar(25),
    pais varchar(20) not null,
    atracoes varchar(100),
    custoMedioDiario float not null,
    avaliacoes float
)

create table PACOTES (
    id int primary key,
    nome varchar(25) not null,
    duracaoDias int not null,
    preco float not null,
    inclui varchar(100)
)

create table AVALIACOES (
    id int primary key,
    destino varchar(25) not null,
    comentario varchar(100),
    avaliacao int
)

create table CLIENTES (
    id int primary key,
    nome varchar(50) not null,
    email varchar(25) not null,
    destinosInteresse varchar(100)
)

create table RESERVAS (
    id int primary key,
    clienteId int not null,
    destinoId int not null,
    dataPartida date not null,
    dataRetorno date not null,
    status int not null
  /*  status 1 = confirmado 2 = não confirmada */
)

insert into DESTINOS (id,nome, pais, atracoes, custoMedioDiario, avaliacoes)
values ( 2,'Paris', 'França', 'Torre Eiffel, Museu do Louvre', 150, 4.8)

insert into PACOTES (id, nome, duracaoDias, preco, inclui)
values ( 2 ,'Aventura na Amazônia', 7, 1200, 'Transporte, Hospedagem, Guias')

update AVALIACOES set comentario = 'Incrível experiência cultural!'
where destino = 'Toquio'

insert into CLIENTES ( id, nome, email, destinosInteresse)
values ( 1, 'João Silva', 'joao.silva@exemplo.com', 'Nova York, Londres')

/* supondo que id da maria é 2, e o de Bali é 3 */
insert into RESERVAS ( id ,clienteId, destinoId, dataPartida, dataRetorno, status)
values (2,2, 3, '2024-07-15', '2024-07-25', 1)
  
update DESTINOS set custoMedioDiario = custoMedioDiario * 1.10
where nome = 'Paris'

update DESTINOS set avaliacoes = 4.9
where nome = 'Paris'

update PACOTES set duracaoDias = duracaoDias + 3
where nome = 'Aventura na Amazônia'

update PACOTES set preco = preco * 0.85
where nome = 'Aventura na Amazônia'

update DESTINOS set avaliacoes = avaliacoes + 1
where nome = 'Paris'

update CLIENTES set email = 'novo.email@exemplo.com'
where nome = 'João Silva'

update DESTINOS set atracoes = atracoes + ', Arco do Triunfo'
where nome = 'Paris'

update RESERVAS set status = 1
where id = 1

update CLIENTES set destinosInteresse = destinosInteresse + ', Tóquio'
where nome = 'João Silva';

update PACOTES set nome = 'AventuraFlorestaAmazônica'
where nome = 'Aventura na Amazônia'

delete from DESTINOS 
where nome = 'Paris'

delete from AVALIACOES
where destino = 'Toquio' and avaliacao = 3

delete from RESERVAS 
where id = 2 and status = 2

delete from DESTINOS 
where atracoes = 'Torre Eiffel'

delete from CLIENTES 
  where nome = 'João Silva'






