create database bd_biblioteca01;
use bd_biblioteca01;

create table livro (
id_livro int not null auto_increment primary key,
nome_livro varchar (50),
genero_livro varchar (100),
cod_livro varchar(100),
id_autor int,
id_editora int
)default charset = utf8;
 
create table editora (
id_editora int not null auto_increment primary key,
nome_editora varchar (100),
telefone  varchar (100),
endereco varchar (100)
)default charset = utf8;

create table autor(
id_autor int not null auto_increment primary key,
nome_autor varchar (200),
telefone_autor varchar (200),
sexo_autor enum ('m','f')
)default charset = utf8;

create table usuario (
id_usuario int not null auto_increment primary key,
nome_usuario varchar (200),
cod_usuario varchar (200),
telefone_usuario varchar (200),
endereco_usuario varchar (200)
)default charset = utf8;

create table emprestimo(
id_emprestimo int not null auto_increment primary key,
data_emprestimo date,
data_devolucao date,
id_livro int,
id_usuario int
)default charset = utf8;

alter table livro add constraint fk_id_autor foreign key (id_autor) references autor(id_autor);
alter table livro add constraint fk_id_editora foreign key(id_editora) references editora(id_editora);
alter table emprestimo add constraint fk_id_livro foreign key(id_livro) references livro(id_livro);
alter table emprestimo add constraint fk_id_usuario foreign key(id_usuario) references usuario(id_usuario);


insert into livro (nome_livro, genero_livro, cod_livro)
values ('it a coisa', 'terror', '1');

insert into livro (nome_livro, genero_livro, cod_livro)
values ('O nome do Vento', 'fantasia', '2');

insert into autor (nome_autor, telefone_autor, sexo_autor)
values ('Marcos', '12345678','M');

insert into editora (nome_editora, telefone, endereco)
values ('edit', '51323255', 'Rio de Janeiro');

insert into usuario (nome_usuario, cod_usuario, telefone_usuario, endereco_usuario)
values ('Vitor', '123', '123456789', 'Sao Paulo');

insert into usuario (nome_usuario, cod_usuario, telefone_usuario, endereco_usuario)
values ('Roberta', '2', '123456789', 'Uberlandia');
 
insert into emprestimo (data_emprestimo, data_devolucao, id_livro, id_usuario)
values ( '2022.06.25', '2022.10.25','1','2');

select*from livro;
select*from editora;
select*from autor;
select*from usuario;
select*from emprestimo;