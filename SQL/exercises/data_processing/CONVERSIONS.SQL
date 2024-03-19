-- TIPOS DE CONVERSÃO
-- Operador ::
-- CAST

-- EXEMPLOS

-- (Exemplo 1) Conversão de texto em data
-- Corrija a query abaixo utilizando o operador ::
select '2021-10-01'::date - '2021-02-01'::date


-- (Exemplo 2) Conversão de texto em número
-- Corrija a query abaixo utilizando o operador ::
select '100'::numeric - '10'::numeric


-- (Exemplo 3) Conversão de número em texto
-- Corrija a query abaixo utilizando o operador ::
select replace(112122::text,'1','A')


-- (Exemplo 4) Conversão de texto em data
-- Corrija a query abaixo utilizando a função CAST
select cast('2021-10-01' as date) - cast ('2021-02-01' as date)
