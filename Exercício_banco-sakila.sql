/*select * from pais;	Exercício 1

SELECT COUNT(*) AS quantidade_paises 	Exercício 2
FROM pais;

SELECT COUNT(*) AS quantidade_paises 
FROM pais 		Exercício 3
WHERE pais LIKE '%A';

SELECT DISTINCT YEAR(ano_de_lancamento) AS ano 	Exercício 4
FROM filme;

select * from filme; update filme set ano_de_lancamento = 2007 where titulo like 'B%';	Exercício 5

select titulo, duracao_do_filme, classificacao from filme where duracao_do_filme > 100 and classificacao like 'G';Exercício 6

update filme set ano_de_lancamento = 2008 
where duracao_da_locacao < 4 
and classificacao = 'PG';		Exercício 7
set sql_safe_updates=0;*/

/*select ano_de_lancamento, duracao_da_locacao from filme;
update filme
set ano_de_lancamento = 2007        Exercício 8
where titulo like 'B%'*/


/*select ano_de_lancamento, duracao_da_locacao from filme;

SET SQL_SAFE_UPDATES = 0;
                                                                  Exercício 9
update filme
set ano_de_lancamento = 2008
where duracao_da_locacao < 4 and classificacao = 'PG';*/

/*select idioma_id , nome from idioma filme;
select preco_da_locacao, idioma_id from filme;

SET SQL_SAFE_UPDATES = 0;           Exercício 10

update filme 
set idioma_id = 6
where preco_da_locacao > 4;*/

/*select idioma_id , nome from idioma filme;
select preco_da_locacao, idioma_id from filme;

SET SQL_SAFE_UPDATES = 0;          
								   Exercício 11
update filme 
set idioma_id = 3
where preco_da_locacao = 0.99;*/

/*select distinct preco_da_locacao 
from filme   Exercício 13*/

/*select preco_da_locacao, 
count(*) from filme          Exercício 14
group by preco_da_locacao;*/

/*select preco_da_locacao from filme 
group by preco_da_locacao > 340;     Exercício 15*/

/*select filme_id, count(ator_id) as ator 
from filme_ator              
group by filme_id                  Exercício 16
order by ator asc;*/

/*select filme_id, count(ator_id) as ator 
from filme_ator  
group by filme_id           Exercício 17
having ator > 5  
order by ator desc;*/

/*select f.titulo, count(a.ator_id)
from filme f, ator a, filme_ator fa, idioma i
where i.idioma_id = f.idioma_id
and f.filme = fa.filme_id
and a.ator_id = fa.ator_id				Exercício 18
and i.nome = 'JAPANESE'
GROUP BY f.titulo
having count(a.ator_id) > 10
order by f.titulo asc*/

/*select max(duracao_da_locacao) from filme		Exercício 19*/

/*select count(duracao_da_locacao) from filme where duracao_da_locacao = 7;			Exercício 20*/

/*select count(duracao_da_locacao) from  filme 
where idioma_id = 3 and duracao_da_locacao = 7 			Exercício 21
or idioma_id = 6 and duracao_da_locacao = 7;*/

/*select classificacao, preco_da_locacao, count(titulo) from filme
group by classificacao, preco_da_locacao;		Exercício 22*/

/*select max(duracao_do_filme), categoria_id from filme_categoria, filme 
group by categoria_id			Exercício 23*/

/*select classificacao, count(titulo) from filme
group by classificacao, preco_da_locacao;		Exercício 24*/

/*select count(f.titulo), c.nome from filme as f, categoria c, filme_categoria fc
where f.classificacao = 'G' and f.filme_id = fc.filme_id
and fc.categoria_id= c.categoria_id						Exercício 25
group by c.categoria_id*/

/*select count(f.titulo), c.nome from filme as f, categoria c, filme_categoria fc
where f.classificacao = "G" or f.classificacao = 'PG' and f.filme_id = fc.filme_id
and fc.categoria_id= c.categoria_id						Exercício 26
group by c.categoria_id*/

/*select f.classificacao, fc.categoria_id, count(*) 
as quantidade_filmes from filme f, filme_categoria fc 	Exercício 27
where f.filme_id = fc.filme_id
group by f.classificacao, fc.categoria_id;*/
/*select ator_id, count(filme_id) as filmes 
from filme_ator              

group by ator_id      		Exercício 28   
order by filmes desc;*/

/*select ano_de_lancamento, count(filme_id) as Filme from filme
group by ano_de_lancamento			Exercício 29
order by ano_de_lancamento asc*/

/*select f.ano_de_lancamento, count(f.titulo) from filme f,categoria c, filme_categoria fc 
where f.preco_da_locacao > 2.98 and f.filme_id = fc.filme_id and fc.categoria_id= c.categoria_id and nome="Children" 
group by f.ano_de_lancamento 		Exercício 31
having count(f.titulo) > 100 ;*/

/*select pais, cidade from pais banana, cidade c
where pais like 'a%' and banana.pais_id = c.pais_id		Exercício 32*/
 
/*select p.pais_id, p.pais, count(c.cidade)
from pais p, cidade c
where p.pais_id = c.pais_id			Exercício 33
group by c.pais_id
order by 3 desc*/
 
/*select p.pais_id, p.pais, count(c.cidade)
from pais p, cidade c
where c.cidade like "a%" and p.pais_id = c.pais_id		Exercício 34
group by c.pais_id
order by 3*/

