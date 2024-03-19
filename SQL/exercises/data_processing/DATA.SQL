-- TIPOS
-- INTERVAL
-- DATE_TRUNC
-- EXTRACT
-- DATEDIFF


-- EXEMPLOS

-- (Exemplo 1) Soma de datas utilizando INTERVAL
-- Calcule a data de hoje mais 10 unidades (dias, semanas, meses, horas)

select current_date + 10
select current_date + interval '10 weeks' e select (current_date + interval '10 weeks')::date
select (current_date + interval '10 months')::date
select current_date + interval '10 hours'


-- (Exemplo 2) Truncagem de datas utilizando DATE_TRUNC
-- Calcule quantas visitas ocorreram por mês no site da empresa

select visit_page_date, count(*)
from sales.funnel
group by visit_page_date
order by visit_page_date desc

select
	visit_page_date,
	date_trunc('month', visit_page_date)::date
from sales.funnel

resolucao:
select
	date_trunc('month', visit_page_date)::date as visit_page_month,
	count(*)
from sales.funnel
group by visit_page_month
order by visit_page_month desc

-- (Exemplo 3) Extração de unidades de uma data utilizando EXTRACT
-- Calcule qual é o dia da semana que mais recebe visitas ao site

select
	'2022-01-30'::date

select
	current_date,
	extract('dow' from current_date)

resolucao:
select
	extract('dow' from visit_page_date) as dia_da_semana,
	count(*)
from sales.funnel
group by dia_da_semana
order by dia_da_semana

-- (Exemplo 4) Diferença entre datas com operador de subtração (-) 
-- Calcule a diferença entre hoje e '2018-06-01', em dias, semanas, meses e anos.

select current_date - '2018-06-01' --day
select (current_date - '2018-06-01')/7 --weeks
select (current_date - '2018-06-01')/30 --month
select (current_date - '2018-06-01')/365 --year
