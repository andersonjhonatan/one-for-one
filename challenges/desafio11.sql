SELECT 
    alb.album_nome album, COUNT(can.cancoes_id) favoritadas
FROM
    SpotifyClone.album alb
        INNER JOIN
    SpotifyClone.cancoes can ON alb.album_id = can.album_id
        INNER JOIN
    SpotifyClone.favoritadas fav ON can.cancoes_id = fav.cancoes_id
GROUP BY album
ORDER BY favoritadas DESC , album ASC
LIMIT 3;