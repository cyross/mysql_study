drop table if exists `join1`;

create table `join1` (
    `name` varchar(20) not null,
    `yomi` varchar(20) not null
);

insert into `join1` VALUES
    ('林檎', 'リンゴ'),
    ('蜜柑', 'ミカン'),
    ('梨', 'ナシ');
