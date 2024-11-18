-- -- create table cliente(
-- -- nome varchar(300),
-- -- cpf varchar(11) primary key,
-- -- data_nasc date,
-- -- muncipio varchar(50),
-- -- genero varchar(01),
-- -- valor_produto numeric(10,2)
-- -- );

-- -- insert into cliente
-- -- (nome, cpf, data_nasc, muncipio, genero, valor_produto)
-- -- values
-- -- ('Maria', '12345678910', '07/10/2024', 'São José', 'F', 22.50),
-- -- ('Fernanda', '12345338310', '10/10/2024', 'Florianópolis', 'F', 40.50),
-- -- ('João', '22325678910', '20/10/2024', 'Monte Castelo', 'M', 82.50);



-- select nome, substring (muncipio from 5 for 10),
-- case extract(month from data_nasc)
-- when 1 then 'Janeiro'
-- when 2 then 'Fevereiro'
-- when 3 then 'Março'
-- when 4 then 'Abril'
-- when 5 then 'Maio'
-- when 6 then 'Junho'
-- when 7 then 'Julho'
-- when 8 then 'Agosto'
-- when 9 then 'Setembro'
-- when 10 then 'Outubro'
-- when 11 then 'Novembro'
-- when 12 then 'Dezembro'
-- end as mes
-- from cliente;

-- select nome, 
-- extract(year from data_nasc) AS ano
-- from cliente;

-- select coalesce(TO_CHAR(data_nasc, 'DD/MM/YYYY'), 'Não Informado') as data_nasc
-- from cliente;

-- --5
-- SELECT UPPER(muncipio) AS municipio_maiusculo
-- FROM cliente;
-- --6
-- SELECT nome,
--        CASE
--          WHEN genero = 'M' THEN 'Masculino'
--          ELSE 'Feminino'
--        END AS genero_nome
-- FROM cliente;
-- --7
-- SELECT nome,
--        CASE
--          WHEN valor_produto > 500 THEN 'Acima de 500'
--          ELSE 'Abaixo de 500'
--        END AS valor_classificacao
-- FROM cliente;
