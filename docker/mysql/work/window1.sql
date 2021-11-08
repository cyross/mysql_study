drop table if exists `window1`;

create table `window1` (
    `id` char(4) not null UNIQUE,
    `cat` char(4) not null,
    `date` date not null,
    `val` int not null,
    key `index1` (`id`, `cat`)
);

insert into `window1` values
    ('0001', 'a001', '2021-05-01', 1000),
    ('0002', 'b001', '2020-03-01', 1200),
    ('0003', 'b001', '2021-03-01', 1500),
    ('0004', 'a001', '2021-04-18', 2000),
    ('0005', 'b002', '2021-07-11',  300),
    ('0006', 'a001', '2021-06-30', 2500),
    ('0007', 'c001', '2021-03-05',  850),
    ('0008', 'c001', '2021-07-15', 1050);
