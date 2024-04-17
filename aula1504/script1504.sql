/*Extração com SubQuery*/

use empregados_db;
select * from departamento;
select * from departamento where cod_depto % 2 = 0;
select cod_depto from departamento where cod_depto % 2 = 0;
select * from empregado where cod_depto in(
select cod_depto from departamento where cod_depto % 2 = 0
);

/*Calculo com Datas*/

select *,floor(datediff(now(), dt_nascimento)/ 365) as idade from dependente;

/*Exercicio*/ 
select * from empregado where cod_emp in( /*Selecione da tabela empregado onde cod_empregado é = ao que retorna no in*/
select cod_emp from dependente where ( /*Selecione cod_emp de dependente onde a data / 365 seja < 10*/
floor(datediff(now(), dt_nascimento)/ 365)) < 10);
