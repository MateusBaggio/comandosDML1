/* Comandos DML ( DATA Manipulation  Language)
são usados para manipular os dados inseridos no banco.
*/


create database aulaDML

use aulaDML

create table produtos (
id  int primary key,
nomeProduto varchar(30) not null,
descricaoProduto varchar(100) not null,
dataValidade date,
tipo varchar(15) not null,
precoCompra float not null,
precoVenda float
)

/* 1 - Inserindo dados*/
insert into produtos
(id, nomeProduto, descricaoProduto, dataValidade, tipo, precoCompra, precoVenda)
values (1, 'Bom Bril', 'Palha de aço de uso doméstico', null, 'Palha de aço',5,7.5)

select * from produtos

insert into produtos
(id, nomeProduto, descricaoProduto, dataValidade, tipo, precoCompra, precoVenda)
values (3,'smart TV LG','UHD 4K 60pol.',null,'Eleronico',2500,null)

insert into produtos
(id, nomeProduto, descricaoProduto, dataValidade, tipo, precoCompra, precoVenda)
values (2,'Mouse gamer sem fio','Maior precisão para seus jogos', null, 'informática',72.8,101.36)

insert into produtos
(id, nomeProduto, descricaoProduto, dataValidade, tipo, precoCompra, precoVenda)
values (4,'Leite longa vida','Embalagem 1 litro', '2024-5-30', 'Laticínio',2.36,null)

/* Excluir Dados da tabela*/
delete from produtos
where id=1

delete from produtos
where precoCompra=10

/* Atualizar dados da tabela*/
update produtos set nomeProduto='Leite tipo A'
where id=4

update produtos set nomeProduto='Garrada de Leite', dataValidade='2024-06-25',precoCompra=3.14
where id=4

/*Preço de venda é sempre 30% superior ao preço de compra*/
update produtos set precoVenda=precoCompra*1.3

/*Conceder desconto de 10% para produtos que custem mais que r$100*/
update produtos set precoVenda=precoVenda-(precoVenda*0.1)
where precoVenda>100

/*Aplicar 3% de aumento (preço de venda) aos produtos com preço entre R$5 e R$10*/
update produtos set precoVenda=precoVenda*1.03
where precoVenda>=5 and precoVenda<=10

/*Conceder 2% de desconto  aos produtos do setor ELETRONICO que custem menos de R$3000*/
update produtos set precoVenda=precoVenda-(precoVenda*0.02)
where tipo='ELETRONICO' and precoVenda<3000

update produtos set tipo='ELETRONICO'
where id=3
