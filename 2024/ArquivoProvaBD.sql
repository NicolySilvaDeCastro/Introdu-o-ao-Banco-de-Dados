-- CREATE TABLE Animais(
-- 	id_animais serial primary key,
-- 	nome_animais varchar(30),
-- 	especie varchar(50),
-- 	raça varchar(30),
-- 	dono_animal varchar(200)
-- );

-- CREATE TABLE Veterinarios(
-- 	id_veterinario serial primary key,
-- 	nome_veterinario varchar(200),
-- 	especialidade varchar(100),
-- 	telefone int
-- );

-- CREATE TABLE Medicamentos(
-- 	id_medicamento serial primary key,
-- 	nome_medicamento varchar(100),
-- 	descricao_medicamento varchar(500),
-- 	dosagem varchar(100)
-- )

-- CREATE TABLE Consultas(
-- 	id_consulta serial primary key,
-- 	data_consulta date,
-- 	id_animais int,
-- 	id_veterinario int,
-- 	id_medicamento int,
-- 	diagnostico varchar(1000),
-- 	foreign key (id_animais) references Animais(id_animais),
-- 	foreign key (id_veterinario) references Veterinarios(id_veterinario),
-- 	foreign key (id_medicamento) references Medicamentos(id_medicamento)
-- );