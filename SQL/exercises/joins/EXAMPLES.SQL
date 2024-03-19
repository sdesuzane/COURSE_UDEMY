-- EXERCÍCIOS

-- (Exemplo 1) Identifique qual é o status profissional mais frequente nos clientes 
-- que compraram automóveis no site

select *
from sales.customers;
-- professional_status
--customer_id

select *
from sales.funnel;
--customer_id
-- paid_date

	select
	c.professional_status,
	count(f.paid_date) as pagamentos
	from sales.funnel as f
	left join sales.customers as c
	on f.customer_id = c.customer_id
	group by c.professional_status
	order by pagamentos desc

-- (Exemplo 2) Identifique qual é o gênero mais frequente nos clientes que compraram
-- automóveis no site. Obs: Utilizar a tabela temp_tables.ibge_genders
select * from temp_tables.ibge_genders limit 10;

select 
ibge.gender,
count(f.paid_date) as contagem
from sales.funnel as f
left join sales.customers as c
on f.customer_id = c.customer_id
left join temp_tables.ibge_genders as ibge
on lower (c.first_name) = ibge.first_name
group by 1
order by 2 desc

-- (Exemplo 3) Identifique de quais regiões são os clientes que mais visitam o site
-- Obs: Utilizar a tabela temp_tables.regions
select * from sales.customers limit 10;
select * from temp_tables.regions limit 10;

select 
reg.region,
count(f.visit_page_date) as visitas
from sales.funnel as f
left join sales.customers as c
on f.customer_id = c.customer_id
left join temp_tables.regions as reg
on lower (c.city) = lower(reg.city)
and lower (c.state) = lower (reg.state)
group by reg.region
order by visitas desc
