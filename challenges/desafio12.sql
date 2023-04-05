SELECT 
    art.artista_nome AS artista,
    IF(SUM(fav.favoritadas) >= 5,
        'A',
        IF(SUM(fav.favoritadas) >= 3,
            'B',
            IF(SUM(fav.favoritadas) >= 1, 'C', '-'))) AS ranking
FROM
    SpotifyClone.artista art
        INNER JOIN
    SpotifyClone.album alb ON art.artista_id = alb.artista_id
        INNER JOIN
    SpotifyClone.cancoes can ON alb.album_id = can.album_id
        LEFT JOIN
    (SELECT 
        cancoes_id, COUNT(usuario_id) AS favoritadas
    FROM
        SpotifyClone.favoritadas
    GROUP BY cancoes_id) fav ON can.cancoes_id = fav.cancoes_id
GROUP BY art.artista_id
ORDER BY SUM(fav.favoritadas) DESC , art.artista_nome ASC;