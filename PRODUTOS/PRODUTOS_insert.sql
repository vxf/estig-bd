insert into fornecedores
  values(1, 'Auchan', 'rue de la vie', 'França', '12345gh'),
  (2, 'Marco', 'rua maria pia', 'Lisboa - Portugal', '675tgfsse'),
  (3, 'Jumbo' ,'ruth adfres', 'Alemanha', 'iut65fds'),
  (4, 'Continente', 'rua aaa', 'Portugal', 'mnbg453')

insert into produtos
  values(1, 'batatas',2.4, 1),
  (2, 'morangos',2.5, 2),
  (3, 'leite', 0.85,3),
  (4, 'queijo flamengo', 3.45,4),
  (5, 'pão', 1.80, 2)

insert into encomendas
  values(1, '2014-12-08', 1),
  (2, '2014-12-08', 2),
  (3, '2014-09-06', 1),
  (4, '2014-12-12', 2),
  (5, '2014-12-12', 4)

insert into tipos
  values(1, 'Retalho'),
  (2, 'Venda Direta')
  
insert into items
  values(1, 4, 10),
  (2, 1, 20),
  (2, 4, 15),
  (3, 2, 20),
  (3, 3, 10),
  (3, 4, 10),
  (4, 2, 10),
  (4, 3, 15),
  (4, 4, 10),
  (4, 5, 4),
  (5, 4, 40)

insert into tipos_fornecedores
	values(1, 1),
	(2, 2),
	(3, 1),
	(4, 2),
	(1, 2),
	(4, 1)