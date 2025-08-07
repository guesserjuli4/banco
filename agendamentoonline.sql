CREATE TABLE login (
    idlogin INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(45) NOT NULL,
    senha VARCHAR(45) NOT NULL
);

CREATE TABLE professoradmin (
    cpf_professor INT PRIMARY KEY,
    nome_professor VARCHAR(45) NOT NULL,
    telefone_professor VARCHAR(45),
    datanasc_professor VARCHAR(45),
    especialidade VARCHAR(45),
    disciplinaservico VARCHAR(45),
    gmail_professor VARCHAR(45),
    login_idlogin INT,
    FOREIGN KEY (login_idlogin) REFERENCES login(idlogin)
);

CREATE TABLE disciplina (
    iddisciplina INT AUTO_INCREMENT PRIMARY KEY,
    disciplina VARCHAR(45),
    professores VARCHAR(45)
);

CREATE TABLE aluno (
    RA INT PRIMARY KEY,
    nome_aluno VARCHAR(45) NOT NULL,
    gmail_aluno VARCHAR(45),
    datanasc_aluno VARCHAR(45),
    inicio_graduacao VARCHAR(45),
    alunocel VARCHAR(45),
    login_idlogin INT,
    FOREIGN KEY (login_idlogin) REFERENCES login(idlogin)
);

CREATE TABLE colaboradoradmin (
    matricula INT PRIMARY KEY,
    nome_colaborador VARCHAR(45),
    gmail_colaborador VARCHAR(45),
    datanasc_colaborador VARCHAR(45),
    login_idlogin INT,
    FOREIGN KEY (login_idlogin) REFERENCES login(idlogin)
);

CREATE TABLE servicos (
    idservicos INT PRIMARY KEY,
    odontopedi VARCHAR(45),
    endodontia VARCHAR(45),
    periodontia VARCHAR(45),
    avaliacao VARCHAR(45),
    restauracao VARCHAR(45),
    extracao VARCHAR(45),
    proteseremovivel VARCHAR(45)
);

CREATE TABLE paciente (
    cpf_paciente INT PRIMARY KEY,
    nome_paciente VARCHAR(45),
    telefone_paciente VARCHAR(45),
    datanasc_paciente VARCHAR(45),
    gmail_paciente VARCHAR(45),
    servico VARCHAR(45)
);

CREATE TABLE agenda (
    idagenda INT PRIMARY KEY,
    nome_agenda VARCHAR(45),
    diasemana VARCHAR(45),
    hora VARCHAR(45),
    disciplina VARCHAR(45),
    professor_responsavel VARCHAR(45),
    paciente_agendado VARCHAR(45),
    telefone_paciente VARCHAR(45)
);

CREATE TABLE listaspera (
    idlista INT PRIMARY KEY,
    nomepaciente VARCHAR(45),
    telefone VARCHAR(45),
    servico VARCHAR(45),
    colaboradoradmin_matricula INT,
    FOREIGN KEY (colaboradoradmin_matricula) REFERENCES colaboradoradmin(matricula)
);
