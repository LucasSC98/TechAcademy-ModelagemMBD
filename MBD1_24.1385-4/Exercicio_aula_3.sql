/*Exercicio 1*/
select * from produto
where UNIDADE = 'UN'

/*Exercicio 2*/

select * from produto
where CODIGO_CLASSIFICACAO = 20 and QUANTIDADE > 20

/*Exercicio 3*/

select * from produto
where DESCRICAO like '%Bala%' and QUANTIDADE > 6 and CODIGO_CLASSIFICACAO = 003

/*Exercicio 4*/

select * from produto 
where DESCRICAO like '%martelo%' and CODIGO_CLASSIFICACAO != 001

/*Exercicio 5*/
select * from produto
where CODIGO_CLASSIFICACAO =002 and UNIDADE = 'CX' and QUANTIDADE < 5

/*Exercicio 6*/
select * from produto
where CODIGO_CLASSIFICACAO =002 and UNIDADE != 'CX' and QUANTIDADE >= 10 and QUANTIDADE <= 50

/*Exercicio 7*/
select * from produto
where (CODIGO_CLASSIFICACAO =021 or CODIGO_CLASSIFICACAO =008)
and (DESCRICAO like '%camiseta%' or DESCRICAO like '%bola%')

/*Exercicio 8*/
select * from produto
where CODIGO_CLASSIFICACAO =003 and UNIDADE = 'PCT'

/*Exercicio 9*/

select distinct UNIDADE from produto
where CODIGO_CLASSIFICACAO =006

/*Exercicio 10*/
select * from produto
where QUANTIDADE > 6 and QUANTIDADE < 10

/*Exercicio 11*/ 
select * from produto
where DESCRICAO like '%oleo%' and UNIDADE = 'L'

/*Exercicio 12*/ 
select *, QUANTIDADE * VALOR as total
from produto
where CODIGO_CLASSIFICACAO = 015 and UNIDADE = 'CX'
