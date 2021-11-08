\! echo '順列(重複あり)'
select * from `join1`as p1 cross join `join1` as p2;
\! echo '順列(重複なし)'
select * from `join1`as p1 inner join `join1` as p2 on p1.name <> p2.name;
\! echo '組み合わせ'
select * from `join1`as p1 inner join `join1` as p2 on p1.name > p2.name;
