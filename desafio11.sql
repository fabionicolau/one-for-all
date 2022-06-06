SELECT
  musicas.titulo AS nome_musica,
  CASE
    WHEN musicas.titulo LIKE "%Streets" THEN REPLACE (musicas.titulo, "Streets", "Code Review")
    WHEN musicas.titulo LIKE "%Her Own" THEN REPLACE (musicas.titulo, "Her Own", "Trybe")
    WHEN musicas.titulo LIKE "%Inner Fire" THEN REPLACE (musicas.titulo, "Inner Fire", "Project")
    WHEN musicas.titulo LIKE "%Silly" THEN REPLACE (musicas.titulo, "Silly", "Nice")
    WHEN musicas.titulo LIKE "%Circus" THEN REPLACE (musicas.titulo, "Circus", "Pull Request")  
  END AS novo_nome

FROM 
 SpotifyClone.musicas AS musicas
 
HAVING novo_nome IS NOT NULL

ORDER BY nome_musica ASC, novo_nome ASC;