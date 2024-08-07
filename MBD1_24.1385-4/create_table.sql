CREATE TABLE pessoas (
    id INT not NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT,
    email VARCHAR(100),
    cidade VARCHAR(50),
    data_nascimento DATE,
    sexo char(1),
);
