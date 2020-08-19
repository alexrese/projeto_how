-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19-Ago-2020 às 01:33
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL,
  `nomeAutor` varchar(100) NOT NULL,
  `nascionalidadeAutor` varchar(30) NOT NULL,
  `biografiaAutor` text NOT NULL,
  `ativoAutor` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`idAutor`, `nomeAutor`, `nascionalidadeAutor`, `biografiaAutor`, `ativoAutor`) VALUES
(1, 'Michael Crichton', 'Americano', 'Livro do jurassic park já e suficiente', 0),
(2, 'Carl Sagan', 'norte-americano', ' Carl Edward Sagan foi um cientista, físico, biólogo, astrônomo, astrofísico, cosmólogo, escritor, divulgador científico e ativista norte-americano. Sagan é autor de mais de 600 publicações científicas e também de mais de vinte livros de ciência e ficção científica.', 0),
(3, 'George R. R. Martin', 'Americano', 'George Raymond Richard Martin, nascido George Raymond Martin e mais conhecido como George R. R. Martin ou simplesmente GRRM, é um roteirista e escritor de ficção científica, terror e fantasia norte-americano. É mais conhecido por escrever a série de livros de fantasia épica As Crônicas de Gelo e Fogo.', 0),
(4, 'Stephen Edwin King ', 'Americano', 'é um escritor norte-americano de terror, ficção sobrenatural, suspense, ficção científica e fantasia. Os seus livros já venderam mais de 400 milhões de cópias,[2] com publicações em mais de 40 países. É o nono autor mais traduzido no mundo.', 0),
(5, 'Jared Mason Diamond', 'Americano', 'É um biólogo evolucionário, fisiologista, biogeógrafo e autor de não-ficção estado-unidense. É mais conhecido pelo seu livro Guns, Germs, and Steel, vencedor do Prêmio Pulitzer. Nascimento: 10 de setembro de 1937 (idade 82 anos), Boston, Massachusetts, EUA', 0),
(6, 'Isaac Asimov', 'Russo', 'Isaac Asimov foi um escritor e bioquímico norte-americano, nascido na Rússia, autor de obras de ficção científica e divulgação científica. Asimov é considerado um dos mestres da Ficção Científica e, junto com Robert A. Heinlein e Arthur C. Clarke, foi considerado um dos "três grandes" da ficção científica.', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `idEditora` int(11) NOT NULL,
  `nomeEditora` varchar(50) NOT NULL,
  `cidadeEditora` varchar(50) NOT NULL,
  `ufEditora` varchar(2) NOT NULL,
  `ativoEditora` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`idEditora`, `nomeEditora`, `cidadeEditora`, `ufEditora`, `ativoEditora`) VALUES
(1, 'Univali', 'Itajai', 'SC', 0),
(2, 'Abril', 'São Paulo', 'SP', 0),
(3, 'Interessante', 'São Paulo', 'SP', 0),
(4, 'Veja', 'São Paulo', 'SP', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL,
  `nomeGenero` varchar(30) NOT NULL,
  `descricaoGenero` text NOT NULL,
  `ativoGenero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`idGenero`, `nomeGenero`, `descricaoGenero`, `ativoGenero`) VALUES
(1, 'Terror', 'Muitos gritos', 0),
(2, 'Aventura', 'Muito divertido', 0),
(3, 'Romance', 'Sempre termina bem', 0),
(4, 'Policial', 'Sempre tem uma investigação', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `idLivro` int(11) NOT NULL,
  `idAutorLivro` int(11) NOT NULL,
  `idEditoraLivro` int(11) NOT NULL,
  `idGeneroLivro` int(11) NOT NULL,
  `tituloLivro` varchar(100) NOT NULL,
  `anoPublicacaoLivro` int(11) NOT NULL,
  `descricaoLivro` text NOT NULL,
  `numeroPaginasLivro` int(11) NOT NULL,
  `volumeLivro` int(11) NOT NULL,
  `idiomaLivro` varchar(30) NOT NULL,
  `ativoLivro` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`idLivro`, `idAutorLivro`, `idEditoraLivro`, `idGeneroLivro`, `tituloLivro`, `anoPublicacaoLivro`, `descricaoLivro`, `numeroPaginasLivro`, `volumeLivro`, `idiomaLivro`, `ativoLivro`) VALUES
(1, 3, 2, 1, 'Fortaleza Digital de Dan Brown', 1998, 'Dan Brown é o primeiro livro do escritor estadunidense, anterior aos best-sellers O Código da Vinci e a Anjos e Demônios. Em 2004 esteve na lista dos mais vendidos do New York Times simultaneamente aos três primeiros livros de Dan Brown.', 300, 3, 'Brasileiro', 0),
(2, 2, 1, 3, 'Os Dragões do Éden', 1977, 'The Dragons of Eden é um livro de Carl Sagan publicado em 1977, vencedor do prêmio Pulitzer daquele ano. Nessa obra são combinados os campos de antropologia, biologia evolucionária, psicologia e ciência da computação para dar uma perspectiva balanceada de como a inteligência humana evoluiu', 263, 1, 'Brasileiro', 0),
(3, 2, 3, 2, 'Carrie, a estranha', 1974, 'Carrie é uma jovem tímida, perseguida pelos colegas, professores e impedida pela mãe de levar uma vida comum. No dia de sua formatura, descobre que possui poderes telecinéticos quando os jovens mais populares da escola a humilham diante de todos.', 199, 1, 'Brasileiro', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idAutor`);

--
-- Indexes for table `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`idEditora`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`idLivro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `editora`
--
ALTER TABLE `editora`
  MODIFY `idEditora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `idGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
