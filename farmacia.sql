create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
setor varchar(255) not null,
local_farmacia varchar(255) not null,
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
valor decimal(6,2) not null,
fabricante varchar(255) not null,
tarja_preta boolean not null,
estoque int not null,
categoria_id bigint DEFAULT NULL,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria (tipo, setor, local_farmacia) VALUES ("Maquiagem", "Cosméticos", "São Paulo");
INSERT INTO tb_categoria (tipo, setor, local_farmacia) VALUES ("Perfumes", "Cosméticos", "São Paulo");
INSERT INTO tb_categoria (tipo, setor, local_farmacia) VALUES ("Comprimidos", "Gôndolas", "São Paulo");
INSERT INTO tb_categoria (tipo, setor, local_farmacia) VALUES ("Remédios com receita", "Área Restrita", "São Paulo");
INSERT INTO tb_categoria (tipo, setor, local_farmacia) VALUES ("Vitaminas", "Vitimas e Suplementos", "São Paulo");


INSERT INTO tb_produto (nome, valor, fabricante, tarja_preta, estoque, categoria_id) VALUES ("Rivotril", 75.00, "Genérico", true, 50, 4);
INSERT INTO tb_produto (nome, valor, fabricante, tarja_preta, estoque, categoria_id) VALUES ("Aspirina", 3.00, "Bayer", false, 100, 3);
INSERT INTO tb_produto (nome, valor, fabricante, tarja_preta, estoque, categoria_id) VALUES ("Buscopan", 25.00, "Boehringer", false, 200, 3);
INSERT INTO tb_produto (nome, valor, fabricante, tarja_preta, estoque, categoria_id) VALUES ("Batom Vult", 30.00, "Vult", false, 15, 1);
INSERT INTO tb_produto (nome, valor, fabricante, tarja_preta, estoque, categoria_id) VALUES ("Base Vult", 55.00, "Vult", false, 15, 1);
INSERT INTO tb_produto (nome, valor, fabricante, tarja_preta, estoque, categoria_id) VALUES ("Perfume", 38.00, "Giovanna Baby", false, 40, 2);
INSERT INTO tb_produto (nome, valor, fabricante, tarja_preta, estoque, categoria_id) VALUES ("Vitamina C", 25.00, "Sundown", false, 60, 5);
INSERT INTO tb_produto (nome, valor, fabricante, tarja_preta, estoque, categoria_id) VALUES ("Vitamina D", 119.00, "Sundown", false, 40, 5);


select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00; 

select * from tb_produto where nome like "%B%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id = tb_produto.categoria_id where tb_categoria.tipo = "Maquiagem";
