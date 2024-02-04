/*Sele��o de condi��es especificas com a clausula where*/

SELECT [NOME] AS [NOME DO CLIENTE], [ESTADO] AS [UF], [PRIMEIRA COMPRA] 
FROM [TABELA DE CLIENTES]
WHERE [PRIMEIRA COMPRA] = 1;

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] = 7.00;

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] > 7.00
ORDER BY [PRECO DE LISTA];

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] <= 7.00
ORDER BY [PRECO DE LISTA];

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [EMBALAGEM] > 'Lata';
/* essa condi��o n�o faz muito sentido sendo para texto, aqui ele vai resultar em um ordena��o alfabetica, onde o P de Pet � maior que o L de Lata*/

SELECT DISTINCT [EMBALAGEM] FROM [TABELA DE PRODUTOS];

SELECT * FROM [TABELA DE CLIENTES]


SELECT [NOME],[DATA DE NASCIMENTO] 
FROM [TABELA DE CLIENTES]
WHERE [DATA DE NASCIMENTO] > '1995-12-31';

/*fun��o de agrega��o que tr�s o mesmo resultado de cima*/

SELECT [NOME],[DATA DE NASCIMENTO] 
FROM [TABELA DE CLIENTES]
WHERE YEAR([DATA DE NASCIMENTO]) > '1995';

/*Filtros compostos*/

SELECT [NOME],[BAIRRO] 
FROM [TABELA DE CLIENTES]
WHERE [BAIRRO] = 'Copacabana' OR [BAIRRO] = 'Tijuca';


SELECT [NOME],[ESTADO], [PRIMEIRA COMPRA] 
FROM [TABELA DE CLIENTES]
WHERE [ESTADO] = 'SP' AND [PRIMEIRA COMPRA] = '1';

/*Para praticar ainda mais a utiliza��o de filtros no SQL, te desafio a trazer as consultas abaixo:
1 - Liste os vendedores que possuem comiss�o menor ou igual a 8%.
2 - Liste os produtos que custam menos de 6 reais e est�o dispon�veis em lata.
3 - Mostre todos os clientes que n�o s�o de S�o Paulo nem do Rio de Janeiro.*/

SELECT * FROM [TABELA DE VENDEDORES]
WHERE [PERCENTUAL DE COMISS�O] <= 0.08;

SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] < 6.00 AND [EMBALAGEM] = 'Lata'
ORDER BY [PRECO DE LISTA];

SELECT * FROM [TABELA DE CLIENTES]
WHERE [ESTADO] <> 'SP' AND [ESTADO] <> 'RJ';

SELECT * FROM [TABELA DE CLIENTES]

/* Atualizando pre�o (10% de desconto) dos produtos em lata*/

UPDATE [TABELA DE PRODUTOS] 
SET [PRECO DE LISTA] = [PRECO DE LISTA] * 0.9
WHERE [EMBALAGEM] = 'Lata';

/*Corrigir a embalagem e o pre�o do produto*/
'1088126'

SELECT * FROM [TABELA DE PRODUTOS];

UPDATE [TABELA DE PRODUTOS] 
SET [EMBALAGEM] = 'Garrafa', [PRECO DE LISTA] = 8.10
WHERE [CODIGO DO PRODUTO] = '1088126';

/*Deletar informa��o*/
'1004327'

DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO]= '1004327';