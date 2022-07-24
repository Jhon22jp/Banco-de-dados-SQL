USE super;

/*Para listar todas as informações que constam nas colunas da tabela de produtos,
 utilize a seguinte instrução:*/
SELECT * FROM Produtos;


/*colunas específicas da(s) tabela(s) pesquisada(s)*/
SELECT nomeProduto, valorVendaProduto FROM Produtos;


/*Para listar produto com WHERE. especificando o nome do produto*/
SELECT * FROM Produtos WHERE nomeProduto='Leite';


/*Para retornar apenas as colunas nomeProduto e valorVendaProduto,
 com base nos mesmos critérios mencionados, use a seguinte instrução:*/
 SELECT nomeProduto, valorVendaProduto FROM Produtos WHERE nomeProduto='Leite';
 
 
 /* utilizar o operador <> para comparar diferenças.
 irar mostra todos os produtos aonde a cadegoriaProduto é diferente de (Mercearia)*/
 SELECT nomeProduto, categoriaProduto, valorVendaProduto FROM Produtos WHERE categoriaProduto <> 'Mercearia';
 
 
 /*Para consultar produtos em que o valor de venda (valorVendaProduto) seja, por exemplo,
 1.50 e a quantidade (quantidadeProduto) seja 200, pode-se usar o operador AND na cláusula WHERE.*/
 SELECT * FROM Produtos WHERE valorVendaProduto = 1.50 AND quantidadeProduto = 200;
 
 
 /*Produtos da categoria “limpeza” ou com valor de venda de 5.50*/
 SELECT * FROM Produtos WHERE categoriaProduto = 'Limpeza' OR valorVendaProduto = 5.50;
 
 
 /*Produtos da categoria “limpeza” ou “mercearia” e com valor de 6.50 independentemente da categoria*/
 SELECT * FROM Produtos WHERE (categoriaProduto ='Limpeza' or categoriaProduto='Mercearia') and valorVendaProduto = 6.50;
 
 
 /*Produtos cuja categoria não seja “mercearia”*/
 SELECT * FROM Produtos WHERE NOT categoriaProduto ='Mercearia';
 
 
 /*Produtos cuja quantidade seja maior ou igual a 300*/
 SELECT * FROM Produtos WHERE quantidadeProduto >= 300;
 
 
 /*Produtos cujo valor de venda seja menor ou igual a 5*/
 SELECT * FROM Produtos WHERE valorVendaProduto <= 5;
 
 
 /*Produtos cujos preços estejam entre 5 e 10 reais*/
 SELECT * FROM Produtos WHERE valorVendaProduto BETWEEN 5 AND 10;
 
 
 /*Produtos cuja categoria seja “limpeza”, “bebidas” e “laticínios”*/
 SELECT * FROM Produtos WHERE categoriaProduto in ('Limpeza','Bebidas','Laticínios');
 
 
 /*Produtos cuja categoria não seja “limpeza”, “bebidas” e “laticínios”*/
 SELECT * FROM Produtos WHERE categoriaProduto NOT IN ('Limpeza','Bebidas','Laticínios');
 
 
 /* Lista de todos os produtos que tenham a palavra "leite" em qualquer parte de seu nome*/
 SELECT nomeProduto, valorVendaProduto FROM Produtos WHERE nomeProduto LIKE '%leite%';
 
 
 /*Listando os dados do produto cujo idProduto seja 5*/
 SELECT * FROM Produtos WHERE idProduto=5;
 
 
 /*Listando todos os produtos cuja categoria esteja com NULL*/
 SELECT * FROM Produtos WHERE categoriaProduto IS NULL;
 
 
 /* Listando todos os produtos cuja categoria não seja NULL*/
 SELECT * FROM Produtos WHERE categoriaProduto IS NOT NULL;
 
 
 /* Listando produtos cuja categoria seja diferente de “mercearia” ou NULL*/
 SELECT nomeProduto, categoriaProduto, valorVendaProduto FROM Produtos WHERE categoriaProduto <> 'Mercearia' OR categoriaProduto IS NULL;
 
 
 /* Listando todos os produtos e inserindo um alias nas colunas: nomeProduto para nome e valorVendaProduto para valor*/
 SELECT nomeProduto AS nome, valorVendaProduto AS valor FROM Produtos;
 