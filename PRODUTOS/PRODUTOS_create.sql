create table produtos (
	nr_produto smallint primary key,
	nome_produto varchar(50) not null,
	preco_produto decimal(10, 2),
	quantidade_produto integer)

create table fornecedores (
	nr_fornecedor smallint primary key,
	nome_fornecedor varchar(80) not null,
	morada_fornecedor varchar(60),
	localidade_fornecedor varchar(30),
	fax_fornecedor varchar(20))

create table tipos (
	nr_tipo smallint primary key,
	nome_tipo varchar(20) not null)

create table encomendas (
	nr_encomenda smallint primary key,
	data_encomenda datetime not null,
	nr_fornecedor smallint not null,
	foreign key(nr_fornecedor)
	references fornecedores(nr_fornecedor)
	on update cascade
	on delete cascade)

create table items (
	nr_produto smallint not null,
	nr_encomenda smallint not null,
	unidades_item integer,
	foreign key(nr_produto)
	references produtos(nr_produto)
	on update cascade
	on delete cascade,
	foreign key(nr_encomenda)
	references encomendas(nr_encomenda)
	on update cascade
	on delete cascade,
	primary key(nr_produto, nr_encomenda))

create table tipos_fornecedores (
	nr_fornecedor smallint not null,
	nr_tipo smallint not null,
	foreign key(nr_fornecedor)
	references fornecedores(nr_fornecedor)
	on update cascade
	on delete cascade,
	foreign key(nr_tipo)
	references tipos(nr_tipo)
	on update cascade
	on delete cascade,
	primary key(nr_fornecedor, nr_tipo))

