CREATE TABLE FILME (
    fil_codigo INT NOT NULL,
    fil_titulo VARCHAR(45) NOT NULL,
    fil_data_lancamento DATE NOT NULL,

    PRIMARY KEY (fil_codigo)
);


CREATE TABLE TIPOSALA (
    tip_sal_codigo INT NOT NULL,
    tip_sal_nome VARCHAR(45) NOT NULL,

    PRIMARY KEY (tip_sal_codigo)
);


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


CREATE TABLE SESSAO (
    ses_numero INT NOT NULL,
    ses_data DATE NOT NULL,
    ses_hora DATETIME NOT NULL,
    ses_quant_assentos INT NOT NULL,
    ses_quant_disponivel INT NOT NULL,
    ses_estado VARCHAR(45) NOT NULL,
    ses_valor DECIMAL(6,2) NOT NULL,
    SALA_sal_numero INT NOT NULL,
    FILME_fil_codigo INT NOT NULL,

    PRIMARY KEY (ses_numero),
    FOREIGN KEY (SALA_sal_numero)
        REFERENCES SALA(sal_numero),
    FOREIGN KEY (FILME_fil_codigo)
        REFERENCES FILME(fil_codigo)
);


CREATE TABLE CLIENTE (
    cli_cpf CHAR(11) NOT NULL,
    cli_nome VARCHAR(45) NOT NULL,
    cli_data_nascimento DATE NOT NULL,

    PRIMARY KEY (cli_cpf)
);


CREATE TABLE TIPOINGRESSO (
    tip_ing_codigo INT NOT NULL,
    tip_ing_nome VARCHAR(45) NOT NULL,
    tip_ing_percentual_desconto DECIMAL NULL,
    tip_ing_validade DATE NOT NULL,

    PRIMARY KEY (tip_ing_codigo)
);


CREATE TABLE FUNCIONARIO (
    fun_cpf VARCHAR(11) NOT NULL,
    fun_nome VARCHAR(45) NOT NULL,
    fun_data_nasc DATE NOT NULL,

    PRIMARY KEY (fun_cpf)
);


CREATE TABLE INGRESSO (
    ing_numero INT NOT NULL,
    ing_comprovante_desconto VARCHAR(45) NOT NULL,
    CLIENTE_cli_cpf CHAR(11) NOT NULL,
    SESSAO_ses_numero INT NOT NULL,
    ing_data DATE NOT NULL,
    ing_hora DATETIME NOT NULL,
    TIPOINGRESSO_tip_ing_codigo INT NOT NULL,
    FUNCIONARIO_fun_cpf VARCHAR(11) NOT NULL,

    PRIMARY KEY (ing_numero),
    FOREIGN KEY (CLIENTE_cli_cpf)
        REFERENCES CLIENTE(cli_cpf),
    FOREIGN KEY (SESSAO_ses_numero)
        REFERENCES SESSAO(ses_numero),
    FOREIGN KEY (TIPOINGRESSO_tip_ing_codigo)
        REFERENCES TIPOINGRESSO(tip_ing_codigo),
    FOREIGN KEY (FUNCIONARIO_fun_cpf)
        REFERENCES FUNCIONARIO(fun_cpf)
);

