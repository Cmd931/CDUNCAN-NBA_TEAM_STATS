![nba](https://user-images.githubusercontent.com/52723822/71684153-42d84e00-2d5a-11ea-89eb-c9fb216f2326.jpg)
# Cordero Duncan`s NBA STATS Capstone 
This is my Capstone for the Data Analytics Cohort 1. For my Capstone I analyzed NBA Data from the past five season to see if teams playing back to back games are at a disadvantage. 


# The DATA 
For my analyses I used NBA Team stats and schedule data www.basketball-reference.com and NBA.com 
 I also used detail from  Wikipedia to get info about the arena capacity for each team. 
The tools I used for my analysis were postgres, excel, and tableau
 I created a relational database which contained the following three tables, arena, schedule, and stats. 
 
 # DATA ISSUE
 I didn't have much trouble getting the data, the majority of the data came from basketball reference which has a CSV option.Once I   created my database and tables in Postgres I was able to import that data into the tables I created. Although pulling the consecutive  dates for each team was a little challenging. 
 
# Conclusion 
It`s situational, for teams with winning records overall they performed well in back to back games, but you do see a noticeable difference when they are playing an away game against a team with a losing record. Also when they are playing at home game against a winning team.
For teams with losing records, you see the biggest difference when they are playing at home against a winning team, and when they're playing away against a losing team. 

# Links for Tableau Dashboards
https://public.tableau.com/profile/cordero5389#!/vizhome/TeamDash/IndyDash?publish=yes

https://public.tableau.com/profile/cordero5389#!/vizhome/TeamDash/TeamDash?publish=yes
