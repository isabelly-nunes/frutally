/*Correções*/

/*UPDATE NOME_DA_TABELA SET [LIMITE DE CREDITO] = [VOLUME MINIMO], [VOLUME MINIMO] = [LIMITE DE CREDITO]*/

/* Os valores de limite de credito e volume minimo estão ao contrário*/
UPDATE [TABELA DE CLIENTES] 
SET [LIMITE DE CREDITO] = [VOLUME MINIMO],
[VOLUME MINIMO] = [LIMITE DE CREDITO];

SELECT * FROM [TABELA DE CLIENTES];

/*Alterando apenas valores de duas linhas especificas usando o identificador*/

UPDATE [TABELA DE CLIENTES]
SET [LIMITE DE CREDITO] = '200000', [VOLUME MINIMO] = '3000.3'
WHERE [CPF] = '00384393431';

UPDATE [TABELA DE CLIENTES]
SET [LIMITE DE CREDITO] = '200000', [VOLUME MINIMO] = '3000.3'
WHERE [CPF] = '00384393555';



/*Corrigindo o tipo de dado da columa matricula que tem PK, no caso ela está como CHAR mas deveria ser VARCHAT.

O SQL Server não permite alteração direta do tipo para um campo definido como chave primária.

A alternativa para fazer essa alteração é remover a chave primária, alterar o tipo do campo e definir a chave primária novamente, conforme exemplo:

ALTER TABLE [TABELA DE VENDEDORES] DROP CONSTRAINT [PK_TABELA_DE_VENDEDORES];

ALTER TABLE [TABELA DE VENDEDORES] ALTER COLUMN [MATRICULA] VARCHAR(5) NOT NULL;

ALTER TABLE [TABELA DE VENDEDORES] ADD CONSTRAINT PK_TABELA_DE_VENDEDORES PRIMARY KEY (MATRICULA);

Nome da chave primaria = PK__TABELA D__46A2F6890BAB8359*/ 

ALTER TABLE [TABELA DE VENDEDORES] DROP CONSTRAINT [PK__TABELA D__46A2F6890BAB8359];

ALTER TABLE [TABELA DE VENDEDORES] ALTER COLUMN [MATRICULA] VARCHAR(5) NOT NULL

ALTER TABLE [TABELA DE VENDEDORES] ADD CONSTRAINT PK_TABELA_DE_VENDEDORES PRIMARY KEY (MATRICULA);

SELECT * FROM [TABELA DE VENDEDORES];

