-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/09/2024 às 03:22
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
-- Banco de dados: `edu_event`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_evento`
--

CREATE TABLE `tb_evento` (
  `id` int(100) NOT NULL,
  `nome_evento` varchar(255) NOT NULL,
  `part_total` int(255) NOT NULL,
  `cep_escolar` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_evento`
--

INSERT INTO `tb_evento` (`id`, `nome_evento`, `part_total`, `cep_escolar`) VALUES
(1, 'festa junina', 100, 96837500),
(2, 'arrecadação de fundos (HALLOWWEEN)', 50, 69316124),
(12, 'Doação', 255, 96837500);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_sluno`
--

CREATE TABLE `tb_sluno` (
  `id` int(10) NOT NULL,
  `nome_aluno` varchar(50) NOT NULL,
  `ra_do_aluno` int(30) NOT NULL,
  `ano_letivo` int(4) NOT NULL,
  `serie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_sluno`
--

INSERT INTO `tb_sluno` (`id`, `nome_aluno`, `ra_do_aluno`, `ano_letivo`, `serie`) VALUES
(3, 'Frederico', 24165, 2024, 'terceiro B'),
(9, 'Geraldo', 65168516, 2024, 'segundo A');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_evento`
--
ALTER TABLE `tb_evento`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_sluno`
--
ALTER TABLE `tb_sluno`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_evento`
--
ALTER TABLE `tb_evento`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_sluno`
--
ALTER TABLE `tb_sluno`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
