-- Active: 1706883331484@@127.0.0.1@3306@cadastro
-- *********************************************** BASE DE UM BANCO DE DADOS *************************************************************************
-- criando um banco de dados
create database teste;
-- ou
create database teste
default character set utf8mb4
default collate utf8mb4_general_ci;

-- abrir o banco de dados
use teste;

-- Criando uma tabela dentro do banco de dados cadastro
create table pessoas (
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nascionalidade varchar(20) default 'Brasil'
) default charset = utf8;

-- criando uma tabela se ela ja não exitir no banco de dados
create table if not exists cursos (
nome varchar(30) not null unique,
descriçao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset = utf8mb4;

-- Criando uma tabela dentro do banco de dados cadastro usando chave primaria
create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nascionalidade varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8;

-- Para apagar um banco de dados ou uma tabela
drop database teste;
drop table pessoas;
-- apagar uma tabela se ela existir
drop table if exists pessoas;

-- Mostrar a tabela do banco de dados
select * from cursos;
select * from pessoas;

-- descrever a estrutura de uma tabela
describe cursos;
-- ou
desc cursos;
desc pessoas;

-- ************************************** Se caso esquecer de colocar o PRIMARY KEY ******************************************************************
alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

-- ********************************************* INSERINDO DADOS EM UMA TABELA ***********************************************************************
-- Inserindo dados na tabela com chave primaria
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nascionalidade)
values
(default,'Luis','1996-03-10','M','85','1.75',default);
-- ou sem a chave primaria
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nascionalidade)
values
('num','Eliete','1996-03-10','M','85','1.75','Brasil');
-- também podendo abreviar o values / inserindo mais de uma linha na caluna
insert into pessoas values
(1,'Daniel Morais','Auxiliar Administrat','1984-01-02','M',78.50,1.83,'Brasil'),(2,'Talita Nascimento','Farmacêutico','1999-12-30','F',55.20,1.65,'Portugal'),(3,'Emerson Gabriel','Programador','1920-12-30','M',50.20,1.65,'Moçambique'),(4,'Lucas Damasceno','Auxiliar Administrat','1930-11-02','M',63.20,1.75,'Irlanda'),(5,'Leila Martins','Farmacêutico','1975-04-22','F',99.00,2.15,'Brasil'),(6,'Letícia Neves','Programador','1999-12-03','F',87.00,2.00,'Brasil'),(7,'Janaína Couto','Auxiliar Administrat','1987-11-12','F',75.40,1.66,'EUA'),(8,'Carlisson Rosa','Professor','2010-08-01','M',78.22,1.98,'Brasil'),(9,'Jackson Telles','Programador','1999-01-23','M',55.75,1.33,'Portugal'),(10,'Danilo Araujo','Dentista','1975-12-10','M',99.21,1.87,'EUA'),(11,'Andreia Delfino','Auxiliar Administrat','1975-07-01','F',48.64,1.54,'Irlanda'),(12,'Valter Vilmerson','Ator','1985-10-12','M',88.55,2.03,'Brasil'),(13,'Allan Silva','Programador','1993-11-11','M',76.99,1.55,'Brasil'),(14,'Rosana Kunz','Professor','1935-01-16','F',55.24,1.87,'Brasil'),(15,'Josiane Dutra','Empreendedor','1950-01-20','F',98.70,1.04,'Portugal'),(16,'Elvis Schwarz','Dentista','2011-05-07','M',66.69,1.76,'EUA'),(17,'Paulo Narley','Auxiliar Administrat','1997-03-17','M',120.10,2.22,'Brasil'),(18,'Joade Assis','Médico','1930-12-01','M',65.88,1.78,'França'),(19,'Nara Matos','Programador','1978-03-17','F',65.90,1.33,'Brasil'),(20,'Marcos Dissotti','Empreendedor','2010-01-01','M',53.79,1.54,'Portugal'),(21,'Ana Carolina Mendes','Ator','2000-12-15','F',88.30,1.54,'Brasil'),(22,'Guilherme de Sousa','Dentista','2001-05-18','M',132.70,1.97,'Moçambique'),(23,'Bruno Torres','Auxiliar Administrat','2000-01-30','M',44.65,1.65,'Brasil'),(24,'Yuji Homa','Empreendedor','1996-12-25','M',33.90,1.22,'Japão'),(25,'Raian Porto','Programador','1989-05-05','M',54.89,1.54,'Brasil'),(26,'Paulo Batista','Ator','1999-03-15','M',110.12,1.87,'Portugal'),(27,'Monique Precivalli','Auxiliar Administrat','2013-12-30','F',48.20,1.22,'Brasil'),(28,'Herisson Silva','Auxiliar Administrat','1965-10-10','M',74.65,1.56,'EUA'),(29,'Tiago Ulisses','Dentista','1993-04-22','M',150.30,2.35,'Brasil'),(30,'Anderson Rafael','Programador','1989-12-01','M',64.22,1.44,'Irlanda'),(31,'Karine Ribeiro','Empreendedor','1988-10-01','F',42.10,1.65,'Brasil'),(32,'Roberto Luiz Debarba','Ator','2007-01-09','M',77.44,1.56,'Brasil'),(33,'Jarismar Andrade','Dentista','2000-06-23','F',63.70,1.33,'Brasil'),(34,'Janaina Oliveira','Professor','1955-03-12','F',52.90,1.76,'Canadá'),(35,'Márcio Mello','Programador','2011-11-20','M',54.11,1.55,'EUA'),(36,'Robson Rodolpho','Auxiliar Administrat','2000-08-08','M',110.10,1.76,'Brasil'),(37,'Daniele Moledo','Empreendedor','2006-08-11','F',101.30,1.99,'Brasil'),(38,'Neto Sophiate','Ator','1996-05-17','M',59.28,1.65,'Portugal'),(39,'Neriton Dias','Auxiliar Administrat','2009-10-30','M',48.99,1.29,'Brasil'),(40,'André Schmidt','Programador','1993-07-26','M',55.37,1.22,'Angola'),(41,'Isaias Buscarino','Dentista','2001-01-07','M',99.90,1.55,'Moçambique'),(42,'Rafael Guimma','Empreendedor','1968-04-11','M',88.88,1.54,'Brasil'),(43,'Ana Carolina Hernandes','Ator','1970-10-11','F',65.40,2.08,'EUA'),(44,'Luiz Paulo','Professor','1984-11-01','M',75.12,1.38,'Portugal'),(45,'Bruna Teles','Programador','1980-11-07','F',55.10,1.86,'Brasil'),(46,'Diogo Padilha','Auxiliar Administrat','2000-03-03','M',54.34,1.88,'Angola'),(47,'Bruno Miltersteiner','Dentista','1986-02-19','M',77.45,1.65,'Alemanha'),(48,'Elaine Nunes','Programador','1998-08-15','F',35.90,2.00,'Canadá'),(49,'Silvio Ricardo','Programador','2012-03-12','M',65.99,1.23,'EUA'),(50,'Denilson Barbosa da Silva','Empreendedor','2000-01-08','M',97.30,2.00,'Brasil'),(51,'Jucinei Teixeira','Professor','1977-11-22','F',44.80,1.76,'Portugal'),(52,'Bruna Santos','Auxiliar Administrat','1991-12-01','F',76.30,1.45,'Canadá'),(53,'André Vitebo','Médico','1970-07-01','M',44.11,1.55,'Brasil'),(54,'Andre Santini','Programador','1991-08-15','M',66.00,1.76,'Itália'),(55,'Ruan Valente','Programador','1998-03-19','M',101.90,1.76,'Canadá'),(56,'Nailton Mauricio','Médico','1992-04-25','M',86.01,1.43,'EUA'),(57,'Rita Pontes','Professor','1999-09-02','F',54.10,1.35,'Angola'),(58,'Carlos Camargo','Programador','2005-02-22','M',124.65,1.33,'Brasil'),(59,'Philppe Oliveira','Auxiliar Administrat','2000-05-23','M',105.10,2.19,'Brasil'),(60,'Dayana Dias','Professor','1993-05-30','F',88.30,1.66,'Angola'),(61,'Silvana Albuquerque','Programador','1999-05-22','F',56.00,1.50,'Brasil');
select * from pessoas;

