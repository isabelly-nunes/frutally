/*Criando tabelas no banco de dados*/

/*Colunas:
CPF;
Nome completo;
Endere�o completo;
Data de nascimento;
Idade;
Sexo;
Limite de cr�dito;
Volume m�nimo de compra de produto;
Se j� realizou alguma compra na empresa;*/

CREATE TABLE [TABELA DE CLIENTES](

[CPF] [CHAR] (11),
[NOME] [VARCHAR] (150),
[RUA] [VARCHAR] (150),
[COMPLEMENTO] [VARCHAR] (150),
[BAIRRO] [VARCHAR] (150),
[ESTADO] [CHAR] (2),
[CEP] [CHAR] (8),
[DATA DE NASCIMENTO] [DATE],
[IDADE] [SMALLINT],
[SEXO] [CHAR] (1),
[LIMITE DE CREDITO] [MONEY],
[VOLUME MINIMO] [FLOAT],
[PRIMEIRA COMPRA] [BIT]

);

/*Colunas:
c�digo do produto;
nome do produto;
embalagem;
tamanho;
sabor;
pre�o de lista.
*/

CREATE TABLE [TABELA DE PRODUTOS] (
[CODIGO DO PRODUTO] [VARCHAR] (20) NOT NULL PRIMARY KEY,
[NOME DO PRODUTO] [VARCHAR] (50),
[EMBALAGEM] [VARCHAR] (50),
[TAMANHO] [VARCHAR] (50),
[SABOR] [VARCHAR] (50),
[PRECO DE LISTA] [SMALLMONEY]

);

/*Alterando dados nas tabelas*/ 
ALTER TABLE [TABELA DE CLIENTES] ALTER COLUMN [CPF] [CHAR] (11) NOT NULL;

ALTER TABLE [TABELA DE CLIENTES] ADD CONSTRAINT PK_TABELA_CLIENTES 
PRIMARY KEY CLUSTERED ([CPF]);

CREATE TABLE [TABELA DE VENDEDORES](

[MATRICULA] [CHAR] (5) NOT NULL PRIMARY KEY,
[NOME] [VARCHAR] (100),
[PERCENTUAL DE COMISS�O] [FLOAT]

)

/*ALTER TABLE [TABELA DE VENDEDORES] ALTER COLUMN [MATRICULA] [VARCHAR] (5) NOT NULL PRIMARY KEY;*/


