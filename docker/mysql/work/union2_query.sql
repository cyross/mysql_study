select * from union1 left join union_master1 on union1.mid=union_master1.id join union_master2 on union1.mid2=union_master2.id;

select union1.desc, COALESCE(union_master1.name, 'None') as `name1`, union_master2.name as `name2` from union1 left join union_master1 on union1.mid=union_master1.id join union_master2 on union1.mid2=union_master2.id;
