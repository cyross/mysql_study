DROP TABLE IF EXISTS `union1`;

CREATE TABLE `union1` (
    `id` INTEGER AUTO_INCREMENT PRIMARY KEY,
    `mid` INTEGER REFERENCES `union_master1`(`id`),
    `desc` VARCHAR(20),
    `price` INTEGER NOT NULL DEFAULT 0
);

INSERT INTO `union1`(`mid`,`desc`,`price`) VALUES (2, 'h1', 100), (2, 'h2', 150), (1, 'h3', 300), (3, 'h4', 120);

DROP TABLE IF EXISTS `union2`;

CREATE TABLE `union2` (
    `id` INTEGER AUTO_INCREMENT PRIMARY KEY,
    `mid` INTEGER REFERENCES `union_master1`(`id`),
    `desc` VARCHAR(20),
    `price` INTEGER NOT NULL DEFAULT 0
);

INSERT INTO `union2`(`mid`,`desc`,`price`) VALUES (1, 'h5', 1000), (2, 'h6', 1500), (NULL, 'h7', 2000);

DROP TABLE IF EXISTS `union_master1`;

CREATE TABLE `union_master1` (
    `id` INTEGER,
    `name` VARCHAR(10)
);

INSERT INTO `union_master1` VALUES (1, 'A'), (3,'B'), (999,'C'), (NULL,'D');