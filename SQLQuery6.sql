/*Aprendendo a consultar dados*/
SELECT [NOME], [CPF], [ESTADO]
FROM [TABELA DE CLIENTES];

SELECT [NOME] AS [NOME DO CLIENTE] , [CPF], [ESTADO] AS [UF]
FROM [TABELA DE CLIENTES];

/*Aprendendo a dar apelidos em nome de colunas*/

SELECT [MATRICULA] AS [IDENTIFICADOR], [NOME] AS [NOME DO VENDEDOR], [PERCENTUAL DE COMISS�O] FROM [TABELA DE VENDEDORES];


SELECT [MATRICULA] AS [IDENTIFICADOR], [NOME] AS [NOME DO VENDEDOR] FROM [TABELA DE VENDEDORES];

SELECT [SABOR] FROM [TABELA DE PRODUTOS];

/*Aprendendo a remover valores duplicados na tabela*/

SELECT DISTINCT [SABOR] FROM [TABELA DE PRODUTOS];

