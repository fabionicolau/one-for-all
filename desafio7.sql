SELECT
artista.nome As artista,
album.titulo AS album,
count(seguindo.usuario_id) AS seguidores

FROM 
SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album
ON artista.artista_id = album.artista_id
INNER JOIN SpotifyClone.seguindo AS seguindo
ON artista.artista_id = seguindo.artista_id

GROUP BY artista, album

ORDER BY seguidores DESC, artista ASC, album ASC;