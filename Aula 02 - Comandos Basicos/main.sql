-- lista as tabelas existentes no banco
SHOW TABLES;

-- Exibir todos os dados da tabela (uso somente em condicoes controladas, nao em uso de produçao)
SELECT * FROM ALUNOS;

-- Inserir um aluno
INSERT INTO ALUNOS (alu_ra, alu_nome)
VALUES ('123456', 'Ana');

-- Atualizar o e-mail e o celular
UPDATE ALUNOS
SET alu_email = 'ana@cps.sp.gov.br',
    alu_celular = '11123456789'
WHERE alu_ra = '123456';

-- Excluir o aluno
DELETE FROM ALUNOS
WHERE alu_ra = '123456';

