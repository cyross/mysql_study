DROP TABLE IF EXISTS `work1`;

CREATE TABLE `work1` (
    `id` INTEGER AUTO_INCREMENT PRIMARY KEY,
    `w2id` INTEGER REFERENCES `master1`(`id`),
    `desc` VARCHAR(20),
    `price` INTEGER NOT NULL DEFAULT 0
);

INSERT INTO `work1`(`w2id`,`desc`,`price`) VALUES (2, 'h1', 100), (2, 'h2', 150), (1, 'h3', 300), (3, 'h4', 120);

DROP TABLE IF EXISTS `master1`;

CREATE TABLE `master1` (
    `id` INTEGER AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(10)
);

INSERT INTO `master1`(`name`) VALUES ('A'), ('B'), ('C');