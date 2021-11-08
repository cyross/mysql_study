drop table if exists `view1`;

create table `view1` (
    `id` char(4) not null UNIQUE,
    `date` date not null
);

insert into `view1` values
    ('0001', '2021-05-01'),
    ('0002', '2020-03-01'),
    ('0003', '2021-03-01'),
    ('0004', '2021-04-18'),
    ('0005', '2021-07-11'),
    ('0006', '2021-06-30'),
    ('0007', '2021-03-05'),
    ('0008', '2021-07-15');
