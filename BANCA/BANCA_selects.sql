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

--9
select distinct cliente_conta.cod_cliente from cliente_conta

--10
select count(cliente_conta.cod_conta) from cliente_conta
	where cliente_conta.cod_cliente = 1

--11
select cliente_conta.cod_cliente, sum(conta.saldo) as saldo from conta, emprestimo, cliente_conta
	where conta.cod_conta = emprestimo.cod_conta
	and conta.cod_conta = cliente_conta.cod_conta
	group by cliente_conta.cod_cliente

--12
select sum(conta.saldo) as total from conta, emprestimo
	where conta.cod_conta = emprestimo.cod_conta

--13a
select max(emprestimo.valor_empr) as max_empr from emprestimo

--13b
select cliente_conta.cod_cliente, sum(conta.saldo) as saldo from cliente_conta, conta
	where conta.cod_conta=cliente_conta.cod_conta
	group by cliente_conta.cod_cliente

--13
select * from 
	(select cliente_conta.cod_cliente, sum(conta.saldo) as saldo from cliente_conta, conta
		where conta.cod_conta=cliente_conta.cod_conta
		group by cliente_conta.cod_cliente) as b
	where b.saldo > (select max(emprestimo.valor_empr) as max_empr from emprestimo)

--15
select cliente_conta.cod_cliente from conta, cliente_conta
	where conta.cod_conta=cliente_conta.cod_conta
	and conta.cod_agencia = 2


--derp
/*
select * from (select cliente_conta.cod_cliente as cod_cliente, sum(conta.saldo) as saldo, max(emprestimo.valor_empr) as max_empr from conta, emprestimo, cliente_conta
		where conta.cod_conta = emprestimo.cod_conta
		and conta.cod_conta = cliente_conta.cod_conta
		group by cliente_conta.cod_cliente) as b 
		where saldo > max_empr
		*/