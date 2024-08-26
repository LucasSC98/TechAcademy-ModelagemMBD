select * from pessoas;

/* Comando Insert   */
INSERT INTO pessoas (id, nome, idade, email, cidade, data_nascimento, sexo, estado)
values

(16,'Luana Martins', 29, 'luanamartins2@gmail.com', 'Cabo Frio', '1995-03-12', 'F','RJ');

/* Comando update   */
update pessoas
set cidade = 'Boa Vista', estado = 'RR'
where id = 7;

/* Comando delete   */
delete from pessoas 
where id = 16;