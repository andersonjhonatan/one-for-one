SELECT 
    CASE
        WHEN usu.usuario_idade <= 30 THEN 'Até 30 anos'
        WHEN usu.usuario_idade <= 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT (usu.usuario_id)) total_pessoas_usuarias,
    COUNT(usu.usuario_id = fav.usuario_id) AS total_favoritadas
FROM
    SpotifyClone.usuarios usu
        LEFT JOIN
    SpotifyClone.favoritadas fav ON usu.usuario_id = fav.usuario_id
GROUP BY faixa_etaria