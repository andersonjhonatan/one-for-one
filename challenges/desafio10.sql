CREATE TABLE SpotifyClone.favoritadas (
  usuario_id INT,
  cancoes_id INT,
  PRIMARY KEY (usuario_id , cancoes_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (cancoes_id) REFERENCES cancoes (cancoes_id)
);

INSERT INTO SpotifyClone.favoritadas (usuario_id, cancoes_id) VALUES
	('1', '3'),
  ('1', '6'),
  ('1', '10'),
  ('2', '4'),
  ('3', '1'),
  ('3', '3'),
  ('4', '7'),
  ('4', '4'),
  ('5', '10'),
  ('5', '2'),
  ('8', '4'),
  ('9', '7'),
  ('10','3');