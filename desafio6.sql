SELECT 
MIN(plano.preco) AS faturamento_minimo,
MAX(plano.preco) AS faturamento_maximo,
ROUND(AVG(plano.preco), 2) AS faturamento_medio,
ROUND(SUM(plano.preco), 2) AS faturamento_total


FROM
SpotifyClone.plano AS plano
INNER JOIN SpotifyClone.usuario AS usuario
ON usuario.plano_id = plano.plano_id;