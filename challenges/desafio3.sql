SELECT 
    usu.usuario_nome AS pessoa_usuaria,
    COUNT(*) musicas_ouvidas,
    ROUND(SUM(can.duraçao_segundos / 60), 2) total_minutos
FROM
    SpotifyClone.usuarios usu
        INNER JOIN
    SpotifyClone.historico hist ON usu.usuario_id = hist.usuario_id
        INNER JOIN
    SpotifyClone.cancoes can ON hist.cancoes_id = can.cancoes_id
GROUP BY usuario_nome
ORDER BY usu.usuario_nome;