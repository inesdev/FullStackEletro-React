-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 16-Dez-2020 às 13:42
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bancofullstack`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_categoria`) VALUES
(10, 'Panelas'),
(20, 'Liquidificadores'),
(30, 'Sanduicheiras'),
(40, 'Ventiladores'),
(50, 'Aspiradores'),
(60, 'Centrifugas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `nome` varchar(80) NOT NULL,
  `msg` varchar(300) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`nome`, `msg`) VALUES
('Maria', 'Ótimos produtos'),
('Vivian', 'Entrega rápida'),
('João', 'Recomendo'),
('Mariana', 'Adorei os produtos, são de ótima qualidade.'),
('Angelina', 'Produtos de ótima qualidade.'),
('Thiago', 'Comprarei novamente!');


-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(60) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `preco_antigo` decimal(8,2) DEFAULT NULL,
  `preco_atual` decimal(8,2) DEFAULT NULL,
  `img` varchar(120) DEFAULT NULL,
  `fk_idcategorias` int(11) NOT NULL,
  `nome_categoria` varchar(50) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idcategorias` (`fk_idcategorias`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categoria`, `descricao`, `preco_antigo`, `preco_atual`, `img`, `fk_idcategorias`, `nome_categoria`, `id_categoria`) VALUES
(1, 'panelas', 'Panela Eletrica de Arroz Mondial', '189.90', '119.90', './imagens/panelaep.jpg', 10, 'Panelas', 10),
(2, 'panelas', 'Panela Eletrica de Arroz Mondial ', '199.90', '149.99', './imagens/panelaeb.jpg', 10, 'Panelas', 10),
(3, 'liquidificadores', 'Liquidificador Mondial com Filtro ', '179.90', '104.90', './imagens/liquip.jpg', 20, 'Liquidificadores', 20),
(4, 'liquidificadores', 'Liquidificador Mondial Turbo ', '159.90', '105.90', './imagens/liquiv.jpg', 20, 'Liquidificadores', 20),
(5, 'sanduicheiras', 'Sanduicheira e Grill Britania ', '129.90', '79.90', './imagens/sandp.jpg', 30, 'Sanduicheiras', 30),
(6, 'sanduicheiras', 'Sanduicheira Britania Bello Pane', '129.90', '79.90', './imagens/sandb.jpg', 30, 'Sanduicheiras', 30),
(7, 'ventiladores', 'Ventilador de Mesa Mondial', '209.90', '169.00', './imagens/ventp.jpg', 40, 'Ventiladores', 40),
(8, 'ventiladores', 'Ventilador de Coluna Malory ', '249.90', '179.90', './imagens/ventp1.jpg', 40, 'Ventiladores', 40),
(9, 'aspiradores', 'Aspirador de Po Britania Faciclean', '229.90', '167.00', './imagens/aspiradorp.jpg', 50, 'Aspiradores', 50),
(10, 'aspiradores', 'Aspirador de Po Vertical Philco', '239.90', '179.90', './imagens/aspiradorv.jpg', 50, 'Aspiradores', 50),
(11, 'centrifugas', 'Centrifuga de Roupas Britania ', '499.00', '399.00', './imagens/centrifugab.jpg', 60, 'Centrifugas', 60),
(12, 'centrifugas', 'Centrifuga de Roupas Mueller', '449.00', '349.00', './imagens/centrifugap.jpg', 60, 'Centrifugas', 60);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;