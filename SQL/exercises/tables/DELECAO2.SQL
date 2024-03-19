-- CONTEÚDO
-- Inserção de linhas
-- Atualização de linhas
-- Deleção de linhas


-- EXEMPLOS

-- (Exemplo 1) Inserção de linhas
-- Insira os status 'desempregado(a)' e 'estagiário(a)' na temp_table.profissoes

create table temp_tables.profissoes (
	professional_status varchar,
	status_profissional varchar
);

insert into temp_tables.profissoes
(professional_status, status_profissional)

values
('freelancer', 'freelancer'),
('retired', 'aposentado(a)'),
('clt', 'clt'),
('self_employed', 'autônomo(a)'),
('other', 'outro'),
('businessman', 'empresário(a)'),
('civil_servant', 'funcionário público(a)'),
('student', 'estudante'),
('unemployed', 'desempregado'),
('trainee', 'estagiario')



-- (Exemplo 2) Atualização de linhas
-- Corrija a tradução de 'estagiário(a)' de 'trainee' para 'intern' 

update temp_tables.profissoes
set professional_status = 'intern'
where status_profissional = 'estagiario'

select *
from temp_tables.profissoes

-- (Exemplo 3) Deleção de linhas
-- Delete as linhas dos status 'desempregado(a)' e 'estagiário(a)'

delete from temp_tables.profissoes
where status_profissional = 'desempregado'
or status_profissional = 'estagiario'

select *
from temp_tables.profissoes

