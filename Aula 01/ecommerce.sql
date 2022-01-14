create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
estoque int not null,
preco decimal(6,2) not null,
cor varchar(255) not null,
marca varchar(255) not null,
primary key (id)
);

INSERT INTO tb_produtos (nome, estoque, preco, cor, marca) VALUES ("Camisa Logo Mania", 7, 289.90, "Listrada", "Nike");
INSERT INTO tb_produtos (nome, estoque, preco, cor, marca) VALUES ("Bolsa Academia", 10, 350.00, "Preto", "Adidas");
INSERT INTO tb_produtos (nome, estoque, preco, cor, marca) VALUES ("Tênis Jordan", 3, 980.99, "Rosa", "Nike");
INSERT INTO tb_produtos (nome, estoque, preco, cor, marca) VALUES ("Camiseta", 20, 550.00, "Branca", "Adidas");
INSERT INTO tb_produtos (nome, estoque, preco, cor, marca) VALUES ("Tênis", 9, 799.90, "Roxo", "Adidas");
INSERT INTO tb_produtos (nome, estoque, preco, cor, marca) VALUES ("Shorts", 30, 250.00, "Branco", "Reebok");
INSERT INTO tb_produtos (nome, estoque, preco, cor, marca) VALUES ("Top para Treino", 15, 299.90, "Vermelho", "Asics");
INSERT INTO tb_produtos (nome, estoque, preco, cor, marca) VALUES ("Cropped", 10, 350.00, "Preto", "Asics");


select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500; 

update tb_produtos set estoque = 10 where id = 3;
