-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Mar-2025 às 21:17
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `censo2025`
--

-- ----------------------------------------------------------

--
-- Estrutura da tabela `escolaridadebruno`
--

CREATE TABLE `escolaridadebruno` (
  `idEscolaridade` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `escolaridadebruno`
--

INSERT INTO `escolaridadebruno` (`idEscolaridade`, `Nome`) VALUES
(1, 'Não alfabetizado'),
(2, 'Alfabetizado'),
(3, 'Fundamental incompleto'),
(4, 'Fundamental completo'),
(5, 'Ensino médio incompleto'),
(6, 'Ensino médio completo'),
(7, 'Ensino médio técnico'),
(8, 'Ensino superior'),
(9, 'Especialização'),
(10, 'Mestrado'),
(11, 'Pós-graduação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `etniabruno`
--

CREATE TABLE `etniabruno` (
  `idEtniaBruno` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `etniabruno`
--

INSERT INTO `etniabruno` (`idEtniaBruno`, `Nome`) VALUES
(1, 'Branco'),
(2, 'Pardo'),
(3, 'Preto'),
(4, 'Vermelho'),
(5, 'Indígena');

-- --------------------------------------------------------

--
-- Estrutura da tabela `generobruno`
--

CREATE TABLE `generobruno` (
  `idGeneroBruno` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `generobruno`
--

INSERT INTO `generobruno` (`idGeneroBruno`, `Nome`) VALUES
(1, 'Feminino'),
(2, 'Masculino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `localidadebruno`
--

CREATE TABLE `localidadebruno` (
  `idLocalidadeBruno` int(10) UNSIGNED NOT NULL,
  `UFBruno_idUFBruno` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `localidadebruno`
--

INSERT INTO `localidadebruno` (`idLocalidadeBruno`, `UFBruno_idUFBruno`, `Nome`) VALUES
(1, 2, 'Chapecó'),
(2, 1, 'Porto Alegre'),
(3, 1, 'Passo Fundo'),
(4, 1, 'Sananduva'),
(5, 2, 'Florianópolis'),
(7, 2, 'Blumenau'),
(8, 2, 'Joinville'),
(9, 3, 'Curitiba'),
(10, 3, 'Maringá'),
(11, 3, 'Pato Branco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoabruno`
--

CREATE TABLE `pessoabruno` (
  `idPessoaBruno` int(10) UNSIGNED NOT NULL,
  `GeneroBruno_idGeneroBruno` int(10) UNSIGNED NOT NULL,
  `LocalidadeBruno_idLocalidadeBruno` int(10) UNSIGNED NOT NULL,
  `EtniaBruno_idEtniaBruno` int(10) UNSIGNED NOT NULL,
  `EscolaridadeBruno_idEscolaridade` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Nascimento` date DEFAULT NULL,
  `Renda` double DEFAULT NULL,
  `Gfamiliar` int(10) UNSIGNED DEFAULT NULL,
  `Veiculo` int(10) UNSIGNED DEFAULT NULL,
  `Agua` tinyint(1) DEFAULT NULL,
  `Esgoto` tinyint(1) DEFAULT NULL,
  `Luz` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pessoabruno`
--

INSERT INTO `pessoabruno` (`idPessoaBruno`, `GeneroBruno_idGeneroBruno`, `LocalidadeBruno_idLocalidadeBruno`, `EtniaBruno_idEtniaBruno`, `EscolaridadeBruno_idEscolaridade`, `Nome`, `Nascimento`, `Renda`, `Gfamiliar`, `Veiculo`, `Agua`, `Esgoto`, `Luz`) VALUES
(1, 2, 1, 1, 7, 'Bruno do Prado', '2006-06-28', 10000, 2, 3, 1, 1, 1),
(2, 2, 3, 3, 4, 'Vitor Mateus Teixeira', '1927-03-27', 12000, 2, 1, 1, 1, 1),
(3, 1, 5, 2, 10, 'Valda Costa', '1951-05-20', 12300, 5, 1, 1, 1, 1),
(4, 1, 8, 5, 1, 'Laura Fabiana Meneghini', '2007-11-06', 2000, 6, 1, 0, 0, 1),
(5, 2, 4, 4, 3, 'Joerbio Noeclaudio', '2017-03-01', 2350, 2, 1, 0, 0, 1),
(7, 1, 9, 5, 1, 'Ammn', '0000-00-00', 1000, 8, 0, 0, 0, 0),
(9, 1, 10, 3, 9, 'Nouglas Maciel Schneider', '1998-06-03', 5600, 3, 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ufbruno`
--

CREATE TABLE `ufbruno` (
  `idUFBruno` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Sigla` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ufbruno`
--

INSERT INTO `ufbruno` (`idUFBruno`, `Nome`, `Sigla`) VALUES
(1, 'Rio Grande do Sul', 'RS'),
(2, 'Santa Catarina', 'SC'),
(3, 'Paraná', 'PR'),
(4, 'São Paulo', 'SP'),
(5, 'Minas Gerais', 'MG'),
(6, 'Rio de Janeiro', 'RJ');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `escolaridadebruno`
--
ALTER TABLE `escolaridadebruno`
  ADD PRIMARY KEY (`idEscolaridade`);

--
-- Índices para tabela `etniabruno`
--
ALTER TABLE `etniabruno`
  ADD PRIMARY KEY (`idEtniaBruno`);

--
-- Índices para tabela `generobruno`
--
ALTER TABLE `generobruno`
  ADD PRIMARY KEY (`idGeneroBruno`);

--
-- Índices para tabela `localidadebruno`
--
ALTER TABLE `localidadebruno`
  ADD PRIMARY KEY (`idLocalidadeBruno`),
  ADD KEY `LocalidadeBruno_FKIndex1` (`UFBruno_idUFBruno`);

--
-- Índices para tabela `pessoabruno`
--
ALTER TABLE `pessoabruno`
  ADD PRIMARY KEY (`idPessoaBruno`),
  ADD KEY `PessoaBruno_FKIndex1` (`GeneroBruno_idGeneroBruno`),
  ADD KEY `PessoaBruno_FKIndex2` (`EscolaridadeBruno_idEscolaridade`),
  ADD KEY `PessoaBruno_FKIndex3` (`EtniaBruno_idEtniaBruno`),
  ADD KEY `PessoaBruno_FKIndex4` (`LocalidadeBruno_idLocalidadeBruno`);

--
-- Índices para tabela `ufbruno`
--
ALTER TABLE `ufbruno`
  ADD PRIMARY KEY (`idUFBruno`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `escolaridadebruno`
--
ALTER TABLE `escolaridadebruno`
  MODIFY `idEscolaridade` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `etniabruno`
--
ALTER TABLE `etniabruno`
  MODIFY `idEtniaBruno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `generobruno`
--
ALTER TABLE `generobruno`
  MODIFY `idGeneroBruno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `localidadebruno`
--
ALTER TABLE `localidadebruno`
  MODIFY `idLocalidadeBruno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `pessoabruno`
--
ALTER TABLE `pessoabruno`
  MODIFY `idPessoaBruno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `ufbruno`
--
ALTER TABLE `ufbruno`
  MODIFY `idUFBruno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `localidadebruno`
--
ALTER TABLE `localidadebruno`
  ADD CONSTRAINT `localidadebruno_ibfk_1` FOREIGN KEY (`UFBruno_idUFBruno`) REFERENCES `ufbruno` (`idUFBruno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pessoabruno`
--
ALTER TABLE `pessoabruno`
  ADD CONSTRAINT `pessoabruno_ibfk_1` FOREIGN KEY (`GeneroBruno_idGeneroBruno`) REFERENCES `generobruno` (`idGeneroBruno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pessoabruno_ibfk_2` FOREIGN KEY (`EscolaridadeBruno_idEscolaridade`) REFERENCES `escolaridadebruno` (`idEscolaridade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pessoabruno_ibfk_3` FOREIGN KEY (`EtniaBruno_idEtniaBruno`) REFERENCES `etniabruno` (`idEtniaBruno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pessoabruno_ibfk_4` FOREIGN KEY (`LocalidadeBruno_idLocalidadeBruno`) REFERENCES `localidadebruno` (`idLocalidadeBruno`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
