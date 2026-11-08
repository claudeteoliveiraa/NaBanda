INSERT INTO `user`
    (use_id, use_name, use_email, use_password_hash)
VALUES
    (1, 'Gloria Pedro', 'gloria.pedro@example.com', 'HASH_TESTE_001'),
    (2, 'Joao Carlos', 'joao.carlos@example.com', 'HASH_TESTE_002'),
    (3, 'Mariana Ferreira', 'mariana.ferreira@example.com', 'HASH_TESTE_003'),
    (4, 'Pedro Fernandes', 'pedro.fernandes@example.com', 'HASH_TESTE_004');

INSERT INTO `location`
    (loc_id, loc_latitude, loc_longitude)
VALUES
    (1, 38.72230000, -9.13930000),
    (2, 38.71390000, -9.13940000),
    (3, 38.73690000, -9.14270000),
    (4, 38.70780000, -9.13660000);

INSERT INTO `referencia`
    (ref_id, ref_text, ref_order)
VALUES
    (1, 'Junto à entrada principal', 1),
    (2, 'Em frente à paragem de autocarro', 2),
    (3, 'Ao lado da farmácia', 3),
    (4, 'Portão azul', 1),
    (5, 'Edifício com fachada branca', 2),
    (6, 'Entrada pela rua lateral', 3);

INSERT INTO `moradadigital`
    (add_id, use_id, loc_id, add_name, add_description, add_code)
VALUES
    (1, 1, 1, 'Praça do Comercio', 'Ponto de encontro junto ao arco principal.', 'NAB-LOC-001'),
    (2, 1, 2, 'Entrada do edificio', 'Entrada lateral do edificio residencial.', 'NAB-LOC-002'),
    (3, 2, 3, 'Parque de estacionamento', 'Local de estacionamento junto ao jardim.', 'NAB-LOC-003'),
    (4, 3, 4, 'Portao da escola', 'Entrada principal da escola.', 'NAB-LOC-004'),
    (5, 4, 1, 'Ponto de recolha', 'Local indicado para recolha de encomendas.', 'NAB-LOC-005'),
    (6, 2, 3, 'Acesso ao jardim', 'Acesso pedonal pelo lado norte do jardim.', 'NAB-LOC-006');

INSERT INTO `moradareferencia`
    (id_descricao, id_referencia)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 6),
    (3, 5),
    (4, 4),
    (4, 1),
    (5, 2),
    (6, 6),
    (6, 5);

INSERT INTO `photograph`
    (pho_id, loc_id, use_id, pho_file_path, pho_caption)
VALUES
    (1, 1, 1, '/uploads/foto_praca_01.jpg', 'Vista da entrada principal'),
    (2, 1, 2, '/uploads/foto_praca_02.jpg', 'Arco visto do lado oposto'),
    (3, 2, 1, '/uploads/foto_edificio_01.jpg', 'Entrada lateral'),
    (4, 3, 2, '/uploads/foto_parque_01.jpg', 'Estacionamento junto ao jardim'),
    (5, 4, 3, '/uploads/foto_escola_01.jpg', 'Portao principal da escola'),
    (6, 3, 4, '/uploads/foto_jardim_01.jpg', 'Acesso pedonal ao jardim');

INSERT INTO `sharing`
    (sha_id, add_id, use_id, sha_code, sha_expiration_date, sha_active)
VALUES
    (1, 1, 1, 'NAB-SHARE-001', '2027-01-31 23:59:59', 1),
    (2, 2, 1, 'NAB-SHARE-002', '2026-12-31 23:59:59', 1),
    (3, 3, 2, 'NAB-SHARE-003', NULL, 1),
    (4, 4, 3, 'NAB-SHARE-004', '2026-10-31 23:59:59', 0),
    (5, 5, 4, 'NAB-SHARE-005', '2027-03-15 23:59:59', 1),
    (6, 6, 2, 'NAB-SHARE-006', NULL, 1);

INSERT INTO `saved_address`
    (sav_id, use_id, add_id, sav_favorite)
VALUES
    (1, 2, 1, 1),
    (2, 3, 1, 0),
    (3, 1, 3, 1),
    (4, 4, 2, 0),
    (5, 1, 4, 1),
    (6, 3, 5, 1),
    (7, 4, 6, 0);

INSERT INTO `consultation_history`
    (his_id, use_id, add_id, his_date, sha_id)
VALUES
    (1, 2, 1, '2026-10-20 10:15:00', 1),
    (2, 3, 1, '2026-10-21 14:30:00', 1),
    (3, 4, 2, '2026-10-22 09:00:00', 2),
    (4, 1, 3, '2026-10-23 18:45:00', 3),
    (5, 4, 5, '2026-10-24 12:20:00', 5),
    (6, 3, 6, '2026-10-25 16:10:00', 6),
    (7, 2, 1, '2026-10-26 11:05:00', 1);

INSERT INTO `notification`
    (not_id, use_id, use_origin_id, add_id, sha_id,
     not_type, not_title, not_message)
VALUES
    (1, 1, 2, 1, 1, 'ACESSO_MORADA',
     'A tua morada foi consultada',
     'Joao Silva consultou a tua morada digital Praça do Comercio.'),
    (2, 1, 3, 1, 1, 'ACESSO_MORADA',
     'A tua morada foi consultada',
     'Mariana Costa consultou a tua morada digital Praça do Comercio.'),
    (3, 1, 4, 2, 2, 'ACESSO_MORADA',
     'A tua morada foi consultada',
     'Pedro Fernandes consultou a tua morada digital Entrada do edificio.'),
    (4, 2, 1, 3, 3, 'ACESSO_MORADA',
     'A tua morada foi consultada',
     'Gloria Mendes consultou a tua morada digital Parque de estacionamento.'),
    (5, 3, NULL, NULL, NULL, 'AVISO_GERAL',
     'Novidade no NaBanda',
     'Foi adicionada uma nova funcionalidade à aplicação.');

INSERT INTO `report`
    (rep_id, use_id, add_id, rep_reason, rep_description, rep_status)
VALUES
    (1, 2, 3, 'INFORMACAO_INCORRETA',
     'A localização indicada parece estar desatualizada.', 'PENDENTE'),
    (2, 4, 3, 'LOCAL_INADEQUADO',
     'O ponto indicado não corresponde ao local descrito.', 'EM_ANALISE'),
    (3, 1, 6, 'INFORMACAO_INCORRETA',
     'A descrição precisa de ser corrigida.', 'RESOLVIDA');

INSERT INTO `evaluation`
    (eva_id, use_id, add_id, eva_rating, eva_comment)
VALUES
    (1, 2, 1, 5, 'A descrição ajudou-me a encontrar o local.'),
    (2, 3, 1, 4, 'Boa indicação, mas podia ter mais fotografias.'),
    (3, 4, 2, 3, 'A referência podia ser mais detalhada.'),
    (4, 1, 3, 5, 'Localização fácil de identificar.'),
    (5, 3, 5, 4, NULL),
    (6, 2, 1, 5, 'Voltei a avaliar depois de utilizar novamente a morada.');
