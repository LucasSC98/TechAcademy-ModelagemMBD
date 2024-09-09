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



CREATE TABLE enderecos (
    id int not NULL PRIMARY KEY,
    pessoa_id int NOT NULL,
    rua varchar(100),
    numero varchar(10),
    complemento varchar(50),
    bairro varchar(50),
    FOREIGN KEY (pessoa_id) REFERENCES pessoas(id)
);



INSERT INTO enderecos (id, pessoa_id, rua, numero, complemento, bairro)
VALUES
(1, 1, 'Rua A', '123', 'Apto 45', 'Centro'),
(2, 2, 'Rua B', '456', 'Casa 3', 'Centro'),
(3, 3, 'Avenida C', '789', '', 'Zona Sul'),
(4, 4, 'Rua D', '101', 'Apto 2', 'Vila Nova'),
(5, 5, 'Rua E', '202', '', 'Zona Norte'),
(6, 6, 'Avenida F', '303', '', 'Centro'),
(7, 7, 'Rua G', '404', 'Casa 5', 'Jardim'),
(8, 8, 'Rua H', '505', '', 'Centro'),
(9, 9, 'Rua I', '606', 'Apto 3', 'Vila Oliveira'),
(10, 10, 'Rua J', '707', '', 'Jardim'),
(11, 11, 'Rua K', '808', '', 'Centro'),
(12, 12, 'Avenida L', '909', 'Casa 2', 'Zona Norte'),
(13, 13, 'Rua M', '1010', '', 'Vila Nova'),
(14, 14, 'Rua N', '1111', '', 'Centro'),
(15, 15, 'Rua O', '1212', '', 'Boa Vista');





select p.cidade, 
count(p.id) as quantidade_pessoas
from  pessoas p
join enderecos e on p.id = e.pessoa_id
group by p.cidade;
   
   
   
select p.estado,
AVG(p.idade) AS idade_media
from pessoas p
join enderecos e ON p.id = e.pessoa_id
group by  p.estado;


select p.cidade,
sum(p.idade) as soma_idades
from pessoas p
join enderecos e on p.id = e.pessoa_id







