SELECT 
    art.artista_nome artista,
    alb.album_nome album,
    COUNT(seg.artista_id)  pessoas_seguidoras
FROM
    SpotifyClone.artista art
        INNER JOIN
    SpotifyClone.album alb ON art.artista_id = alb.artista_id
        INNER JOIN
    SpotifyClone.seguindo seg ON alb.artista_id = seg.artista_id
GROUP BY artista , album
ORDER BY pessoas_seguidoras DESC , artista , album;