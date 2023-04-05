SELECT 
    COUNT(DISTINCT can.cancoes_nome) cancoes,
    COUNT(DISTINCT art.artista_nome) artistas,
    COUNT(DISTINCT al.album_nome) albuns
FROM
    SpotifyClone.cancoes AS can
        INNER JOIN
    SpotifyClone.album al ON can.album_id = al.album_id
        INNER JOIN
    SpotifyClone.artista art ON al.artista_id = art.artista_id;