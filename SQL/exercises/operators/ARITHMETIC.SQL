-- Servem para executar operações matemáticas
-- Muito utilizados para criar colunas calculadas

-- +
-- -
-- *
-- /
-- ^
-- %
-- || --> não é um operador aritmético


-- EXEMPLOS

-- (Exemplo 1) Criação de coluna calculada
-- Crie uma coluna contendo a idade do cliente da tabela sales.customers

select
email,
birth_date,
(current_date - birth_date) / 365 as idade_cliente
from sales.customers

-- (Exemplo 2) Utilização da coluna calculada nas queries
-- Liste os 10 clientes mais novos da tabela customers

select
email,
birth_date,
(current_date - birth_date) / 365 as idade_cliente
from sales.customers
order by idade_cliente
limit 10

-- (Exemplo 3) Criação de coluna calculada com strings 
-- Crie a coluna "nome_completo" contendo o nome completo do cliente

select
first_name || ' ' || last_name as nome_completo 
from sales.customers
--OR
select concat(first_name, last_name) as nome_completo
from sales.customers
