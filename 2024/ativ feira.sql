-- SELECT p.*, -- 2 foi
--        (SELECT AVG(valor) FROM pedido) AS media_geral
-- FROM pedido p
-- WHERE p.valor < (SELECT AVG(valor) FROM pedido); 

-- select ped.data_pedido, ped.valor, ped.idcliente, ped.idvendedor --3 foi
-- from pedido ped where (select count(pdp.idproduto) 
-- from pedido_produto pdp where pdp.idpedido = ped.idpedido) >= 2;

-- SELECT --4 foi
--     c.nome, 
--     c.idmunicipio
-- FROM 
--     cliente c
-- JOIN 
--     transportadora t ON c.idmunicipio = t.idmunicipio
-- WHERE 
--     t.nome = 'BSTransportes';

-- select nome, idmunicipio from cliente --5 foi
-- where idmunicipio in (select idmunicipio from transportadora
-- where idmunicipio = 9 or idmunicipio = 5);	

-- select valor, valor * 1.05 as valor_ajustado --6 foi
-- from pedido
-- where valor > (select avg(valor)
-- from pedido
--  );

-- select cliente.nome, (select count(*) from pedido --7 foi
-- where pedido.idcliente = cliente.idcliente) as quantidade_pedidos
-- from cliente;

-- select cliente.nome from cliente -- 8 foi
-- where cliente.idcliente in(select pedido.idcliente from pedido
-- group by pedido.idcliente);

