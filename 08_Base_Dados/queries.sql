SELECT *
FROM user;

SELECT use_name, add_name
FROM user, moradadigital
WHERE user.use_id = moradadigital.use_id;

SELECT add_name, loc_latitude, loc_longitude
FROM moradadigital, location
WHERE moradadigital.loc_id = location.loc_id;

SELECT pho_id, pho_file_path, pho_caption, use_name,
       loc_latitude, loc_longitude
FROM photograph, user, location
WHERE photograph.use_id = user.use_id
  AND photograph.loc_id = location.loc_id;

SELECT add_name, ref_text, ref_order
FROM moradadigital, moradareferencia, referencia
WHERE moradadigital.add_id = moradareferencia.id_descricao
  AND moradareferencia.id_referencia = referencia.ref_id
ORDER BY add_name, ref_order;

SELECT use_name, COUNT(add_id) AS total_moradas
FROM user
LEFT JOIN moradadigital ON user.use_id = moradadigital.use_id
GROUP BY user.use_id, use_name
ORDER BY total_moradas DESC;

SELECT add_name, COUNT(id_referencia) AS total_referencias
FROM moradadigital, moradareferencia
WHERE moradadigital.add_id = moradareferencia.id_descricao
GROUP BY moradadigital.add_id, add_name
HAVING COUNT(id_referencia) > 1;

SELECT add_name, COUNT(his_id) AS total_consultas
FROM moradadigital
LEFT JOIN consultation_history
    ON moradadigital.add_id = consultation_history.add_id
GROUP BY moradadigital.add_id, add_name
ORDER BY total_consultas DESC;

SELECT use_name, add_name, his_date, sha_code
FROM user, moradadigital, consultation_history, sharing
WHERE consultation_history.use_id = user.use_id
  AND consultation_history.add_id = moradadigital.add_id
  AND consultation_history.sha_id = sharing.sha_id
ORDER BY his_date DESC;

SELECT sha_code, add_name, use_name,
       sha_creation_date, sha_expiration_date
FROM sharing, moradadigital, user
WHERE sharing.add_id = moradadigital.add_id
  AND sharing.use_id = user.use_id
  AND sha_active = 1
ORDER BY sha_creation_date DESC;

SELECT sha_code, COUNT(his_id) AS total_utilizacoes
FROM sharing
LEFT JOIN consultation_history
    ON sharing.sha_id = consultation_history.sha_id
GROUP BY sharing.sha_id, sha_code
ORDER BY total_utilizacoes DESC;

SELECT use_name, add_name, sav_favorite, sav_date_saved
FROM saved_address, user, moradadigital
WHERE saved_address.use_id = user.use_id
  AND saved_address.add_id = moradadigital.add_id
ORDER BY use_name, add_name;

SELECT DISTINCT use_name
FROM user, saved_address
WHERE user.use_id = saved_address.use_id
  AND sav_favorite = 1;

SELECT add_name, ROUND(AVG(eva_rating), 2) AS classificacao_media,
       COUNT(eva_id) AS total_avaliacoes
FROM moradadigital
LEFT JOIN evaluation ON moradadigital.add_id = evaluation.add_id
GROUP BY moradadigital.add_id, add_name
ORDER BY classificacao_media DESC;

SELECT add_name, AVG(eva_rating) AS classificacao_media
FROM moradadigital, evaluation
WHERE moradadigital.add_id = evaluation.add_id
GROUP BY moradadigital.add_id, add_name
HAVING AVG(eva_rating) > 4;

SELECT rep_id, use_name, add_name, rep_reason, rep_status, rep_date
FROM report, user, moradadigital
WHERE report.use_id = user.use_id
  AND report.add_id = moradadigital.add_id
ORDER BY rep_date DESC;

SELECT add_name, COUNT(rep_id) AS total_denuncias
FROM moradadigital
LEFT JOIN report ON moradadigital.add_id = report.add_id
GROUP BY moradadigital.add_id, add_name
ORDER BY total_denuncias DESC;

SELECT user.use_name AS destinatario,
       notification.use_origin_id,
       not_type, not_title, not_message, not_creation_date
FROM notification, user
WHERE notification.use_id = user.use_id
ORDER BY not_creation_date DESC;

SELECT add_name, COUNT(his_id) AS total_consultas
FROM moradadigital, consultation_history
WHERE moradadigital.add_id = consultation_history.add_id
GROUP BY moradadigital.add_id, add_name
ORDER BY total_consultas DESC
LIMIT 1;

SELECT use_name, COUNT(add_id) AS total_moradas
FROM user, moradadigital
WHERE user.use_id = moradadigital.use_id
GROUP BY user.use_id, use_name
ORDER BY total_moradas DESC
LIMIT 1;

SELECT use_id, use_name
FROM user
WHERE NOT EXISTS (
    SELECT *
    FROM moradadigital
    WHERE moradadigital.use_id = user.use_id
);

SELECT add_id, add_name
FROM moradadigital
WHERE NOT EXISTS (
    SELECT *
    FROM evaluation
    WHERE evaluation.add_id = moradadigital.add_id
);

SELECT use_name, COUNT(DISTINCT add_id) AS moradas_consultadas
FROM user, consultation_history
WHERE user.use_id = consultation_history.use_id
GROUP BY user.use_id, use_name
HAVING COUNT(DISTINCT add_id) > 1;

SELECT l.loc_id, m.add_name, l.loc_latitude, l.loc_longitude
FROM moradadigital m, `location` l
WHERE m.loc_id = l.loc_id
  AND m.loc_id IN (
      SELECT loc_id
      FROM moradadigital
      GROUP BY loc_id
      HAVING COUNT(*) > 1
  )
ORDER BY l.loc_id, m.add_name;
