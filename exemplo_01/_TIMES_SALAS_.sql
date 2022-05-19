-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Maio-2022 às 16:04
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jogo`
--
CREATE DATABASE IF NOT EXISTS `jogo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jogo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipes`
--

CREATE TABLE `equipes` (
  `cod_equipes` int(11) NOT NULL,
  `nome_equipe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `equipes`
--

INSERT INTO `equipes` (`cod_equipes`, `nome_equipe`) VALUES
(1, 'TI'),
(2, 'RH'),
(3, 'ADM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogador`
--

CREATE TABLE `jogador` (
  `num_jogador` int(11) NOT NULL,
  `nome_jogador` varchar(255) DEFAULT NULL,
  `cod_equipes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogador`
--

INSERT INTO `jogador` (`num_jogador`, `nome_jogador`, `cod_equipes`) VALUES
(1, 'ROLIM', 1),
(2, 'CINTIA', 1),
(3, 'NEY', 1),
(4, 'FANK', 1),
(5, 'MICHEL', 3),
(6, 'ALEK', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`cod_equipes`);

--
-- Índices para tabela `jogador`
--
ALTER TABLE `jogador`
  ADD PRIMARY KEY (`num_jogador`),
  ADD KEY `cod_equipes` (`cod_equipes`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `equipes`
--
ALTER TABLE `equipes`
  MODIFY `cod_equipes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `jogador`
--
ALTER TABLE `jogador`
  MODIFY `num_jogador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogador`
--
ALTER TABLE `jogador`
  ADD CONSTRAINT `jogador_ibfk_1` FOREIGN KEY (`cod_equipes`) REFERENCES `equipes` (`cod_equipes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
