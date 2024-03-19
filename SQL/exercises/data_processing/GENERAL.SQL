-- TIPOS
-- CASE WHEN
-- COALESCE()


-- EXEMPLOS

-- (Exemplo 1) Agrupamento de dados com CASE WHEN
-- Calcule o nº de clientes que ganham abaixo de 5k, entre 5k e 10k, entre 10k e 
-- 15k e acima de 15k

with faixa_de_renda as (
select 
	income,
	case
		when income < 5000 then '0-5000'
		when income >= 5000 and income < 10000 then '5000-10000'
		when income >= 10000 and income < 150000 then '10000-15000'
		else '15000+'
		end as faixa_renda
from sales.customers
)
select faixa_renda, count(*)
from faixa_de_renda
group by faixa_renda

-- (Exemplo 2) Tratamento de dados nulos com COALESCE
-- Crie uma coluna chamada populacao_ajustada na tabela temp_tables.regions e
-- preencha com os dados da coluna population, mas caso esse campo estiver nulo, 
-- preencha com a população média (geral) das cidades do Brasil

--opção com CASE WHEN:
select
	*,
	case
		when population is not null then population
		else (
			select avg(population) from temp_tables.regions
		)
		end as populacao_ajustada

from temp_tables.regions
where population is null

--opção com COALESCE
select
	*,
	coalesce (population, (select avg(population) from temp_tables.regions)) as populacao_ajustada

from temp_tables.regions

