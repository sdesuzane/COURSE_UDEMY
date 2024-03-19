-- Serve para filtrar linhas de acordo com uma condição


-- SINTAXE
select coluna_1, coluna_2, coluna_3
from schema_1.tabela_1
where condição_x=true


-- EXEMPLOS

-- (Exemplo 1) Filtro com condição única
-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina

select email
from sales.customers
where state = 'SC'

-- (Exemplo 2) Filtro com mais de uma condição
-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina
-- ou Mato Grosso do Sul

select email
from sales.customers
where state = 'SC' or state = 'MS'

-- (Exemplo 3) Filtro de condição com data
-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina 
-- ou Mato Grosso do Sul e que tem mais de 30 anos

select email, birth_date
from sales.customers
where (state = 'SC' or state = 'MS') and birth_date < '1994-01-01'
