create database db_rh;
use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
salario decimal(6,3) not null,
cargo varchar(255) not null,
tempoempresa int not null,
primary key (id)
);


INSERT INTO tb_funcionarios (nome, idade, salario, cargo, tempoempresa) VALUES ("Fulana", 29, 3.000, "Analista", 2);
INSERT INTO tb_funcionarios (nome, idade, salario, cargo, tempoempresa) VALUES ("Mariana", 31, 4.500, "Sênior", 4);
INSERT INTO tb_funcionarios (nome, idade, salario, cargo, tempoempresa) VALUES ("Alexa", 30, 3.500, "Pleno", 3);
INSERT INTO tb_funcionarios (nome, idade, salario, cargo, tempoempresa) VALUES ("Camila", 35, 7.000, "Sênior", 6);
INSERT INTO tb_funcionarios (nome, idade, salario, cargo, tempoempresa) VALUES ("Carolina", 26, 3.000, "Analista", 3);

drop table tb_funcionarios;

select * from tb_funcionarios where salario > 2.000;

select * from tb_funcionarios where salario < 2.000; 

update tb_funcionarios set salario = 1.500 where id = 1;
