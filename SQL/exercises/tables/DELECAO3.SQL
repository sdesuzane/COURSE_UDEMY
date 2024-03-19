-- CONTEÚDO
-- Inserção de colunas
-- Alteração de colunas
-- Deleção de colunas


-- EXEMPLOS

-- (Exemplo 1) Inserção de Colunas
-- Insira uma coluna na tabela sales.customers com a idade do cliente

alter table sales.customers
add customer_age int

select * from sales.customers limit 10

update sales.customers
set customer_age = datediff('years', birth_date, current_date)
where true

-- (Exemplo 2) Alteração do tipo da coluna
-- Altere o tipo da coluna customer_age de inteiro para varchar

alter table sales.customers
alter column customer_age type varchar

select * from sales.customers limit 10

-- (Exemplo 3) Alteração do nome da coluna
-- Renomeie o nome da coluna "customer_age" para "age"

alter table sales.customers
rename column customer_age to age

select * from sales.customers limit 10

-- (Exemplo 4) Deleção de coluna
-- Delete a coluna "age"

alter table sales.customers
drop column age

select * from sales.customers limit 10