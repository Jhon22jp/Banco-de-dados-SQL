/*----------------------------------------------------------(ATIVIDADE2)----------------------------------------------------------------*/
 
 /*Crie um stored procedure que receba id de cliente, data inicial e data final e que mostre a lista de compras
 realizadas pelo referido cliente entre as datas informadas (incluindo essas datas), mostrando nome do cliente,
 id da compra, total, nome e quantidade de cada produto comprado. No script, inclua o código de criação e uma chamada ao procedure.*/
 
 
 	select
    I.venda_id as 'Venda',
    V.data as 'Data inicio',
    V.data_pagamento as 'Data Final',
    C.nome as 'Nome Cliente',
    I.nome_produto as 'Produto',
    I.subtotal as 'Total'
    
    from venda as V inner join cliente as C ON (V.id = C.id)
    inner join item_venda as I
    
	where C.id = 1/*Estou Com duvida como eu faço para filtra entre as data de inicio é final*/;
 
 
 
 
 
 
 
 
 


	