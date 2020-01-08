SELECT teamid,count(winloss),season,count(winloss)/82 as win_percent
from 
(SELECT teamid,date1,winloss,
CASE  
	WHEN date1 between '2018-10-16' and '2019-04-10' Then '2018 SEASON'
	WHEN date1 between '2017-10-17' and '2018-04-11' Then '2017 SEASON '
    WHEN date1 between '2016-10-25' and '2017-04-12' Then '2016 SEASON'
	WHEN date1 between '2015-10-27' and '2016-04-13' Then '2015 SEASON'
	WHEN date1 between '2014-10-28' and '2015-04-15' Then '2014 SEASON'
	WHEN date1 between '2013-10-29' and '2013-04-16' Then '2013 SEASON'
    ELSE 'N/A'
END AS SEASON
from boxscores2)s1
where winloss = 'W'
group by teamid,season;








