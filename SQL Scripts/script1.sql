WITH  NBA
AS
(
select s1.*,cast(date1-grp as date) as grp1
from
(
select *,
ROW_NUMBER() OVER (ORDER BY teamid, date1) as rank,
 cast (ROW_NUMBER() OVER (ORDER BY teamid,date1) as int) as grp,
CASE  
	WHEN date1 between '2018-10-16' and '2019-04-10' Then '2018 SEASON'
	WHEN date1 between '2017-10-17' and '2018-04-11' Then '2017 SEASON '
    WHEN date1 between '2016-10-25' and '2017-04-12' Then '2016 SEASON'
	WHEN date1 between '2015-10-27' and '2016-04-13' Then '2015 SEASON'
	WHEN date1 between '2014-10-28' and '2015-04-15' Then '2014 SEASON'
	WHEN date1 between '2013-10-29' and '2013-04-16' Then '2013 SEASON'
    ELSE 'N/A'
END AS SEASON	
from boxscores2
) s1
)
SELECT a.* 
from NBA a
JOIN (SELECT teamid,grp1,count(grp1)
from NBA
group by teamid,grp1
having count(grp1) >1) b
ON a.teamid = b.teamid
AND a.grp1 = b.grp1  







