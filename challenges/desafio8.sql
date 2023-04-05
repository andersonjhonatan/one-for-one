SELECT 
    art.artista_nome artista, 
    alb.album_nome album
FROM
    SpotifyClone.artista AS art
        INNER JOIN
    SpotifyClone.album alb ON art.artista_id = alb.artista_id
WHERE
    art.artista_nome = 'Elis Regina'
ORDER BY album;