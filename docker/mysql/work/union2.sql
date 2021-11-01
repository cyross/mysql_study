DROP TABLE IF EXISTS `union1`;

CREATE TABLE `union1` (
    `id` INTEGER AUTO_INCREMENT PRIMARY KEY,
    `mid` INTEGER REFERENCES `union_master1`(`id`),
    `mid2` INTEGER REFERENCES `union_master2`(`id`),
    `desc` VARCHAR(20),
    `price` INTEGER NOT NULL DEFAULT 0
);

INSERT INTO `union1`(`mid`,`mid2`,`desc`,`price`) VALUES (2, 1, 'h1', 100), (2, 2, 'h2', 150), (1, 3, 'h3', 300), (3, 4, 'h4', 120);

DROP TABLE IF EXISTS `union2`;

CREATE TABLE `union2` (
    `id` INTEGER AUTO_INCREMENT PRIMARY KEY,
    `mid` INTEGER REFERENCES `union_master1`(`id`),
    `mid2` INTEGER REFERENCES `union_master2`(`id`),
    `desc` VARCHAR(20),
    `price` INTEGER NOT NULL DEFAULT 0
);

INSERT INTO `union2`(`mid`,`mid2`,`desc`,`price`) VALUES (1, 4, 'h5', 1000), (2, 4, 'h6', 1500), (NULL, 2, 'h7', 2000);

DROP TABLE IF EXISTS `union_master1`;

CREATE TABLE `union_master1` (
    `id` INTEGER,
    `name` VARCHAR(10)
);

INSERT INTO `union_master1` VALUES (1, 'A'), (3,'B'), (999,'C'), (NULL,'D');

DROP TABLE IF EXISTS `union_master2`;

CREATE TABLE `union_master2` (
    `id` INTEGER,
    `name` VARCHAR(10)
);

INSERT INTO `union_master2` VALUES (1, 'A1'), (2,'B1'), (3,'C1'), (4,'D1');