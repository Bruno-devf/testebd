-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/10/2024 às 03:34
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `edu_events`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_evento`
--

CREATE TABLE `tb_evento` (
  `id_evento` int(100) NOT NULL,
  `nome_evento` varchar(255) DEFAULT NULL,
  `desc` int(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `local` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_evento`
--

INSERT INTO `tb_evento` (`id_evento`, `nome_evento`, `desc`, `data`, `local`) VALUES
(1, 'festa junina', NULL, '10/10/10', 96837500),
(2, 'arrecadação de fundos (HALLOWWEEN)', NULL, '11/11/11', 69316124),
(12, 'Doação', NULL, '12/12/12', 96837500);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_professor`
--

CREATE TABLE `tb_professor` (
  `id_professor` int(10) NOT NULL,
  `nome_completo` varchar(50) DEFAULT NULL,
  `RG` int(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_professor`
--

INSERT INTO `tb_professor` (`id_professor`, `nome_completo`, `RG`, `email`, `senha`) VALUES
(3, 'Frederico Casmurro', 2415765, 'fred@casm.com', NULL),
(9, 'Geraldo Rolisso', 65168516, 'geraldo@roll.com', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_relatorio`
--

CREATE TABLE `tb_relatorio` (
  `id_relatorio` int(10) DEFAULT NULL,
  `nome_aluno` varchar(50) DEFAULT NULL,
  `id_evento` int(11) DEFAULT NULL,
  `id_professor` int(11) DEFAULT NULL,
  `descr` varchar(100) DEFAULT NULL,
  `componentes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_relatorio`
--

INSERT INTO `tb_relatorio` (`id_relatorio`, `nome_aluno`, `id_evento`, `id_professor`, `descr`, `componentes`) VALUES
(25, 'junina', 1, 3, 'nesse evento terá muita comida e caracterização', 'Alunos, Professores e familiares'),
(24, 'halloween', 2, 9, 'evento beneficente com venda de doces e rifas  ', 'Toda a comunidade em volta');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_evento`
--
ALTER TABLE `tb_evento`
  ADD PRIMARY KEY (`id_evento`);

--
-- Índices de tabela `tb_professor`
--
ALTER TABLE `tb_professor`
  ADD PRIMARY KEY (`id_professor`);

--
-- Índices de tabela `tb_relatorio`
--
ALTER TABLE `tb_relatorio`
  ADD KEY `id_evento` (`id_evento`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_relatorio`
--
ALTER TABLE `tb_relatorio`
  ADD CONSTRAINT `tb_relatorio_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `tb_evento` (`id_evento`),
  ADD CONSTRAINT `tb_relatorio_ibfk_2` FOREIGN KEY (`id_professor`) REFERENCES `tb_professor` (`id_professor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