-- ********************************************* ALTERAR A ESTRUTURA DE UMA TABELA *******************************************************************
-- acrescentando uma coluna na ultima posicao
alter table pessoas
add column profissao varchar(10);

-- escolhendo a posição
alter table pessoas
add column profissao varchar(10) after nome;

-- colocando na primeira posição
alter table pessoas
add column codigo int first;

-- modificando definições / mudar tipo primitivo e as constraints
alter table pessoas
modify column profissao varchar(20) not null default '';

-- alterado o nome da coluna / mudar tipo primitivo, constraints e o nome da tabela
alter table pessoas
change column profissao prof varchar(20) not null default '';

-- alterando o nome de uma tabela
alter table curso
rename to cursos;

-- apagando uma coluna
alter table pessoas
drop column codigo;

-- ************************************************** MANIPULANDO LINHAS******************************************************************************
insert into curso values
('1','HTML5','Curso de HTML5',40,37,2014),
('2','Algoritmos','Lógica de Programação',20,15,2014),
('3','Photoshop5','Dicas de Photoshop CC',10,8,2014),
('4','PHP','Curso de PHP para iniciantes',40,20,2015),
('5','Java','Introdução à Linguagem Java',40,29,2015),
('6','MySQL','Bancos de Dados MySQL',30,15,2016),
('7','Word','Curso completo de Word',40,30,2016),
('8','Python','Curso de Python',40,18,2017),
('9','POO','Curso de Programação Orientada a Objetos',60,35,2016),
('10','Excel','Curso completo de Excel',40,30,2017),
('11','Responsividade','Curso de Responsividade',30,15,2018),
('12','C++','Curso de C++ com Orientação a Objetos',40,25,2017),
('13','C#','Curso de C#',30,12,2017),
('14','Android','Curso de Desenvolvimento de Aplicativos para Android',60,30,2018),
('15','JavaScript','Curso de JavaScript',35,18,2017),
('16','PowerPoint','Curso completo de PowerPoint',30,12,2018),
('17','Swift','Curso de Desenvolvimento de Aplicativos para iOS',60,30,2019),
('18','Hardware','Curso de Montagem e Manutenção de PCs',30,12,2017),
('19','Redes','Curso de Redes para Iniciantes',40,15,2016),
('20','Segurança','Curso de Segurança',15,8,2018),
('21','SEO','Curso de Otimização de Sites',30,12,2017),
('22','Premiere','Curso de Edição de Vídeos com Premiere',20,10,2017),
('23','After Effects','Curso de Efeitos em Vídeos com After Effects',20,10,2018),
('24','WordPress','Curso de Criação de Sites com WordPress',60,30,2019),
('25','Joomla','Curso de Criação de Sites com Joomla',60,30,2019),
('26','Magento','Curso de Criação de Lojas Virtuais com Magento',50,25,2019),
('27','Modelagem de Dados','Curso de Modelagem de Dados',30,12,2020),
('28','HTML4','Curso Básico de HTML, versão 4.0',20,9,2010),
('29','PHP7','Curso de PHP, versão 7.0',40,20,2020),
('30','PHP4','Curso de PHP, versão 4.0',30,11,2010);
select * from cursos;

