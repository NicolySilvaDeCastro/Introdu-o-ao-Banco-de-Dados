CREATE TABLE Cliente (
    id_cliente serial PRIMARY KEY,
    nome varchar(200) NOT NULL UNIQUE,
    numero varchar(200)
);

CREATE TABLE auditoria_cliente (
    id_auditoria serial PRIMARY KEY,
    id_cliente int,
    nome varchar(200),
    numero varchar(200),
    tipo_alteracao varchar(10),
    data_alteracao timestamp
);

CREATE OR REPLACE FUNCTION auditar_insert_cliente()
RETURNS trigger AS
$$
BEGIN
    INSERT INTO auditoria_cliente (id_cliente, nome, numero, tipo_alteracao, data_alteracao)
    VALUES (NEW.id_cliente, NEW.nome, NEW.numero, 'INSERT', NOW());
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_auditar_insert
AFTER INSERT ON Cliente
FOR EACH ROW
EXECUTE PROCEDURE auditar_insert_cliente();

CREATE OR REPLACE FUNCTION auditar_exclusao_cliente()
RETURNS trigger AS
$$
BEGIN
    INSERT INTO auditoria_cliente (id_cliente, nome, numero, tipo_alteracao, data_alteracao)
    VALUES (OLD.id_cliente, OLD.nome, OLD.numero, 'DELETE', NOW());
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_auditar_exclusao
BEFORE DELETE ON Cliente
FOR EACH ROW
EXECUTE PROCEDURE auditar_exclusao_cliente();

INSERT INTO Cliente (nome, numero) VALUES ('Fernanda', '3333-4605');
INSERT INTO Cliente (nome, numero) VALUES ('Abgail', '3223-4605');
INSERT INTO Cliente (nome, numero) VALUES ('Rogério', '1102-0231');
INSERT INTO Cliente (nome, numero) VALUES ('Rafael', '1212-3839');
INSERT INTO Cliente (nome, numero) VALUES ('Isabelle', '3233-3039');

CREATE TABLE Funcionario (
    id_funcionario serial PRIMARY KEY,
    nome_funcionario varchar(30),
    salario float
);

CREATE TABLE auditoria_salario (
    data_auditoria timestamp,
    id_funcionario int,
    nome_funcionario varchar(30),
    salario_anterior float,
    salario_novo float
);

CREATE OR REPLACE FUNCTION auditar_aumento_salario()
RETURNS trigger AS
$$
BEGIN
    IF (NEW.salario - OLD.salario) > 1500 THEN
        INSERT INTO auditoria_salario (data_auditoria, id_funcionario, nome_funcionario, salario_anterior, salario_novo)
        VALUES (NOW(), OLD.id_funcionario, OLD.nome_funcionario, OLD.salario, NEW.salario);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_auditar_aumento_salario
AFTER UPDATE ON Funcionario
FOR EACH ROW
EXECUTE PROCEDURE auditar_aumento_salario();

INSERT INTO Funcionario (nome_funcionario, salario) VALUES ('MARCELO DINIZ', 1000);
INSERT INTO Funcionario (nome_funcionario, salario) VALUES ('MARIO QUINELLO', 1000);
INSERT INTO Funcionario (nome_funcionario, salario) VALUES ('CARLOS ROBERTO', 3000);
INSERT INTO Funcionario (nome_funcionario, salario) VALUES ('JOSE SILVA', 5000);
INSERT INTO Funcionario (nome_funcionario, salario) VALUES ('MARINA BEZERRA', 10000);

UPDATE Funcionario SET salario = 3000 WHERE id_funcionario = 1;

CREATE TABLE Departamento_Funcionario (
    id_departamento_funcionario serial PRIMARY KEY,
    nome_funcionario varchar(30),
    nome_departamento varchar(30)
);

CREATE TABLE auditoria_departamento (
    id_auditoria_departamento serial PRIMARY KEY,
    id_departamento_funcionario int,
    nome_funcionario varchar(30),
    departamento_anterior varchar(30),
    departamento_novo varchar(30),
    data_mudanca timestamp
);

CREATE OR REPLACE FUNCTION auditar_troca_departamento()
RETURNS trigger AS
$$
BEGIN
    IF OLD.nome_departamento IS DISTINCT FROM NEW.nome_departamento THEN
        INSERT INTO auditoria_departamento (id_departamento_funcionario, nome_funcionario, departamento_anterior, departamento_novo, data_mudanca)
        VALUES (OLD.id_departamento_funcionario, OLD.nome_funcionario, OLD.nome_departamento, NEW.nome_departamento, NOW());
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_auditar_troca_departamento
AFTER UPDATE ON Departamento_Funcionario
FOR EACH ROW
EXECUTE PROCEDURE auditar_troca_departamento();

INSERT INTO Departamento_Funcionario (nome_funcionario, nome_departamento) VALUES ('MARCELO DINIZ', 'TI');
INSERT INTO Departamento_Funcionario (nome_funcionario, nome_departamento) VALUES ('CARLOS ROBERTO', 'FINANÇAS');





--RASCUNHOS
-- create table Cliente(
-- 	id_cliente serial primary key,
-- 	nome varchar(200)not null unique,
-- 	numero varchar(200)
-- );

-- create table auditar(
-- 	id_auditar serial primary key,
-- 	id_cliente int,
-- 	numero_antes varchar(200),
-- 	numero_atual varchar(200),
-- 	data_alt date
-- );

-- ALTER TABLE auditar
-- ALTER COLUMN numero_antes TYPE varchar(200),
-- ALTER COLUMN numero_atual TYPE varchar(200);


-- insert into Cliente values (1, 'Fernanda', '3333-4605');
-- insert into Cliente values (2, 'Abgail', '3223-4605');
-- insert into Cliente values (3, 'Rogério', '1102-0231');
-- insert into Cliente values (4, 'Rafael', '1212-3839');
-- insert into Cliente values (5, 'Isabelle', '3233-3039');

-- select * from Cliente;

-- create or replace function tg_cad_clientes()
-- returns trigger  as
-- $$
-- begin
-- 	insert into auditar
-- 	(id_cliente, numero_antes, numero_atual, data_alt)
-- 	values 
-- 	(old.id_cliente, old.numero, new.numero, now());
-- 	return new;
-- end;
-- $$ language PLPGSQL;

-- create or replace trigger tg_auditar
-- after update on Cliente
-- for each row
-- execute procedure tg_cad_clientes();

-- update cliente set numero = '1323-2322' where id_cliente = 2;
-- select * from auditar;




