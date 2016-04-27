insert into agencia
	values (1, 'RUA AFONSO II', 'BEJA', '7800-234'),
	(2, 'RUA D.MANUEL', 'BEJA', '7800-123'),
	(3, 'RUA AFONSO II', 'SERPA', '7800-987'),
	(4, 'RUA DO VALE', 'FERREIRA DO ALENTEJO', '7200-567')

insert into clientes
	values(1, 'ELSA RODRIGUES', 'RUA AAA', 'BEJA', '7800-502', '967865439', 'elsa.rodrigues@ipbeja.pt'),
	(2, 'MARIA DO ROSÁRIO', 'RUA BBB', 'BEJA', '7800-124', '912345678', 'maria123@hotmail.com'),
	(3, 'JOAQUIM MARIA', 'RUA CCC', 'SERPA', '7800-345', '912356789', NULL),
	(4, 'RITA FERRO', 'RUA BBB', 'LISBOA', '2130-345', '914578954', NULL)

insert into tipo_conta
	values(1, 'ORDEM'),
	(2, 'PRAZO')

insert into tipo_movimento
	values(1, 'TRANSFERÊNCIA'),
	(2, 'PAGAMENTO MULTIBANCO'),
	(3, 'DEPOSITO')

insert into conta
	values(1, '2015-01-12', 300.0000, 1, 1),
	(2, '2015-01-12', 1200.0000, 2, 2),
	(3, '2015-01-15', 6908.0000, 1, 1),
	(4, '2015-02-01', 876.0000, 3, 1),
	(5, '2015-02-14', 5467.0000, 4, 2),
	(6, '2015-02-15', 45678.0000, 4, 2),
	(7, '2015-02-17', 6754.0000, 4, 1)

insert into emprestimo
	values(1, '2015-03-12', 4000.00, 12.00, 12, NULL, 1, 1),
	(2, '2015-03-24', 34562.00, 6.00, 10, NULL, 2, 2),
	(3, '2015-04-01', 78694.00, 4.50, 22, NULL, 4, 5),
	(4, '2015-03-22', 87876.00, 4.50, 22, NULL, 4, 6)

insert into cliente_conta
	values(1, 1, 1),
	(2, 1, 2),
	(3, 2, 3),
	(4, 3, 4),
	(5, 1, 5),
	(6, 4, 6),
	(7, 4, 7)

insert into movimento_conta
	values(1, '2015-10-09', 100.0000, 1, 1, 1),
	(2, '2015-11-09', 50.0000, 2, 1, 1)

