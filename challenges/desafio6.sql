SELECT 
    ROUND(MIN(pl.plano_valor), 2) faturamento_minimo,
    ROUND(MAX(pl.plano_valor), 2) faturamento_maximo,
    ROUND(AVG(pl.plano_valor), 2) faturamento_medio,
    ROUND(SUM(pl.plano_valor), 2) faturamento_total
FROM
    SpotifyClone.plano pl
        INNER JOIN
    SpotifyClone.usuarios usu ON usu.plano_id = pl.plano_id;