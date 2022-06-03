SELECT
musicas.titulo AS nome,
count(*) AS reproducoes

FROM 
SpotifyClone.musicas As musicas
INNER JOIN SpotifyClone.historico AS historico
ON musicas.musicas_id = historico.musicas_id
INNER JOIN SpotifyClone.usuario AS usuario
ON usuario.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.plano AS plano
ON plano.plano_id = usuario.plano_id

WHERE plano.nome IN ('Gratuito', 'Pessoal')

GROUP BY nome

ORDER BY nome ASC;