/*select pais_id, count(cidade_id) total_cidade from cidade
where cidade like 'a%'
group by pais_id				Exercício 35
having count(cidade_id) > 3; */

/*select pais_id, count(cidade_id) total_cidade from cidade
where cidade like 'a%' or cidade like '%r%'
group by pais_id				Exercício 36	
having count(cidade_id) > 3;*/ 

/*select primeiro_nome, ultimo_nome, pais from cliente, endereco, cidade, pais		Exercício 37 
where cliente.endereco_id = endereco.endereco_id and endereco.cidade_id = cidade.cidade_id and cidade.pais_id = pais.pais_id and pais.pais = 'United States'*/

/*select count(cliente_id) Clientes, pais from cliente, endereco, cidade, pais		Exercício 38
where cliente.endereco_id = endereco.endereco_id and endereco.cidade_id = cidade.cidade_id and cidade.pais_id = pais.pais_id and pais.pais = 'Brazil'*/

/*select pais.pais, count(cliente.cliente_id) total_cliente from cliente, endereco, cidade, pais
where cliente.endereco_id = endereco.endereco_id and endereco.cidade_id = cidade.cidade_id and cidade.pais_id = pais.pais_id		Exercício 39
group by pais.pais*/

/*select pais.pais, count(cliente.cliente_id) total_cliente from cliente, endereco, cidade, pais
where cliente.endereco_id = endereco.endereco_id and endereco.cidade_id = cidade.cidade_id and cidade.pais_id = pais.pais_id		Exercício 40
group by pais.pais having count(total_cliente) > 10*/

/*select avg(duracao_do_filme) media_duracao from filme
group by idioma_id			Exercício 41
order by media_duracao*/

/*select count(a.ator_id), f.titulo from ator a, filme f, filme_ator fa, idioma i
where i.idioma_id = f.idioma_id 
and f.filme_id = fa.filme_id 
and a.ator_id = fa.ator_id		Exercício 42
and i.nome = 'English'
group by f.titulo*/

/*select a.primeiro_nome, a.ultimo_nome from filme f, filme_ator fa, ator a
where f.filme_id = fa.filme_id
and a.ator_id = fa.ator_id				Exercício 43
and f.titulo = 'Blanket Beverly'*/

/*select c.nome, count(f.filme_id) from categoria c, filme f, filme_categoria fca
where c.categoria_id = fca.categoria_id
and f.filme_id = fca.filme_id			Exercício 44
group by c.categoria_id
having count(f.filme_id) > 60*/

/*select distinct f.titulo from filme f, aluguel a, inventario i, cliente cl, endereco e, cidade c, pais p
where f.filme_id = i.filme_id and a.inventario_id = i.inventario_id and a.cliente_id = cl.cliente_id and		Exercício 45
cl.endereco_id = e.endereco_id and e.cidade_id = c.cidade_id and c.pais_id = p.pais_id and p.pais_id = 6*/

/*select count(*) AS quantidade_alugueis from cliente c, endereco e, cidade ci, pais p, aluguel a, inventario i, filme f
where c.endereco_id = e.endereco_id and e.cidade_id = ci.cidade_id and ci.pais_id = p.pais_id		Exercício 46
and p.pais = 'Chile' and c.cliente_id = a.cliente_id and a.inventario_id = i.inventario_id
and i.filme_id = f.filme_id;*/

/*select a.funcionario_id, count(*) Alugueis from aluguel a		Exercício 47
group by a.funcionario_id;*/

/*select a.funcionario_id, fc.categoria_id, count(*) Alugueis from aluguel a, inventario i, filme_categoria fc
where a.inventario_id = i.inventario_id			Exercício 48
and i.filme_id = fc.filme_id
group by a.funcionario_id, fc.categoria_id;*/

/*select f.titulo from filme f		Exercício 49
where f.preco_da_locacao > (select avg(preco_da_locacao) from filme);*/


/*select c.categoria_id, sum(f.duracao_do_filme) total_de_duracao
from filme f, filme_categoria fca, categoria c
where f.filme_id = fca.filme_id			Exercício 50
and fca.categoria_id = c.categoria_id
group by c.categoria_id;*/

/*select year (a.data_de_aluguel) ano,
month(a.data_de_aluguel) mes,
count(*) AS quantidade_de_filmes
from aluguel a		Execício 51
group by ano, mes
order by ano, mes;*/

/*select f.classificacao, sum(p.valor) AS total_pago
from filme f, aluguel a, pagamento p, inventario i
where a.inventario_id = i.inventario_id
and i.filme_id = f.filme_id			Exercício 52
and a.aluguel_id = p.aluguel_id
and year(a.data_de_aluguel) = 2006
group by f.classificacao;*/

/*select month(a.data_de_aluguel) as mes, avg(p.valor) as media_valor_pago
FROM filme f, inventario i, aluguel a, pagamento p
WHERE f.filme_id = i.filme_id
and i.inventario_id = a.inventario_id		Exercício 53
and a.aluguel_id = p.aluguel_id
and year (a.data_de_aluguel) = 2005
group by month(a.data_de_aluguel);*/

/*select c.cliente_id, sum(p.valor) AS total_pago
from cliente c, aluguel a, pagamento p, inventario i, filme f
where a.cliente_id = c.cliente_id
and a.aluguel_id = p.aluguel_id
and a.inventario_id = i.inventario_id		Exercício 54
and i.filme_id = f.filme_id
and month(a.data_de_aluguel) = 6
and year(a.data_de_aluguel) = 2006
group by c.cliente_id;*/
