-- cria uma tabela chamada FILME
CREATE TABLE FILME 

-- cria uma coluna para armazenar o código do filme como número inteiro, sem permitir valores nulos
fil_codigo INT NOT NULL

-- armazena o título do filme com até 45 caracteres, sendo obrigatório
fil_titulo VARCHAR(45) NOT NULL

-- armazena a data de lançamento do filme, que também é obrigatória
fil_data_lancamento DATE NOT NULL 

-- define o código como chave primária, garantindo que cada filme tenha um código único
PRIMARY KEY (fil_codigo)


-- EXEMPLO:
CREATE TABLE FILME (
    fil_codigo INT NOT NULL,
    fil_titulo VARCHAR(45) NOT NULL,
    fil_data_lancamento DATE NOT NULL,

    PRIMARY KEY (fil_codigo)
);



-- cria a tabela que armazena as informações das SALAS
CREATE TABLE SALA

-- armazena o número da sala
sal_numero INT NOT NULL

-- armazena o nome da sala
sal_nome VARCHAR(45) NOT NULL

-- armazena a descrição da sala
sal_descricao VARCHAR(45) NOT NULL

-- informa o estado da sala
sal_estado VARCHAR(45) NOT NULL

-- indica a capacidade de pessoas da sala
sal_capacidade INT NOT NULL

-- armazena o código do tipo de sala
TIPOSALA_tip_sal_codigo INT NOT NULL

-- define o número como chave primária
PRIMARY KEY (sal_numero)

-- cria uma chave estrangeira que relaciona a sala à tabela TIPOSALA
FOREIGN KEY (...) REFERENCES TIPOSALA(tip_sal_codigo)


-- EXEMPLO:
CREATE TABLE SALA (
    sal_numero INT NOT NULL,
    sal_nome VARCHAR(45) NOT NULL,
    sal_descricao VARCHAR(45) NOT NULL,
    sal_estado VARCHAR(45) NOT NULL,
    sal_capacidade INT NOT NULL,
    TIPOSALA_tip_sal_codigo INT NOT NULL,

    PRIMARY KEY (sal_numero),
    FOREIGN KEY (TIPOSALA_tip_sal_codigo)
        REFERENCES TIPOSALA(tip_sal_codigo)
);