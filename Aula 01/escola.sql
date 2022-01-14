create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
media decimal(2,1) not null,
professora varchar(255) not null,
pendenciafinanceira boolean not null,
primary key (id)
);

INSERT INTO tb_alunos (nome, idade, media, professora, pendenciafinanceira) VALUES ("Marina", 12, 7, "Luciana", false);
INSERT INTO tb_alunos (nome, idade, media, professora, pendenciafinanceira) VALUES ("Luciana", 11, 9, "Luciana", false);
INSERT INTO tb_alunos (nome, idade, media, professora, pendenciafinanceira) VALUES ("Gabriel", 9, 5, "Roberta", true);
INSERT INTO tb_alunos (nome, idade, media, professora, pendenciafinanceira) VALUES ("Jonas", 12, 7, "Luciana", false);
INSERT INTO tb_alunos (nome, idade, media, professora, pendenciafinanceira) VALUES ("Mirella", 14, 7, "Makino", true);
INSERT INTO tb_alunos (nome, idade, media, professora, pendenciafinanceira) VALUES ("Victor", 13, 9.5, "Makino", false);
INSERT INTO tb_alunos (nome, idade, media, professora, pendenciafinanceira) VALUES ("Stephanie", 8, 8.5, "Roberta", false);
INSERT INTO tb_alunos (nome, idade, media, professora, pendenciafinanceira) VALUES ("Marli", 9, 4, "Roberta", false);


select * from tb_alunos where media > 7;

select * from tb_alunos where media < 7; 

update tb_alunos set media = 6 where id = 6;
