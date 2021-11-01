select * from union1 right join union_master1 on union1.mid=union_master1.id union select * from union2 right join union_master1 on union2.mid=union_master1.id;

select * from union1 left join union_master1 on union1.mid=union_master1.id union select * from union1 right join union_master1 on union1.mid=union_master1.id;
