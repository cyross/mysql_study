\! echo '順列(重複あり)'
select * from `join1`as p1 cross join `join1` as p2;
\! echo '順列(重複なし)'
select * from `join1`as p1 inner join `join1` as p2 on p1.name <> p2.name;
\! echo '組み合わせ'
select * from `join1`as p1 inner join `join1` as p2 on p1.name > p2.name;
\! echo '行番号付き'
create table `ptmp_3` as select row_number() over () as `px`, p1.`name` as `px1`, p2.`name` as `px2` from `join1`as p1 inner join `join1` as p2 on p1.name > p2.name;
select `px1`, `px2` from `ptmp_3` where `px` = (select max(`px`) from `ptmp_3`);
drop table if exists `ptmp_3`;
\! echo 'ランク1'
select rank() over (order by `price`) as `px`, `name` from `join2`;
\! echo 'ランク2'
select dense_rank() over (order by `price`) as `px`, `name` from `join2`;


-- これはエラーになる
-- select * from (select row_number() over () as `px`, p1.`name` as `px1`, p2.`name` as `px2` from `join1`as p1 inner join `join1` as p2 on p1.name > p2.name) order by `px` desc limit 1;