-- altera apenas um campo de linha
update cursos
set ano = '2016'
where idcurso = '7';

-- Altera uma linha, mas mais de um campo da tabela limitando apenas uma linha com o LIMIT
 update curso
 set nome = 'PHP', ano = '2015'
 where idcurso = '4'
 limit 1;
 
 -- altera varias linhas ao mesmo tempo
 update cursos
 set ano = '2018', carga = '0'
 where ano = '2050'; -- tambem podendo optar por limitar o número de campos a serem alterados com LIMIT
 
 -- Mostra a tabela
select * from pessoas;
 
 -- Apaga uma linha da tabela
 delete from pessoas
 where ano = '2050'; -- tambem podendo optar por limitar o número de campos a serem apagados com LIMIT
 
 -- inserindo uma linha na tabela
 insert into cursos values
('31','Dança do ventre','Danças Rítmicas','40','30','2018');
 
 -- Apaga todas linhas de uma tabela
 truncate table cursos;
 -- ou
 truncate cursos;
 
-- ********************************************  GERENCIANDO CÓPIAS DE SEGURANÇA *********************************************************************
--          PARA EXPORTAR
-- Clique um SERVER, depois em DATA EXPORT, seleciona o banco de dados que você quer exportar, depois a(s) tabelas;
-- Selecione o tipo de DUMP que você deseja(data ou estrutura);
-- Escolha EXPORT OPTIONS que você queira;
-- Selecione INCLUDE CREATE SCHEMA;
-- Ai é só apertar o START EXPORT.

