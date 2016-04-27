select nome_fornecedor from fornecedores, encomendas, items
	where encomendas.nr_encomenda = items.nr_encomenda
	and fornecedores.nr_fornecedor = encomendas.nr_fornecedor
	and items.nr_produto = 3

select fornecedores.nr_fornecedor, fornecedores.nome_fornecedor, encomendas.data_encomenda from fornecedores, encomendas
	where fornecedores.nr_fornecedor = encomendas.nr_fornecedor
	group by fornecedores.nr_fornecedor, fornecedores.nome_fornecedor, encomendas.data_encomenda
	having count(encomendas.nr_encomenda) > 1

select fornecedores.nr_fornecedor, fornecedores.nome_fornecedor, encomendas.data_encomenda from fornecedores, encomendas
	where fornecedores.nr_fornecedor = encomendas.nr_fornecedor

select data_encomenda from encomendas
	where nr_encomenda = 3

select encomendas.nr_encomenda, sum(produtos.preco_produto*items.unidades_item) from encomendas, produtos, items
	where encomendas.nr_encomenda = items.nr_encomenda
	and produtos.nr_produto = items.nr_produto
	group by encomendas.nr_encomenda

select sum(produtos.preco_produto*items.unidades_item) from encomendas, produtos, items
	where encomendas.nr_encomenda = items.nr_encomenda
	and produtos.nr_produto = items.nr_produto

select produtos.preco_produto, items.unidades_item*produtos.preco_produto*(1.0-items.desconto) from produtos, items
	where produtos.nr_produto = items.nr_produto
