-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03-Jan-2018 às 17:26
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `importados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `niveis_acesso_id` int(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `idade` varchar(20) NOT NULL,
  `cpf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `niveis_acesso_id`, `data_nascimento`, `telefone`, `idade`, `cpf`) VALUES
(1, 'Jose', 'jose@ig.com', 1, '1985-01-22', '219884-5596', '25', '123.456.789-10'),
(2, 'Maria', 'maria@gmail.com', 1, '1975-05-12', '218776-4553', '65', '234.433.556-23'),
(3, 'Luis', 'luis@bol.com', 2, '1991-03-25', '217766-8997', '23', '155.277.233-43'),
(4, 'Jose', 'jose@ig.com', 1, '1985-01-22', '219884-5596', '25', '123.456.789-10'),
(5, 'Maria', 'maria@gmail.com', 1, '1975-05-12', '218776-4553', '65', '234.433.556-23'),
(6, 'Luis', 'luis@bol.com', 2, '1991-03-25', '217766-8997', '23', '155.277.233-43'),
(7, 'Jose', 'jose@ig.com', 1, '1985-01-22', '219884-5596', '25', '123.456.789-10'),
(8, 'Maria', 'maria@gmail.com', 1, '1975-05-12', '218776-4553', '65', '234.433.556-23'),
(9, 'Luis', 'luis@bol.com', 2, '1991-03-25', '217766-8997', '23', '155.277.233-43'),
(10, 'Jose', 'jose@ig.com', 1, '1985-01-22', '219884-5596', '25', '123.456.789-10'),
(11, 'Maria', 'maria@gmail.com', 1, '1975-05-12', '218776-4553', '65', '234.433.556-23'),
(12, 'Luis', 'luis@bol.com', 2, '1991-03-25', '217766-8997', '23', '155.277.233-43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
