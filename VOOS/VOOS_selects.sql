--1.
select matricula from avioes, marcas where avioes.nr_marca=marcas.nr_marca and marcas.autonomia >= 10000

--2.
select pilotos.nomeP from marcas, avioes, voos, comandantes, pilotos
	where pilotos.nr_piloto=comandantes.nr_piloto
	and comandantes.nr_voo=voos.nr_voo
	and avioes.matricula=voos.matricula
	and marcas.nr_marca=avioes.nr_marca
	and marcas.nome_marca ='Boeing'
	and avioes.nome = '767'

--3.
select pilotos.nomeP from marcas, avioes, voos, comandantes, pilotos
	where pilotos.nr_piloto=comandantes.nr_piloto
	and comandantes.nr_voo=voos.nr_voo
	and avioes.matricula=voos.matricula
	and marcas.nr_marca=avioes.nr_marca

--4.
select nomeP, count(pilotos.nr_piloto) as voos_piloto from pilotos, comandantes, voos
	where comandantes.nr_voo=voos.nr_voo
	and pilotos.nr_piloto=comandantes.nr_piloto
	group by pilotos.nomeP, pilotos.nr_piloto

--5.
select top(1) nomeP, count(pilotos.nr_piloto) as voos_piloto from pilotos, comandantes, voos
	where comandantes.nr_voo=voos.nr_voo
	and pilotos.nr_piloto=comandantes.nr_piloto
	group by pilotos.nomeP, pilotos.nr_piloto
	order by voos_piloto desc

--6.
select top(1) nome_marca from marcas
	order by lugares desc

--7.
SELECT avioes.nome, COUNT(pilotos.nr_piloto)
	FROM avioes, voos, comandantes, pilotos
	WHERE (avioes.matricula = voos.matricula)
	AND (voos.nr_voo = comandantes.nr_voo)
	and pilotos.nr_piloto=comandantes.nr_piloto
	GROUP BY avioes.nome

select nomeP, count(pilotos.nr_piloto) as voos_piloto from pilotos, comandantes, voos
	where comandantes.nr_voo=voos.nr_voo
	and pilotos.nr_piloto=comandantes.nr_piloto
	group by pilotos.nomeP, pilotos.nr_piloto

select count(matricula) from voos

select avioes.nome, avioes.matricula, count(voos.nr_voo) as nr_voos from avioes, voos 
	where avioes.matricula=voos.matricula
	group by avioes.nome, avioes.matricula

select avioes.nome, avioes.matricula, marcas.nome_marca, count(voos.nr_voo) from marcas, avioes, voos
	where marcas.nr_marca=avioes.nr_marca
	and voos.matricula=avioes.matricula
	and (voos.destino='Lisboa' or voos.partida='Lisboa')
	group by avioes.nome, avioes.matricula, marcas.nome_marca

select count(nr_voo) from voos
	where '2014-01-01' <= data and data <= '2014-12-31'