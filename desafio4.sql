SELECT 
usuario.nome as usuario,
IF (MAX(YEAR(historico.data_reproducao)) = '2021', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario 

FROM 
SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico AS historico 
ON historico.usuario_id = usuario.usuario_id

GROUP BY usuario

ORDER BY usuario ASC;