SELECT
artista.nome As artista,
album.titulo AS album,
count(seguindo.usuario_id) AS seguidores

FROM 
SpotifyClones.artista AS artista
INNER JOIN SpotifyClones.album AS album
ON artista.artista_id = album.artista_id
INNER JOIN SpotifyClones.seguindo AS seguindo
ON artista.artista_id = seguindo.artista_id

GROUP BY artista, album

ORDER BY seguidores DESC, artista ASC, album ASC;