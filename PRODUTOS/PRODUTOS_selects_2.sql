select fornecedores.nome_fornecedor, sum(produtos.preco_produto*items.unidades_item) as total from fornecedores, encomendas, produtos, items
	where encomendas.nr_encomenda = items.nr_encomenda
	and produtos.nr_produto = items.nr_produto
	and encomendas.nr_fornecedor = fornecedores.nr_fornecedor
	group by fornecedores.nome_fornecedor

select top(1) fornecedores.nome_fornecedor, sum(produtos.preco_produto*items.unidades_item) as total from fornecedores, encomendas, produtos, items
	where encomendas.nr_encomenda = items.nr_encomenda
	and produtos.nr_produto = items.nr_produto
	and encomendas.nr_fornecedor = fornecedores.nr_fornecedor
	group by fornecedores.nome_fornecedor
	order by total DESC

select max(total) as max_total
	from(
	select fornecedores.nome_fornecedor as nome, sum(produtos.preco_produto*items.unidades_item) as total from fornecedores, encomendas, produtos, items
		where encomendas.nr_encomenda = items.nr_encomenda
		and produtos.nr_produto = items.nr_produto
		and encomendas.nr_fornecedor = fornecedores.nr_fornecedor
		group by fornecedores.nome_fornecedor
		) as totais_fornecedores