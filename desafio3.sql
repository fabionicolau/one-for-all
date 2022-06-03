SELECT 
usuario.nome as usuario,
count(historico.musicas_id) as qtde_musicas_ouvidas,
ROUND(sum(musicas.duracao_segundos / 60), 2) as total_minutos

FROM
SpotifyClone.usuario as usuario
INNER JOIN SpotifyClone.historico AS historico 
ON historico.usuario_id = usuario.usuario_id
INNER JOIN SpotifyClone.musicas AS musicas 
ON historico.musicas_id = musicas.musicas_id

GROUP BY usuario

ORDER BY usuario ASC;