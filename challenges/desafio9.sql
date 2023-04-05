SELECT 
    COUNT(hist.usuario_id) AS musicas_no_historico
FROM
    SpotifyClone.historico hist
        INNER JOIN
    SpotifyClone.usuarios usu ON hist.usuario_id = usu.usuario_id
WHERE
    usu.usuario_nome = 'Barbara Liskov';