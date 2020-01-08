WITH NBA2 AS 
(
select *,cast(date-grp as date) as grp1
from
(
select *,
ROW_NUMBER() OVER (ORDER BY teamid, date) as rank,
 cast (ROW_NUMBER() OVER (ORDER BY teamid,date) as int) as grp
 from 
(
select *,
CASE  
	WHEN winloss = 'W' then 1
    ELSE 0
END AS Win,
CASE WHEN  winloss = 'L' then 1
     ELSE 1
END AS LOSS
from 
(
WITH NBA AS
(
select a.date,a.teamid,a.gametype,a.teamname,a.pts,a.attendance,a.locationid,a.season,b.arena,b.capacity 
from gamelog1 a,arena2 b
where a.teamid = b.teamid
)
select b.*,a.winloss,a.opp
from boxscores2 a,NBA b
where a.teamid = b.teamid
  and a.date1 = b.date
)
s1
)
s2
)
s3
)

SELECT a.* 
from NBA2 a
JOIN (SELECT teamid,grp1,count(grp1)
from NBA2
group by teamid,grp1
having count(grp1) < 2 ) b
ON a.teamid = b.teamid
AND a.grp1 = b.grp1  























