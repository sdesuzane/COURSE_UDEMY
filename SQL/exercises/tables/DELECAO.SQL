-- CONTEÚDO
-- Criação de tabela a partir de uma query
-- Criação de tabela a partir do zero
-- Deleção de tabelas


-- EXEMPLOS

-- (Exemplo 1) Criação de tabela a partir de uma query
-- Crie uma tabela chamada customers_age com o id e a idade dos clientes. 
-- Chame-a de temp_tables.customers_age

select
	customer_id,
	datediff('years', birth_date, current_date) as idade_cliente
	into temp_tables.customers_age
from sales.customers

select *
from temp_tables.customers_age


-- (Exemplo 2) Criação de tabela a partir do zero
-- Crie uma tabela com a tradução dos status profissionais dos clientes. 
-- Chame-a de temp_tables.profissoes


select *
from temp_tables.profissoes

create table temp_tables.profissoes (
	professional_status varchar,
	status_profissional varchar
)

insert into temp_tables.profissoes (
	professional_status,
	status_profissional
)
values
('freelancer', 'freelancer'),
('retired', 'aposentado(a)'),
('clt', 'clt'),
('self_employed', 'autonomo'),
('other', 'outro'),
('bussinessman', 'empresario'),
('civil_servant', 'funcionario publico'),
('student', 'estudante')


-- (Exemplo 3) Deleção de tabelas
-- Delete a tabela temp_tables.profissoes


drop table temp_tables.profissoes



