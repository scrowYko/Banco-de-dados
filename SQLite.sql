CREATE TABLE produto(
  nomeProduto_pk VARCHAR(15) NOT NULL,
  precoProduto INT NOT NULL,
  saborProduto VARCHAR(20) NOT NULL,
  PRIMARY KEY (nomeProduto_pk)
  )
CREATE TABLE fornecedor(
  local_fornecedor VARCHAR(25) NOT NULL,
  CNPJ_fornecedor_pk VARCHAR(15) NOT NULL,
  estoque_quantidade INT NOT NULL,
  tempo_entrega VARCHAR(30) NOT NULL,
  PRIMARY KEY (CNPJ_fornecedor_pk)
 )
 CREATE TABLE cliente(
   nomeCliente VARCHAR (40) NOT NULL,
   endereco VARCHAR (40) NOT NULL,
   CPF_pk VARCHAR (15) NOT NULL,
   PRIMARY KEY (CPF_pk)
   )
 CREATE TABLE barraquinha(
   nome_barraquinha VARCHAR(30) NOT NULL,
   CNPJ_barraquinha_pk VARCHAR(15) NOT NULL,
   cnpj_fornecedor_fk VARCHAR (15) NOT NULL,
   horario_funcionamento VARCHAR (15) NOT NULL,
   nome_produto_produto_fk VARCHAR(15) NOT NULL,
   cpf_cliente_fk VARCHAR (15) NOT NULL,
   PRIMARY KEY (CNPJ_barraquinha_pk),
   FOREIGN KEY (nome_produto_produto_fk) REFERENCES produto(nomeproduto_pk),
   FOREIGN KEY (cnpj_fornecedor_fk) REFERENCES fornecedor(cnpj_fornecedor_pk),
   FOREIGN KEY (cpf_cliente_fk) REFERENCES cliente(cpf_pk)
   )
   INSERT INTO cliente(nomecliente , endereco , cpf_pk)
   VALUES ('Davi Henry','Rua do bob esponja, 95', '15353756354')
   INSERT INTO fornecedor(local_fornecedor , cnpj_fornecedor_pk , estoque_quantidade , tempo_entrega)
   VALUES ('Rua do plankton' , '529357283' , '152' , '9')
   INSERT INTO produto (precoproduto, nomeproduto_pk, saborproduto)
   VALUES ('5' , 'caldo de cana' , 'cana')
   INSERT INTO barraquinha (nome_barraquinha , cnpj_barraquinha_pk , cnpj_fornecedor_fk, horario_funcionamento , nome_produto_produto_fk , cpf_cliente_fk)
   VALUES ('seu nelson' , '135362' , '52983' , '0800-2100' , 'caldo de cana' , '1556354' )
