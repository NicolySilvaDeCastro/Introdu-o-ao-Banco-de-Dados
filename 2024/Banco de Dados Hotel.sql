-- -- Tabela Hospede
-- CREATE TABLE Hospede (
--     CPFhospede_PK VARCHAR(15) PRIMARY KEY NOT NULL UNIQUE,
--     nomeHospede VARCHAR(200) NOT NULL
-- );


-- -- Tabela TelefoneHospede
-- CREATE TABLE TelefoneHospede (
--     idTelefone_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     CPFhospede_FK VARCHAR(15) NOT NULL UNIQUE REFERENCES Hospede(CPFhospede_PK),
--     telefone VARCHAR(12) NOT NULL
-- );


-- -- Tabela OrigemHospede
-- CREATE TABLE OrigemHospede (
--     idLocalOrigem_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     CPFhospede_FK VARCHAR(15) NOT NULL UNIQUE REFERENCES Hospede(CPFhospede_PK),
--     pais VARCHAR(50) NOT NULL,
--     estado VARCHAR(50) NOT NULL,
--     cidade VARCHAR(50) NOT NULL,
--     bairro VARCHAR(50) NOT NULL,
--     rua VARCHAR(100) NOT NULL,
--     logradouro VARCHAR(30) NOT NULL,
--     numero VARCHAR(6) NOT NULL
-- );


-- -- Tabela DestinoHospede
-- CREATE TABLE DestinoHospede (
--     idLocalDestino_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     CPFhospede_FK VARCHAR(15) NOT NULL UNIQUE REFERENCES Hospede(CPFhospede_PK),
--     pais VARCHAR(50) NOT NULL,
--     estado VARCHAR(50) NOT NULL,
--     cidade VARCHAR(50) NOT NULL,
--     bairro VARCHAR(50) NOT NULL,
--     rua VARCHAR(100) NOT NULL,
--     logradouro VARCHAR(30) NOT NULL,
--     numero VARCHAR(6) NOT NULL
-- );


-- -- Tabela MotivoHospede
-- CREATE TABLE MotivoHospede (
--     idMotivoViagem_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     CPFhospede_FK VARCHAR(15) NOT NULL UNIQUE REFERENCES Hospede(CPFhospede_PK)
-- );



-- -- Tabela AgenciaViagem
-- CREATE TABLE AgenciaViagem (
--     CNPJagencia_PK VARCHAR(14) PRIMARY KEY NOT NULL UNIQUE,
--     CPFhospede_FK VARCHAR(15) NOT NULL UNIQUE REFERENCES Hospede(CPFhospede_PK),
--     nomeAgencia VARCHAR(200) NOT NULL
-- );


-- -- Tabela Instalacoes
-- CREATE TABLE Instalacoes (
--     idIntalacoes_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     idServicoQuarto_FK INT NOT NULL UNIQUE,
--     tipoApartamento VARCHAR(20) NOT NULL
-- );


-- -- Tabela ServicoQuarto
-- CREATE TABLE ServicoQuarto (
--     idServicoQuarto_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     idIntalacoes_FK INT NOT NULL REFERENCES Instalacoes(idIntalacoes_PK),
--     gratuito BOOLEAN NOT NULL,
--     nomeServico VARCHAR(30) NOT NULL,
--     valor FLOAT NOT NULL
-- );


-- -- Tabela Disponibilidade
-- CREATE TABLE Disponibilidade (
--     idDisponibilidade_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     idIntalacoes_FK INT NOT NULL REFERENCES Instalacoes(idIntalacoes_PK)
-- );


-- -- Tabela Reservas
-- CREATE TABLE Reservas (
--     idReserva_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     idIntalacoes_FK INT NOT NULL REFERENCES Instalacoes(idIntalacoes_PK),
--     idDisponibilidade_FK INT NOT NULL REFERENCES Disponibilidade(idDisponibilidade_PK),
--     CPFhospede_FK VARCHAR(15) NOT NULL REFERENCES Hospede(CPFhospede_PK),
--     CNPJagencia_FK VARCHAR(14) NOT NULL REFERENCES AgenciaViagem(CNPJagencia_PK),
--     agencia BOOLEAN NOT NULL,
--     dataReserva DATE NOT NULL
-- );


-- -- Tabela NotaFiscalDiarias
-- CREATE TABLE NotaFiscalDiarias (
--     idDiarias_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     idReserva_FK INT NOT NULL REFERENCES Reservas(idReserva_PK),
--     parcelas INT NOT NULL
-- );


-- -- Tabela ConsumoProdutos
-- CREATE TABLE ConsumoProdutos (
--     idConsumo_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     idServicoQuarto_FK INT NOT NULL REFERENCES ServicoQuarto(idServicoQuarto_PK),
--     tipoProduto VARCHAR(40) NOT NULL,
--     quantidade INT NOT NULL,
--     valor FLOAT(7) NOT NULL
-- );


-- -- Tabela NotaFiscalServicos
-- CREATE TABLE NotaFiscalServicos (
--     idContaServicos_PK SERIAL PRIMARY KEY UNIQUE NOT NULL,
--     idServicoQuarto_FK INT NOT NULL REFERENCES ServicoQuarto(idServicoQuarto_PK),
--     valor_total FLOAT(10) NOT NULL
-- );













