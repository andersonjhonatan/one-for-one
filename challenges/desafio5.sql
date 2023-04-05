SELECT 
    can.cancoes_nome cancao, COUNT(hist.cancoes_id) reproducoes
FROM
    cancoes AS can
        INNER JOIN
    historico hist ON hist.cancoes_id = can.cancoes_id
GROUP BY can.cancoes_nome
ORDER BY reproducoes DESC , can.cancoes_nome ASC
LIMIT 2;