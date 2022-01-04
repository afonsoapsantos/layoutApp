-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Jan-2022 às 01:45
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `layoutapp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `imagePath` varchar(255) NOT NULL,
  `createdat` date NOT NULL,
  `updateat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `image`
--

INSERT INTO `image` (`id`, `name`, `description`, `imagePath`, `createdat`, `updateat`) VALUES
(1, 'Cores de Outono', 'cores frias e quentes de outono', './resources/User.png', '2022-01-03', NULL),
(2, 'Cores de Verão', 'Cores para escolher', './resources/logoRGB.png', '2022-01-03', NULL),
(3, 'Cores de Verão', 'Cores para escolher', './resources/User.png', '2022-01-03', NULL),
(4, 'Cores de Verão', 'Cores para escolher', './resources/User.png', '2022-01-03', NULL),
(5, 'Cores de Verão', 'Cores para escolher', './resources/User.png', '2022-01-03', NULL),
(6, 'Cores de Verão', 'Cores para escolher', './resources/User.png', '2022-01-03', NULL),
(7, 'Cores de Verão', 'Cores para escolher', './resources/User.png', '2022-01-03', NULL),
(8, 'Cores de Verão', 'Cores para escolher', './resources/User.png', '2022-01-03', NULL),
(9, 'Cores de Verão', 'Cores para escolher', './resources/User.png', '2022-01-03', NULL),
(10, 'Cores de Verão', 'Cores para escolher', './resources/User.png', '2022-01-03', NULL),
(11, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(12, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(13, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(14, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(15, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(16, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(17, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(18, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(19, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(20, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(21, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(22, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(23, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(24, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(25, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(26, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(27, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(28, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(29, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(30, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(31, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(32, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(33, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(34, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(35, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(36, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(37, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(38, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(39, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(40, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(41, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(42, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(43, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(44, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(45, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(46, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(47, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(48, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(49, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(50, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(51, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(52, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(53, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(54, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(55, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(56, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(57, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(58, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(59, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(60, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(61, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(62, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(63, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(64, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(65, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(66, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(67, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(68, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(69, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL),
(70, 'Nome do Album', 'Lorem ipsum Lorem ipsum', './resources/294144.jpg', '2022-01-03', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20220102135324, 'ImageMigration', '2022-01-02 18:24:52', '2022-01-02 18:24:52', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
