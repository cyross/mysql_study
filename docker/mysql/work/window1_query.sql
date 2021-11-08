select `cat`, sum(`val`) as `x` from `window1` group by `cat` order by `cat`;

select `cat`, `val`, row_number() over (partition by `cat`) as `x` from `window1`;

select `q`.`cat`, `q`.`val` from (select `cat`, `val`, row_number() over (partition by `cat`) as `x` from `window1`) as `q`;

select `cat`, `id`, `val` from `window1` order by `cat`, `id`;
