select * 
from Teams NATURAL JOIN 
	(select * 
    from Belong NATURAL JOIN Own) as t1
WHERE UserId = 666;

select TeamId
from Teams NATURAL JOIN 
	(select * 
    from Belong NATURAL JOIN Own) as t1
WHERE UserId = 666;


for each TeamId:
do{
SELECT AVG(Credit) as TeamCredit
select *
from Teams NATURAL JOIN Belong NATURAL JOIN Own
WHERE TeamId = ...;
更新这个Team的平均。
}