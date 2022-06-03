SELECT 
artista.nome AS artista,
album.titulo AS album

FROM 
SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album
ON artista.artista_id = album.artista_id

WHERE artista.nome = 'Walter Phoenix'
 
GROUP BY artista, album

ORDER BY album ASC;