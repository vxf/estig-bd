--create database BANCA

create table clientes (
	cod_cliente smallint primary key,
	nome_cliente varchar(200) not null,
	morada_cliente varchar(200) not null,
	localidade_cliente varchar(50) not null,
	cod_postal_cliente varchar(10) not null,
	telefone_cliente varchar(20) not null,
	e_mail_cliente varchar(200))

create table tipo_conta (
	cod_tipo_conta smallint primary key,
	descricao_conta varchar(200))

create table tipo_movimento (
	cod_tipo_mov smallint primary key,
	designacao_mov varchar(200))

create table agencia (
	cod_agencia smallint primary key,
	morada_agencia varchar(200) not null,
	localidade_agencia varchar(50) not null,
	codpostal_agencia varchar(200) not null)

create table conta (
	cod_conta smallint primary key,
	data_abertura datetime not null,
	saldo decimal(18, 2) not null,
	cod_agencia smallint not null,
	cod_tipo_conta smallint not null,
	foreign key(cod_agencia)
	references agencia(cod_agencia)
	on update cascade
	on delete cascade,
	foreign key(cod_tipo_conta)
	references tipo_conta(cod_tipo_conta)
	on update cascade
	on delete cascade)

create table cliente_conta (
	cod_cliente_conta smallint primary key,
	cod_cliente smallint not null,
	cod_conta smallint not null,
	foreign key(cod_cliente)
	references clientes(cod_cliente)
	on update cascade
	on delete cascade,
	foreign key(cod_conta)
	references conta(cod_conta)
	on update cascade
	on delete cascade)

create table emprestimo (
	cod_emprestimo smallint primary key,
	data_empr datetime not null,
	valor_empr decimal(18, 2) not null,
	taxa_juro decimal(6,3) not null,
	numero_empr integer,
	observacoes varchar(200),
	cod_agencia smallint not null,
	cod_conta smallint not null,
	foreign key(cod_agencia)
	references agencia(cod_agencia),
	foreign key(cod_conta)
	references conta(cod_conta))

create table movimento_conta (
	cod_mov_conta smallint primary key,
	data_mov datetime not null,
	valor_mov decimal(18, 2) not null,
	cod_tipo_mov smallint not null,
	cod_emprestimo smallint not null,
	cod_cliente_conta smallint not null,
	foreign key(cod_tipo_mov)
	references tipo_movimento(cod_tipo_mov)
	on update cascade
	on delete cascade,
	foreign key(cod_emprestimo)
	references emprestimo(cod_emprestimo)
	on update cascade
	on delete cascade,
	foreign key(cod_cliente_conta)
	references cliente_conta(cod_cliente_conta)
	on update cascade
	on delete cascade)

