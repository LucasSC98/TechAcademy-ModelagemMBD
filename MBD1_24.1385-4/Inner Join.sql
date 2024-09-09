
use lucassc;

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



SELECT p.id, p.nome, p.idade, p.email, p.cidade, p.data_nascimento, p.sexo, p.estado,
       e.rua, e.numero, e.complemento, e.bairro
FROM pessoas p
INNER JOIN enderecos e ON p.id = e.pessoa_id;
