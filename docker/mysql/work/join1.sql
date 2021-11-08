drop table if exists `join1`;

create table `join1` (
    `name` varchar(20) not null,
    `yomi` varchar(20) not null
);

insert into `join1` VALUES
    ('林檎', 'リンゴ'),
    ('蜜柑', 'ミカン'),
    ('梨', 'ナシ');

drop table if exists `join2`;

create table `join2` (
    `name` varchar(20) not null,
    `yomi` varchar(20) not null,
    `price` int not null
);

insert into `join2` VALUES
    ('林檎', 'リンゴ', 100),
    ('蜜柑', 'ミカン', 80),
    ('梨', 'ナシ', 100),
    ('葡萄', 'ブドウ', 200);
