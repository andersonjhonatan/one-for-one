SELECT 
    usu.usuario_nome pessoa_usuaria,
    IF(max(hist.data_reproducao) < '2020-12-31 23:59:59',
        'Inativa',
        'Ativa') status_pessoa_usuaria
FROM
    SpotifyClone.usuarios usu
        LEFT JOIN
    SpotifyClone.historico hist ON usu.usuario_id = hist.usuario_id
GROUP BY usu.usuario_id
ORDER BY usu.usuario_nome ASC;