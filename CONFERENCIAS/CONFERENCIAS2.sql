create table artigos (	
	nrartg smallint primary key,
	titulo_art varchar(200) not null)

create table avaliadores (
	nraval smallint primary key,
	nome_aval varchar(150),
	e_mail_aval varchar(50))

create table autores (
	nrautor smallint primary key,
	nome_aut varchar(150),
	e_mail varchar(50),
	nrartg smallint,
	foreign key(nrartg)
	references artigos(nrartg)
	on update cascade
	on delete set null)

create table notas (
	nraval smallint not null,
	nrartg smallint not null,

	foreign key(nraval)
	references avaliadores(nraval)
	on update cascade
	on delete cascade,

	foreign key(nrartg)
	references artigos(nrartg)
	on update cascade
	on delete cascade,

	primary key(nraval, nrartg),
	nota integer,
	classificacao integer,
	situacao bit)