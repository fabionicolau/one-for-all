SELECT 
(SELECT count(*) FROM SpotifyClone.musicas) AS cancoes,
(SELECT count(*) FROM SpotifyClone.artista) AS artistas,
(SELECT count(*) FROM SpotifyClone.album) AS albuns;