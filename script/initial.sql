CREATE USER 'sillyhat_xu' @'%' IDENTIFIED BY 'sillyhat_xu_password';
GRANT ALL PRIVILEGES ON *.* TO sillyhat_xu@'%';
CREATE DATABASE sillyhat_xu_db;
DROP TABLE IF EXISTS `sillyhat_xu_db`.`user`;
CREATE TABLE IF NOT EXISTS `sillyhat_xu_db`.`user`
(
    `id`                 BIGINT(48)     NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `login_name`         VARCHAR(32)    NOT NULL,
    `password`           VARCHAR(32)    NOT NULL,
    `user_name`          VARCHAR(100)   NOT NULL,
    `status`             TINYINT(1)              DEFAULT 0,
    `platform`           VARCHAR(10)             DEFAULT 'UNKNOWN',
    `age`                INT(11)        NULL,
    `amount`             DECIMAL(10, 2) NULL,
    `description`        TEXT           NULL,
    `created_time`       timestamp(3)   NOT NULL DEFAULT current_timestamp(3),
    `last_modified_time` timestamp(3)   NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
    INDEX (`status`),
    INDEX (`platform`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;