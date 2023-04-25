CREATE TABLE usuario(
  nome_u VARCHAR (100),
  cpf_u VARCHAR (20) NOT NULL,
  id_passe INT NOT NULL,
  PRIMARY KEY (id_passe)
  )
CREATE TABLE motora(
  nome_m VARCHAR (100),
  cpf_m VARCHAR (20) NOT NULL,
  cnh VARCHAR (20) NOT NULL,
  id_m INT NOT NULL,
  PRIMARY KEY (id_m)
  )
  CREATE TABLE onibus(
    rota VARCHAR(100) NOT NULL,
    placa VARCHAR(10) NOT NULL,
    id_o INT NOT NULL,
    id_m_fk INT NOT NULL,
    id_p_fk INT NOT NULL,
    PRIMARY KEY (id_o),
    FOREIGN KEY (id_m_fk) REFERENCES motora(id_m),
    FOREIGN KEY (id_p_fk) REFERENCES usuario(id_passe)
    )
    CREATE TABLE empresa(
      nome_e VARCHAR (20),
      cnpj VARCHAR (20),
      cidade VARCHAR (50),
      id_m_fk INT NOT NULL,
      id_o_fk INT NOT NULL,
      id_p_fk INT NOT NULL,
      PRIMARY KEY (cnpj),
      FOREIGN KEY (id_m_fk) REFERENCES motora (id_m),
      FOREIGN KEY (id_o_fk) REFERENCES onibus (id_o),
      FOREIGN KEY (id_p_fk) REFERENCES usuario(id_passe)
      )
      INSERT INTO usuario (nome_u,cpf_u,id_passe)
      VALUES ('Joao Coreia','6246346','000001');
      INSERT INTO motora(nome_m,cpf_m,cnh,id_m)
      VALUES ('jefferson Marcos','52262462','23544353','987654321');
      INSERT INTO onibus(rota,placa,id_o,id_m_fk,id_p_fk)
      VALUES ('Enseada - Ponte do Imaruim','Fag987i6','123456','987654321','000001');
      INSERT INTO empresa(nome_e,cnpj,cidade,id_m_fk,id_o_fk,id_p_fk)
      VALUES ('Jottunur','582762352','Palhaço','987654321','123456','000001')