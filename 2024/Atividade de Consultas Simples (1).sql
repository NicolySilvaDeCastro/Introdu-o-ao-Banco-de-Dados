-- 1
-- select nome from vendedor
-- order by nome, nome ASC

-- 2
-- select nome, valor from produto
-- where valor > 200
-- order by valor asc;

-- 3 
-- select nome, valor, valor * 1.1 as valor_reajustado 
-- from produto order by produto asc;

-- 4
-- select nome from municipio
-- where iduf = 5

-- 5
-- select data_pedido from pedido
-- where data_pedido between '2008-04-10' and '2008-04-10'
-- order by data_pedido desc;

-- 6
-- select valor from pedido
-- where valor between '1000' and '1500'
-- order by valor desc;

-- 7
-- select valor from pedido
-- where valor not between '100' and '500'
-- order by valor desc;

-- 8
-- select * from pedido
-- where idvendedor = 1
-- order by valor desc;

--  9
-- select * from pedido
-- where idcliente = 1
-- order by valor asc;

-- 10
-- select * from pedido
-- where idvendedor = 1 and idcliente = 15
-- order by valor desc;

-- 11
-- select * from pedido
-- where idtransportadora = 2;

-- 12
-- select * from pedido
-- where idvendedor = 5 or idvendedor = 7;

-- 13
-- select * from cliente
-- where idmunicipio = 1 or idmunicipio = 2;

-- 14 
-- select * from cliente 
-- where idmunicipio NOT IN (1, 2);

-- 15
-- select * from cliente
-- where logradouro is null

-- 16
-- select * from cliente
-- where logradouro like 'Av%';

-- 17
-- select * from vendedor
-- where nome like 'S%';

-- 18
-- select * from vendedor
-- where nome like '%a';

-- 19
-- select * from vendedor
-- where nome not like 'A%';

-- 20
-- select * from municipio
-- where nome like 'P%' and iduf = 1;

-- 21 (fornecedor = cliente) 
-- select * from cliente
-- where logradouro is not null 
-- and idcomplemento is not null
-- and idbairro is not null 
-- and idmunicipio is not null  

-- 22 
-- select Produto.nome, Pedido.idpedido from Produto, Pedido 
-- where Pedido.idpedido = 1;

-- 23
-- select Produto.nome, Pedido.idpedido from Produto, Pedido 
-- where Pedido.idpedido in (6, 10);







--Questões que eu tive que pesquisar como fazia -_- : 
-- 3, 14, 15, 21, 22 e 23





