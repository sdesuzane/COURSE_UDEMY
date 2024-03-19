-- Serve para filtrar linhas da seleção por uma coluna agrupada


-- EXEMPLOS

-- (Exemplo 1) seleção com filtro no HAVING 
-- Calcule o nº de clientes por estado filtrando apenas estados acima de 100 clientes

select state, count(*)
from sales.customers
group by state
having count (*) > 100







