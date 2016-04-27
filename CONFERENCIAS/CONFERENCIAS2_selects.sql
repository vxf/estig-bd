select nome_aut, e_mail, titulo_art
	from artigos, autores
	where artigos.nrartg = autores.nrartg

select nome_aval, nota from avaliadores, notas, artigos
	where avaliadores.nraval=notas.nraval and
	artigos.nrartg=notas.nrartg and
	artigos.titulo_art='A importância das TICs'

select artigos.titulo_art, AVG(nota) as nota_max from artigos, notas
	where artigos.nrartg=notas.nrartg
	group by artigos.titulo_art