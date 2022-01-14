create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
salgada_doce varchar(255) not null,
borda varchar(255) not null,
tamanho ENUM('P','M','G') not null,
primary key (id)
);

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
valor decimal(6,2) not null,
grossura_massa varchar(255) not null,
cortes int not null,
azeitona boolean not null,
categoria_id bigint DEFAULT NULL,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria (salgada_doce, borda, tamanho) VALUES ("Salgada", "Catupiry", 'P');
INSERT INTO tb_categoria (salgada_doce, borda, tamanho) VALUES ("Doce", "Chocolate", 'G');
INSERT INTO tb_categoria (salgada_doce, borda, tamanho) VALUES ("Doce", "Beijinho", 'P');
INSERT INTO tb_categoria (salgada_doce, borda, tamanho) VALUES ("Salgada", "Cheddar", 'M');
INSERT INTO tb_categoria (salgada_doce, borda, tamanho) VALUES ("Salgada", "Catupiry", 'G');

INSERT INTO tb_pizza (sabor, valor, grossura_massa, cortes, azeitona, categoria_id) VALUES ("Caipira", 75.00, "Grossa", 8, true, 5);
INSERT INTO tb_pizza (sabor, valor, grossura_massa, cortes, azeitona, categoria_id) VALUES ("Pepperoni", 50.00, "Média", 8, false, 5);
INSERT INTO tb_pizza (sabor, valor, grossura_massa, cortes, azeitona, categoria_id) VALUES ("Calabresa", 27.00, "Fina", 4, false, 1);
INSERT INTO tb_pizza (sabor, valor, grossura_massa, cortes, azeitona, categoria_id) VALUES ("Prestígio", 45.00, "Fina", 6, false, 2);
INSERT INTO tb_pizza (sabor, valor, grossura_massa, cortes, azeitona, categoria_id) VALUES ("Brigadeiro", 40.00, "Fina", 6, false, 2);
INSERT INTO tb_pizza (sabor, valor, grossura_massa, cortes, azeitona, categoria_id) VALUES ("Portuguesa", 62.00, "Grossa", 8, true, 5);
INSERT INTO tb_pizza (sabor, valor, grossura_massa, cortes, azeitona, categoria_id) VALUES ("Romeu e Julieta", 55.00, "Fina", 4, false, 3);
INSERT INTO tb_pizza (sabor, valor, grossura_massa, cortes, azeitona, categoria_id) VALUES ("Escarola", 32.00, "Média", 6, false, 1);

select * from tb_pizza where valor > 45.00;

select * from tb_pizza where valor between 29.00 and 60.00; 

select * from tb_pizza where sabor like "%C%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id = tb_pizza.categoria_id where tb_categoria.borda = "Catupiry";




