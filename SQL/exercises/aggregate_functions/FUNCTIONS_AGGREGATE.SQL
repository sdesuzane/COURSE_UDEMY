-- Servem para executar operações aritmética nos registros de uma coluna 

-- COUNT()
-- SUM()
-- MIN()
-- MAX()
-- AVG()


-- EXEMPLOS

-- COUNT() -------------------------------------------------------------------------

-- (Exemplo 1) Contagem de todas as linhas de uma tabela
-- Conte todas as visitas realizadas ao site da empresa fictícia

select count(*)
from sales.customers

-- (Exemplo 2) Contagem das linhas de uma coluna
-- Conte todos os pagamentos registrados na tabela sales.funnel 

select count(paid_date)
from sales.funnel


-- (Exemplo 3) Contagem distinta de uma coluna
-- Conte todos os produtos distintos visitados em jan/21

select count(distinct product_id)
from sales.funnel
where visit_page_date between '2021-01-01' and '2021-01-31'

-- OUTRAS FUNÇÕES ------------------------------------------------------------------

-- (Exemplo 4) Calcule o preço mínimo, máximo e médio dos productos da tabela products

select min(price), max(price), avg(price)
from sales.products

-- (Exemplo 5) Informe qual é o veículo mais caro da tabela products

select *
from sales.products
where price = (select max(price) from sales.products)






