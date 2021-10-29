SELECT * FROM `prices`;
SELECT `CODE`, SUM(`PRICE`) FROM `prices` GROUP BY `CODE` HAVING SUM(`price`) >= 15000;
SELECT `ID`, `PRICE` FROM `prices` WHERE `PRICE` >= (SELECT AVG(`PRICE`) FROM `prices`);
SELECT `CODE`, SUM(`PRICE`) AS X FROM `prices` GROUP BY `CODE` HAVING SUM(`price`) >= ALL (SELECT AVG(`PRICE`) FROM `prices`) ORDER BY X;
/* MySQLでは、ANY,ALLは副問合せの結果のみ使用できる */
SELECT * FROM `prices` WHERE `PRICE` = ANY (SELECT * FROM `ex_prices`);
