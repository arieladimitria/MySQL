create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255) not null,
descricao varchar(255) not null,
primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
poder_ataque int not null,
poder_defesa int not null,
armadura varchar(255) not null,
arma varchar(255) not null,
classe_id bigint DEFAULT NULL,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

INSERT INTO tb_classe (nome, habilidade, descricao) VALUES ("Arqueiro", "Ataque à distância", "Bom desempenho no uso do arco.");
INSERT INTO tb_classe (nome, habilidade, descricao) VALUES ("Mago", "Magia", "Alta inteligência para conjurar suas magias.");
INSERT INTO tb_classe (nome, habilidade, descricao) VALUES ("Paladino", "Suporte", "Campeões da justiça, bondade e lealdade.");
INSERT INTO tb_classe (nome, habilidade, descricao) VALUES ("Sacerdote", "Cura", "Devotos da espiritualidade e expressam sua resoluta fé.");
INSERT INTO tb_classe (nome, habilidade, descricao) VALUES ("Barbáro", "Fúria", "Não tem refinamento algum em seu jeito de lutar.");

INSERT INTO tb_personagem (nome, poder_ataque, poder_defesa, armadura, arma, classe_id) VALUES ("Crisania", 3700, 1800, "Tecido", "Adaga", 4);
INSERT INTO tb_personagem (nome, poder_ataque, poder_defesa, armadura, arma, classe_id) VALUES ("Valkyria", 1900, 3000, "Elmo", "Escudo", 3);
INSERT INTO tb_personagem (nome, poder_ataque, poder_defesa, armadura, arma, classe_id) VALUES ("Bekran", 1500, 4000, "Manto", "Arco e Flecha", 1);
INSERT INTO tb_personagem (nome, poder_ataque, poder_defesa, armadura, arma, classe_id) VALUES ("Christa", 3000, 2500, "Capa", "Vara", 2);
INSERT INTO tb_personagem (nome, poder_ataque, poder_defesa, armadura, arma, classe_id) VALUES ("Brakou", 1200, 3800, "Calça", "Espada", 5);
INSERT INTO tb_personagem (nome, poder_ataque, poder_defesa, armadura, arma, classe_id) VALUES ("Eren", 2600, 1900, "Manto", "Cajado", 2);
INSERT INTO tb_personagem (nome, poder_ataque, poder_defesa, armadura, arma, classe_id) VALUES ("Vikra", 3900, 1800, "Ombreira", "Lança", 5);
INSERT INTO tb_personagem (nome, poder_ataque, poder_defesa, armadura, arma, classe_id) VALUES ("Navis", 5000, 3500, "Manto", "Cajado", 4);

select * from tb_personagem where poder_ataque > 2000; 

select * from tb_personagem where poder_defesa between 1000 and 2000; 

select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.nome = "Sacerdote";



