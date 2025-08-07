-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/08/2025 às 16:38
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agendamentoonline`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `nome_agenda` varchar(100) DEFAULT NULL,
  `dia_semana` varchar(20) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `disciplina` varchar(100) DEFAULT NULL,
  `professor_responsavel` varchar(100) DEFAULT NULL,
  `paciente_agendado` varchar(100) DEFAULT NULL,
  `telefone_paciente` varchar(20) DEFAULT NULL,
  `aluno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `ra` int(11) NOT NULL,
  `nome_aluno` varchar(100) DEFAULT NULL,
  `gmail_aluno` varchar(100) DEFAULT NULL,
  `datanasc_aluno` date DEFAULT NULL,
  `inicio_graduacao` date DEFAULT NULL,
  `aluno_senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `colaboradoradmin`
--

CREATE TABLE `colaboradoradmin` (
  `matricula` int(11) NOT NULL,
  `nome_colaborador` varchar(100) DEFAULT NULL,
  `gmail_colaborador` varchar(100) DEFAULT NULL,
  `datanasc_colaborador` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id_disciplina` int(11) NOT NULL,
  `disciplina` varchar(100) DEFAULT NULL,
  `professor_responsavel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `listaespera`
--

CREATE TABLE `listaespera` (
  `id_lista` int(11) NOT NULL,
  `nome_paciente` varchar(100) DEFAULT NULL,
  `telefone_paciente` varchar(20) DEFAULT NULL,
  `servico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `cpf_paciente` varchar(14) NOT NULL,
  `nome_paciente` varchar(100) DEFAULT NULL,
  `telefone_paciente` varchar(20) DEFAULT NULL,
  `datanasci_paciente` date DEFAULT NULL,
  `gmail_paciente` varchar(100) DEFAULT NULL,
  `servico_paciente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professoradmin`
--

CREATE TABLE `professoradmin` (
  `cpf_professor` int(45) NOT NULL,
  `nome_professor` varchar(150) DEFAULT NULL,
  `datanasci_professor` date DEFAULT NULL,
  `especialidade` int(45) DEFAULT NULL,
  `disciplinaexercida` int(11) DEFAULT NULL,
  `gmail_professor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`ra`);

--
-- Índices de tabela `colaboradoradmin`
--
ALTER TABLE `colaboradoradmin`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`);

--
-- Índices de tabela `listaespera`
--
ALTER TABLE `listaespera`
  ADD PRIMARY KEY (`id_lista`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`cpf_paciente`);

--
-- Índices de tabela `professoradmin`
--
ALTER TABLE `professoradmin`
  ADD PRIMARY KEY (`cpf_professor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
