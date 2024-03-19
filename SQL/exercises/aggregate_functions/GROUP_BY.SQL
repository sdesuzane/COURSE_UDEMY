-- Serve para agrupar registros semelhantes de uma coluna
-- Normalmente utilizado em conjunto com as Funções de agregação


-- EXEMPLOS

-- (Exemplo 1) Contagem agrupada de uma coluna
-- Calcule o nº de clientes da tabela customers por estado

select state, count(*)
from sales.customers
group by state


-- (Exemplo 2) Contagem agrupada de várias colunas
-- Calcule o nº de clientes por estado e status profissional 

select state, professional_status, count (*) as contagem
from sales.customers
group by state, professional_status
order by contagem desc

-- (Exemplo 3) Seleção de valores distintos
-- Selecione os estados distintos na tabela customers utilizando o group by

select state
from sales.customers
group by state
order by 1


