drop database dbti112;

create database dbti112;

use dbti112;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(50) not null,
email varchar(100) not null,
cpf char(14) unique,
telCel char(10),
cep char(9),
endereco  varchar(100),
numero char(5),
bairro varchar(100),
cidade varchar(100),
estado char(2),
primary key(codfunc));

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(30) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codfunc) references tbFuncionarios(codfunc));

-- inserindo registros na tabela usuarios
insert into tbUsuarios(nome,senha,codfunc)
	values(nome,senha,codfunc);

-- inserindo registros na tabela funcionarios

insert into tbFuncionarios(nome,email,cpf,telCel,cep,endereco,numero,bairro,cidade,estado)values(nome,email,cpf,telCel,cep,endereco,numero,bairro,cidade,estado);

-- alterando registros na tabela funcionarios

update tbFuncionarios set nome=nome,email=email,cpf=cpf,telCel=telCel,cep=cep,endereco=endereco,numero=numero,bairro=bairro,cidade=cidade,estado=estado where codfunc = codfunc;

-- excluindo registros na tabela funcionarios

delete from tbFuncionarios where codFunc = codfunc;

-- pesquisando registros na tabela funcionarios por codigo

select * from tbFuncionarios where codFunc = codfunc;

-- pesquisando registros na tabela funcionarios por nome

select * from tbFuncionarios where nome like '%nome%';


show tables;

insert into tbUsuarios(nome,senha)
	values('admin',SHA('admin'));

select * from tbUsuarios;

select * from tbUsuarios where nome = 'senac' and senha = 'senac';




