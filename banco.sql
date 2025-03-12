CREATE TABLE Jogo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produtora VARCHAR(255),
    ano_de_lancamento YEAR
);

CREATE TABLE Nome_do_Jogo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    genero VARCHAR(255)
);

CREATE TABLE Jogador (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nickname VARCHAR(255),
    level INT
);

CREATE TABLE Relacionamentos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_nome_do_jogo INT,
    id_jogo INT,
    id_jogador INT,
    FOREIGN KEY (id_nome_do_jogo) REFERENCES Nome_do_Jogo(id),
    FOREIGN KEY (id_jogo) REFERENCES Jogo(id),
    FOREIGN KEY (id_jogador) REFERENCES Jogador(id)
);

CREATE TABLE Relacoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_jogo INT,
    id_nome_do_jogo INT,
    id_jogador INT,
    FOREIGN KEY (id_jogo) REFERENCES Jogo(id),
    FOREIGN KEY (id_nome_do_jogo) REFERENCES Nome_do_Jogo(id),
    FOREIGN KEY (id_jogador) REFERENCES Jogador(id)
);
