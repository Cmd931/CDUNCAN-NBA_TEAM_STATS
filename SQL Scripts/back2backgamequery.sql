
select teamid,teamname,season,format,count(format)
from maindata
where format = 'BACK TO BACK'
group by Teamid,teamname,season,format
order by teamid,season

