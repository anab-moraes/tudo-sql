create database supermercado;
create database estoque;
create database restaurante;
create database controle_vendas;
create database biblioteca;
create database lojavirtual;

drop database supermercado;
drop database estoque;
drop database restaurante;
drop database controle_vendas;
drop database biblioteca;
drop database lojavirtual;

create database xalalaula;
use xalalaula;


create table alua(
ha varchar(50),
he integer,
hi varchar(20));


create table tbusuarios(
iduser int primary key,
usuario varchar(50),
login varchar(20),
senha varchar(20),
perfil varchar(20)
);

create table pessoa(
id int primary key,
bi varchar(45),
nome varchar(45),
data_nasc date,
telefone varchar(45),
email varchar(45),
morada varchar(45)
);

create table tbfuncionarios(
idfunc int,
nome varchar(45),
registro int,
guerra varchar(30),
gerencia varchar(20),
det varchar(20),
turno varchar(10),
cargo varchar(30),
atividade varchar(50),
funcao varchar(30),
vinculo varchar(30),
situacao varchar(30),
primary key (idfunc, registro)
);

alter table produtos add column descricao varchar(60);
alter table pedidos add column prazo_entrega char(10);
alter table produtos drop column descricao;





alter table produtos add column descricao char(20) check (descricao <>'');
alter table produtos add check (nome <> '');
alter table produto add foreign key (cod_produtos) references grupo_produtos (codigo);
alter table vendas add constraint vendas_fk foreign key (cod_produtos) references produtos (codigo);
alter table produtos add constraint produtos_pk primary key (codigo);

use xalalaula;
alter table produtos drop constraint produtos pk;


use xalalaula;
drop table produtos;

create table produtos (
codigo int primary key,
nome varchar(100),
cod_produtos int
);

create table grupo_produtos (
codigo int primary key,
nome varchar(100)
);

create table vendas(
codigo int primary key,
cod_produtos int
);



alter table produtos
add foreign key (cod_produtos)
references grupo_produtos(codigo);


use xalalaula;

drop table tbusuarios;

use xalalaula;
alter table tbfuncionarios rename to tbfuncionario;
alter table tbfuncionario rename column guerra to area;
alter table tbfuncionario rename column turno to Turno;
alter table tbfuncionario rename column funcao to Funcao;

alter table pessoa rename column data_nasc to datanascimento;
alter table pessoa drop column morada;


create database atividadezinhaexemplar;

 use atividadezinhaexemplar;
 
 create table produtos(
 cod_prod integer primary key,
 nome varchar(30),
 preco numeric);
 
 create table pedidos(
 cod_pedido integer primary key,
 cod_prod integer,
 quantidade integer,
 foreign key (cod_prod) references produtos(cod_prod));


 create database empresa;

create table departamento(
dep_codigo integer primary key,
dep_nome varchar(50)
);

create table funcionario(
func_codigo integer primary key,
dep_codigo integer,
fun_nome varchar(100),
fun_nascimento date,
fun_salario numeric(10,2),
foreign key (dep_codigo) references departamento(dep_codigo)
);

create table dependente(
depen_codigo integer primary key,
fun_codigo integer,
depen_nome varchar(100),
foreign key (fun_codigo) references funcionario(func_codigo)
);















