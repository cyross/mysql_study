-- 分離レベルを設定
set transaction isolation level serializable;
begin;
-- テーブルをロック
lock tables prices write;
-- わざとトランザクション内の実行を失敗させる
update prices set pricex=1000 where id=1;
-- ロールバックが行われたために次の行が更新されないことを確認
update prices set price=1000 where id=2;
-- テーブルをアンロック
unlock tables;
commit;
/*
  １．ロールバックされている？　ー＞ されている
  ２．テーブルのロックが解除されている？　ー＞　されている
*/
