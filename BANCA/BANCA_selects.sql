--1
select distinct clientes.cod_cliente, clientes.nome_cliente from clientes, conta, cliente_conta
	where conta.cod_conta = cliente_conta.cod_conta
	and clientes.cod_cliente = cliente_conta.cod_cliente

--2
select distinct clientes.cod_cliente, clientes.nome_cliente from clientes, conta, cliente_conta, emprestimo
	where conta.cod_conta = cliente_conta.cod_conta
	and clientes.cod_cliente = cliente_conta.cod_cliente
	and emprestimo.cod_conta = conta.cod_conta
	and emprestimo.valor_empr >= 10000.00

--3
select conta.cod_conta, conta.saldo from conta
	where conta.cod_agencia = 1
	order by conta.saldo desc

--4
select count(conta.cod_conta) from conta

--5
select distinct count(cliente_conta.cod_cliente) from cliente_conta, conta
	where cliente_conta.cod_conta = conta.cod_conta
	and conta.cod_agencia = 3

--6
select agencia.cod_agencia, agencia.morada_agencia, count(conta.cod_conta) from agencia, conta
	where agencia.cod_agencia = conta.cod_agencia
	group by agencia.cod_agencia, agencia.morada_agencia, agencia.cod_agencia

--7
select ag.cod_agencia, max(conta.saldo) as maximo, min(conta.saldo) as minimo, avg(saldo) as media from conta,
	(select conta.cod_agencia, count(conta.cod_conta) as nr_contas from conta
		group by conta.cod_agencia) as ag
	where ag.cod_agencia = conta.cod_agencia
	and ag.nr_contas < 3
	group by ag.cod_agencia

--7'
select conta.cod_agencia, max(conta.saldo) as maximo, min(conta.saldo) as minimo, avg(saldo) as media from conta
	group by conta.cod_agencia
	having count(conta.cod_conta) < 3

	

