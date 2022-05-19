CREATE DATABASE JOGO;
USE JOGO;

CREATE TABLE jogador (
num_jogador int PRIMARY KEY AUTO_INCREMENT,
nome_jogador varchar(255),
cod_equipes int
);

CREATE TABLE equipes (
cod_equipes int PRIMARY KEY AUTO_INCREMENT,
nome_equipe varchar(255)
);

ALTER TABLE jogador ADD FOREIGN KEY(cod_equipes) REFERENCES equipes (cod_equipes);
