CREATE TABLE `user` (
    use_id INT NOT NULL AUTO_INCREMENT,
    use_name VARCHAR(100) NOT NULL,
    use_email VARCHAR(150) NOT NULL,
    use_password_hash VARCHAR(255) NOT NULL,
    use_registration_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (use_id),
    UNIQUE (use_email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `location` (
    loc_id INT NOT NULL AUTO_INCREMENT,
    loc_latitude DECIMAL(10,8) NOT NULL,
    loc_longitude DECIMAL(11,8) NOT NULL,
    PRIMARY KEY (loc_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `referencia` (
    ref_id INT NOT NULL AUTO_INCREMENT,
    ref_text VARCHAR(255) NOT NULL,
    ref_order INT NOT NULL DEFAULT 1,
    PRIMARY KEY (ref_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `moradadigital` (
    add_id INT NOT NULL AUTO_INCREMENT,
    use_id INT NOT NULL,
    loc_id INT NOT NULL,
    add_name VARCHAR(100) NOT NULL,
    add_description TEXT NULL,
    add_code VARCHAR(20) NOT NULL,
    add_creation_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    add_update_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (add_id),
    UNIQUE (add_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `moradareferencia` (
    id_descricao INT NOT NULL,
    id_referencia INT NOT NULL,
    PRIMARY KEY (id_descricao, id_referencia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `photograph` (
    pho_id INT NOT NULL AUTO_INCREMENT,
    loc_id INT NOT NULL,
    use_id INT NOT NULL,
    pho_file_path VARCHAR(500) NOT NULL,
    pho_caption VARCHAR(255) NULL,
    pho_date_added DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (pho_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sharing` (
    sha_id INT NOT NULL AUTO_INCREMENT,
    add_id INT NOT NULL,
    use_id INT NOT NULL,
    sha_code VARCHAR(100) NOT NULL,
    sha_creation_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    sha_expiration_date DATETIME NULL,
    sha_active TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (sha_id),
    UNIQUE (sha_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `saved_address` (
    sav_id INT NOT NULL AUTO_INCREMENT,
    use_id INT NOT NULL,
    add_id INT NOT NULL,
    sav_favorite TINYINT(1) NOT NULL DEFAULT 0,
    sav_date_saved DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (sav_id),
    UNIQUE (use_id, add_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `consultation_history` (
    his_id INT NOT NULL AUTO_INCREMENT,
    use_id INT NOT NULL,
    add_id INT NOT NULL,
    his_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    sha_id INT NOT NULL,
    PRIMARY KEY (his_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `notification` (
    not_id INT NOT NULL AUTO_INCREMENT,
    use_id INT NOT NULL,
    use_origin_id INT NULL,
    add_id INT NULL,
    sha_id INT NULL,
    not_type VARCHAR(50) NOT NULL,
    not_title VARCHAR(100) NOT NULL,
    not_message TEXT NOT NULL,
    not_creation_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (not_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `report` (
    rep_id INT NOT NULL AUTO_INCREMENT,
    use_id INT NOT NULL,
    add_id INT NOT NULL,
    rep_reason VARCHAR(100) NOT NULL,
    rep_description TEXT NULL,
    rep_status VARCHAR(30) NOT NULL DEFAULT 'PENDENTE',
    rep_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (rep_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `evaluation` (
    eva_id INT NOT NULL AUTO_INCREMENT,
    use_id INT NOT NULL,
    add_id INT NOT NULL,
    eva_rating INT NOT NULL,
    eva_comment TEXT NULL,
    eva_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (eva_id),
    CONSTRAINT evaluation_ck_rating CHECK (eva_rating BETWEEN 1 AND 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `moradadigital`
    ADD CONSTRAINT moradadigital_fk_user
        FOREIGN KEY (use_id) REFERENCES `user` (use_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT moradadigital_fk_location
        FOREIGN KEY (loc_id) REFERENCES `location` (loc_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `moradareferencia`
    ADD CONSTRAINT moradareferencia_fk_moradadigital
        FOREIGN KEY (id_descricao) REFERENCES `moradadigital` (add_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT moradareferencia_fk_referencia
        FOREIGN KEY (id_referencia) REFERENCES `referencia` (ref_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `photograph`
    ADD CONSTRAINT photograph_fk_location
        FOREIGN KEY (loc_id) REFERENCES `location` (loc_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT photograph_fk_user
        FOREIGN KEY (use_id) REFERENCES `user` (use_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `sharing`
    ADD CONSTRAINT sharing_fk_moradadigital
        FOREIGN KEY (add_id) REFERENCES `moradadigital` (add_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT sharing_fk_user
        FOREIGN KEY (use_id) REFERENCES `user` (use_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `saved_address`
    ADD CONSTRAINT saved_address_fk_user
        FOREIGN KEY (use_id) REFERENCES `user` (use_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT saved_address_fk_moradadigital
        FOREIGN KEY (add_id) REFERENCES `moradadigital` (add_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `consultation_history`
    ADD CONSTRAINT consultation_history_fk_user
        FOREIGN KEY (use_id) REFERENCES `user` (use_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT consultation_history_fk_moradadigital
        FOREIGN KEY (add_id) REFERENCES `moradadigital` (add_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT consultation_history_fk_sharing
        FOREIGN KEY (sha_id) REFERENCES `sharing` (sha_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `notification`
    ADD CONSTRAINT notification_fk_user_recipient
        FOREIGN KEY (use_id) REFERENCES `user` (use_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT notification_fk_user_origin
        FOREIGN KEY (use_origin_id) REFERENCES `user` (use_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT notification_fk_moradadigital
        FOREIGN KEY (add_id) REFERENCES `moradadigital` (add_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT notification_fk_sharing
        FOREIGN KEY (sha_id) REFERENCES `sharing` (sha_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `report`
    ADD CONSTRAINT report_fk_user
        FOREIGN KEY (use_id) REFERENCES `user` (use_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT report_fk_moradadigital
        FOREIGN KEY (add_id) REFERENCES `moradadigital` (add_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `evaluation`
    ADD CONSTRAINT evaluation_fk_user
        FOREIGN KEY (use_id) REFERENCES `user` (use_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT evaluation_fk_moradadigital
        FOREIGN KEY (add_id) REFERENCES `moradadigital` (add_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION;
