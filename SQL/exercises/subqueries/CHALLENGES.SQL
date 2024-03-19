-- EXERCÍCIOS

-- (Exercício 1) Crie uma coluna calculada com o número de visitas realizadas por cada
-- cliente da tabela sales.customers

with coluna_calculada as (
	select
		customer_id, count(*) as calc_visitas
	from sales.funnel
	group by customer_id
)

select
	cus.*,
	colum_calc.calc_visitas
from sales.customers as cus
left join coluna_calculada as colum_calc
	on cus.customer_id = colum_calc.customer_id