SELECT 
musicas.titulo AS cancao,
count(historico.musicas_id) as reproducoes

FROM 
SpotifyClone.musicas AS musicas
INNER JOIN SpotifyClone.historico AS historico
ON historico.musicas_id = musicas.musicas_id

GROUP BY historico.musicas_id

ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;

