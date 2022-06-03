SELECT 
count(musicas.musicas_id) AS quantidade_musicas_no_historico

FROM
SpotifyClone.historico AS historico
INNER JOIN SpotifyClone.musicas AS musicas
ON historico.musicas_id = musicas.musicas_id
INNER JOIN SpotifyClone.usuario AS usuario
ON usuario.usuario_id = historico.usuario_id

WHERE usuario.nome = 'Bill';