--          PARA IMPORTAR
-- Clique um SERVER, depois em DATA IMPORT;
-- Seleciona a pasta em que o banco de dados que você quer importar esteja salva;
-- Ai é só apertar o START EXPORT.

-- ********************************************* ORDENANDO UMA TABELA COM SELECT *********************************************************************
-- colocar em ordem alfabética
select * from cursos
order by nome;

-- colocar em ordem decrescente
select * from cursos
order by nome desc;

-- colocar em ordem crescente
select * from cursos
order by nome asc;

-- ordenar por campos desejados
select ano, nome, carga from cursos
order by ano, nome;

-- ordenar por linha podendo usar:
-- < (menor que);
-- <= (menor ou igual à);
-- > (maior que);
-- >= (maior ou igual à);
-- != (diferente que);
-- <> (diferente que).
select * from cursos
where ano = '2016'
order by nome;

-- ordenar por linha, mas escolhendo os campos
select nome, descriçao, ano from cursos
where ano <= '2015'
order by ano, nome;

-- ordenar entre uma coisa e outra
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

-- ordenar por valores especificos
select nome, descriçao, ano from cursos
where ano in ('2014', '2016')
order by ano;

-- usando 'AND' para selecionar dados, coletando informações somente se atenderem a todos requisitos do 'AND'
/*                                   p  |  q  | p AND q
								    ---------------------
									 V  |  V  |    V
									 V  |  F  |    F
									 F  |  V  |    F
									 F  |  F  |    F
*/
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

-- usando 'OR' para selecionar dados, coletando informações do primeiro ou seguno requisito do 'OR'
 /*									 p  |  q  |  p OR q
								    ---------------------
									 V  |  V  |    V
									 V  |  F  |    V
									 F  |  V  |    V
									 F  |  F  |    F
*/
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

-- usando o operador 'LIKE' e WildCard '%'
/* dependendo da posição da Wildcard '%' procura a letra que deseja tanto no começo como no final ou em ambas partes:
	• % depois da letra vai procarar palavras com a primeira letra escolhida, exp.: 'A%' Algoritimo
    • % antes da letra vai procurar palavras com a ultima letra escolhida, exp.: '%A' segurançA
    • % antes e depois vai procurar palavras que tenham a letra escolhida em qualquer posição da palavra, exp.: '%A%' responsividAde
*/
select * from cursos
where nome like '%a%';
select * from cursos where nome like 'ph%p%';

