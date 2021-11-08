create view `view1_1` as select * from `view1` where date >= '2021-07-01';

select * from `view1_1`;

drop view `view1_1`;
