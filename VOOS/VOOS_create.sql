create table marcas(
	nr_marca smallint primary key,
	nome_marca varchar(100) not null,
	autonomia decimal,
	lugares integer)

create table avioes(
	matricula varchar(100) primary key,
	nome varchar(150) not null,
	nr_marca smallint not null,
	foreign key(nr_marca)
	references marcas(nr_marca)
	on update cascade
	on delete cascade)

create table voos(
	nr_voo smallint primary key,
	data date not null,
	hora time not null,
	partida varchar(150) not null,
	destino varchar(150) not null,
	matricula varchar(100) not null,
	foreign key(matricula)
	references avioes(matricula)
	on update cascade
	on delete cascade)

create table pilotos(
	nr_piloto smallint primary key,
	nomeP varchar(150) not null)

create table comandantes(
	nr_voo smallint not null,
	nr_piloto smallint not null,
	foreign key(nr_voo)
	references voos(nr_voo)
	on update cascade
	on delete cascade,
	foreign key(nr_piloto)
	references pilotos(nr_piloto)
	on update cascade
	on delete cascade,
	primary key(nr_voo, nr_piloto))