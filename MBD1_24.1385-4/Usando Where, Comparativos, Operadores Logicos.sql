CREATE TABLE pessoas (
    id int not NULL PRIMARY KEY,
    nome varchar(50) NOT NULL,
    idade int,
    email varchar(100),
    cidade varchar(50),
    data_nascimento date,
    sexo char(1),
    estado varchar(2)
);


use lucasSC;

INSERT INTO pessoas (id, nome, idade, email, cidade, data_nascimento, sexo, estado)
VALUES
(1,'Ana Silva', 28, 'ana.silva@gmail.com', 'Curitiba', '1996-05-14', 'F', 'PR'),
(2,'Carlos Lima', 34, 'carlos.lima@icloud.com', 'São Luís', '1990-02-20', 'M', 'MA'),
(3,'Fernanda Sousa', 25, 'fernanda.sousa@gmail.com', 'Manaus', '1999-07-18', 'F', 'AM'),
(4,'João Alves', 30, 'joao.alves@outlook.com', 'São Paulo', '1993-01-11', 'M','SP'),
(5,'Mariana Costa', 27, 'mariana.costa@outlook.com', 'Rio De Janeiro', '1997-03-23', 'F','RJ'),
(6,'Pedro Rocha', 29, 'pedro.rocha@icloud.com', 'Macapá', '1995-10-08', 'M','AP'),
(7,'Julia Martins', 32, 'julia.martins@hotmail.com', 'Guarulhos', '1991-12-15', 'F', 'SP'),
(8,'Lucas Custodio', 26, 'lucas.custtodio98@gmail.com', 'Campo Mourão', '1998-07-04', 'M','PR'),
(9,'Bianca Ribeiro', 31, 'bianca.ribeiro@gmail.com', 'Ribeirão Preto', '1992-09-12', 'F','SP'),
(10,'Rafael Brandão', 54, 'rafael.brandao@yahoo.com', 'Maringá', '1970-06-17', 'M','PR'),
(11,'Danielle Cristina', 28, 'cristinadanielle2@icloud.com', 'São Luís', '1996-03-31', 'F', 'MA'),
(12,'Alex Ferreira', 25, 'alexferreira99@gmail.com', 'Manaus', '1999-07-18', 'M', 'AM'),
(13,'Lucas Felipe', 20, 'lucas.felipe32@outlook.com', 'São Paulo', '2004-01-11', 'M','SP'),
(14,'Maria Silva', 17, 'mariasilva9@outlook.com', 'Rio De Janeiro', '2007-03-23', 'F','RJ'),
(15,'Pedro Cruz', 80, 'pedro.cruz@icloud.com', 'Recife', '1944-07-08', 'M','PE');




/* Usando operador > */
select * from pessoas
where idade > 20

/* Usando operador < */
select * from pessoas
where idade < 20

/* Usando operador <= */
select * from pessoas
where idade <= 20

/* Usando operador > < */
select * from pessoas
where idade > 20 and idade < 30

/* Usando operador = */
select * from pessoas
where idade = 80

/* Usando operador >= */
select * from pessoas
where idade >= 25 and estado ='PR'

/* Usando OR */
select * from pessoas
where idade = 20 or estado ='PR'

/* Usando NOT */
select * from pessoas
where not estado = 'SP'

/* Usando LIKE */
select * from pessoas
where nome like '%danielle%'

/* Usando operador =! */
select * from pessoas
where idade != 25