-- para pegar palavras que tanha qualquer caracter usando outro tipo de wildcard
select * from cursos
where nome like 'ph%p_';

-- usar o operador 'LIKE' e WildCard '%' para procurar palavras que não tenha a letra desejada
-- podendo usar todos parametros '%' exp.: 'A%', '%A', '%A%'
select * from cursos
where nome not like 'a%';

--                                                  FUNÇÃO DE DISTINÇÃO

-- procurar palavras em uma lista sem repetir palavras com DISTINCT
select distinct nascionalidade from pessoas
order by nascionalidade;

--                                                   FUNÇÃO DE AGREGAÇÃO

-- função de agregação, server para contar quantos registros tem um tabela
select count(*) from cursos;
select count(*) from cursos where carga > 40;

-- ordenar pelo valor MÁXIMO em uma tabela
select nome, max(carga) from cursos order by carga;
select nome, max(totaulas) from cursos where ano = '2016';

-- ordenar pelo valor MÍNIMO em uma tabela
select nome, min(carga) from cursos order by carga;

-- somar varios valores com 'SUM'
select sum(totaulas) from cursos where ano = '2016';

-- saber a media de valores somados com 'AVG'
select avg(totaulas) from cursos where ano = '2016';

--                                                    FUNÇÃO DE AGRUPAMENTO
--                                                    agrupando e agregando

-- agrupar registro com o 'GROUP BY'
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;
-- ou
select carga, totaulas, count(*) from cursos where totaulas = 30
group by carga;

-- agrupar com parametro
select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

-- verifica a média
select avg(carga) from cursos;
-- mostra somente um grupo onde estao acima da media selecionada
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);
-- aula 13 do curso em video de SQL, muito importante

-- ************************************************ CHAVES ESTRANGEIRAS E JOIN ***********************************************************************
select * from cursos;
desc cursos;
select * from pessoas;

-- ligando um banco de dados com outro usando chave estrangeira
alter table pessoas
add column cursopreferido int;
-- inserindo a chave de ligamento com 'FOREIGN KEY'
alter table pessoas
add foreign key(cursopreferido)
references cursos(idcurso);
-- ligando-os
update pessoas
set cursopreferido = '6' 
where id = '1';

-- ligando as tabelas com 'INNER JOIN'
select pessoas.nome, cursos.nome, cursos.ano 
from pessoas inner join cursos
on cursos.idcurso = pessoas.cursopreferido;

-- ligando as tabelas com 'OUTER JOIN' dando preferencia a esquerda
select pessoas.nome, cursos.nome, cursos.ano
from pessoas left outer join cursos
on cursos.idcurso = pessoas.cursopreferido;
-- ou
-- ligando as tabelas com 'OUTER JOIN' dando preferencia a direita
select pessoas.nome, cursos.nome, cursos.ano
from pessoas right outer join cursos
on cursos.idcurso = pessoas.cursopreferido;

-- ************************************************* APELIDANDO TABELAS COM 'AS' *********************************************************************
-- usando 'AS' para 'apelidar' uma tabela
select p.nome, c.nome, c.ano 
from pessoas as p inner join cursos as c
on c.idcurso = p.cursopreferido
order by p.nome;

-- ************************************************ INNER JOIN COM VÁRIAS TABELAS ********************************************************************
use teste;

create table pessoas_assisti_curso (
	id int not null auto_increment,
    data date,
    idpessoas int,
    idcurso int,
    primary key (id),
    foreign key (idpessoas) references pessoas(id),
    foreign key (idcurso) references cursos(idcurso)
) default charset = utf8mb4;

insert into pessoas_assisti_curso values
(default, '2014-03-01', '1', '2');

select * from pessoas_assisti_curso;

select p.nome, c.nome from pessoas p
join pessoas_assisti_curso a
on p.id = a.idpessoas
join cursos c
on c.idcurso = a.idcurso
order by p.nome;
-- ***************************************************************************************************************************************************