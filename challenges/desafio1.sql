  -- Descomente e altere as linhas abaixo:
    
    -- CREATE TABLE SpotifyClone.tabela(
    --     coluna1 tipo restricoes,
    --     coluna2 tipo restricoes,
    --     colunaN tipo restricoes,
    -- ) engine = InnoDB;
    
    -- INSERT INTO SpotifyClone.tabela (coluna1, coluna2)
    -- VALUES
    --   ('exemplo de dados 1', 'exemplo de dados A'),
    --   ('exemplo de dados 2', 'exemplo de dados B'),
    --   ('exemplo de dados 3', 'exemplo de dados C');

DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano_nome VARCHAR(55) NOT NULL,
plano_valor DECIMAL(5,3) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.artista(
artista_id INT  PRIMARY KEY AUTO_INCREMENT,
artista_nome VARCHAR(55) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_nome VARCHAR(55) NOT NULL,
ano_lançamento INT NOT NULL,
artista_id INT,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
cancoes_nome VARCHAR(55) NOT NULL,
duraçao_segundos INT NOT NULL,
album_id INT,
FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuarios(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario_nome VARCHAR(55) NOT NULL,
usuario_idade INT NOT NULL,
data_assinatura DATE NOT NULL,
plano_id INT,
FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.historico(
data_reproducao DATETIME NOT NULL,
usuario_id int not null,
cancoes_id int not null,
PRIMARY KEY (usuario_id, cancoes_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.seguindo(
usuario_id int not null,
artista_id int not null,
PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;



INSERT INTO SpotifyClone.plano (plano_nome, plano_valor)
VALUES
  ('gratuito', 0),
  ('universitário', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);


INSERT INTO SpotifyClone.artista (artista_nome)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

INSERT INTO SpotifyClone.album (album_nome, ano_lançamento, artista_id)
VALUES
  ('Renaissance', 2022, 1),
  ('Jazz', 1978, 2),
  ('Hot Space', 1982, 2),
  ('Falso Brilhante', 1998, 3),
  ('Vento de Maio', 2001, 3),
  ('QVVJFA?', 2003, 4),
  ('Somewhere Far Beyond', 2007, 5),
  ('I Put A Spell On You', 2012, 6);


INSERT INTO SpotifyClone.cancoes (cancoes_nome, duraçao_segundos, album_id)
VALUES
  ('BREAK MY SOUL', 279, 1),
  ("VIRGO'S GROOVE", 369, 1),
  ('ALIEN SUPERSTAR', 116, 1),
  ("Don't Stop Me Now", 203, 2),
  ('Under Pressure', 152, 3),
  ('Como Nossos Pais', 105, 4),
  ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
  ('Samba em Paris', 267, 6),
  ("The Bard's Song", 244, 7),
  ('Feeling Good', 100, 8);


INSERT INTO SpotifyClone.usuarios (usuario_nome, usuario_idade, data_assinatura, plano_id)
VALUES
  ('Barbara Liskov', 82 , '2019-10-20', 1),
  ('Robert Cecil Martin', 58,'2017-01-06',  1),
  ('Ada Lovelace', 37, '2017-12-30', 4),
  ('Martin Fowler', 46, '2017-01-17', 4),
  ('Sandi Metz', 58, '2018-04-29', 4),
  ('Paulo Freire', 19, '2018-02-14', 2),
  ('Bell Hooks', 26, '2018-01-05', 2),
  ('Christopher Alexander', 85, '2019-06-05', 3),
  ('Judith Butler', 45, '2020-05-13', 3),
  ('Jorge Amado', 58, '2017-02-17',  3);

  INSERT INTO SpotifyClone.seguindo (usuario_id, artista_id)
VALUES
  ('1', '1'),
  ('1', '2'),
  ('1', '3'),
  ('2', '1'),
  ('2', '3'),
  ('3', '2'),
  ('4', '4'),
  ('5', '5'),
  ('5', '6'),
  ('6', '6'),
  ('6', '1'),
  ('7', '6'),
  ('9', '3'),
  ('10', '2');

INSERT INTO SpotifyClone.historico (data_reproducao, usuario_id, cancoes_id)
VALUES
  ('2022-02-28 10:45:55', '1', '8'),
  ('2020-05-02 05:30:35', '1', '2'),
  ('2020-03-06 11:22:33', '1', '10'),
  ('2022-08-05 08:05:17', '2', '10'),
  ('2020-01-02 07:40:33', '2', '7'),
  ('2020-11-13 16:55:13', '3', '10'),
  ('2020-12-05 18:38:30', '3', '2'),
  ('2021-08-15 17:10:10', '4', '8'),
  ('2022-01-09 01:44:33', '5', '8'),
  ('2020-08-06 15:23:43', '5', '5'),
  ('2017-01-24 00:31:17', '6', '7'),
  ('2017-10-12 12:35:20', '6', '1'),
  ('2011-12-15 22:30:49', '7', '4'),
  ('2012-03-17 14:56:41', '8', '4'),
  ('2022-02-24 21:14:22', '9', '9'),
  ('2015-12-13 08:30:22', '10', '3');






