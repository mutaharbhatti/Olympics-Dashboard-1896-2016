SELECT
[ID],
[Age],
[Sex],
[Name] as [Competitor Name],

-- Age Grouping
Case
	WHEN [Age] <18 Then 'Under 18'
	WHEN [Age] BETWEEN 18 AND 25 THEN '18-25'
	WHEN [AGE] >30 THEN 'OVER 30'
	END AS [Age Grouping],
[Height],
[Weight],
[NOC] as [Nation Code],

--Seperating Year and Season 
LEFT(Games, CHARINDEX(' ',Games) -1) AS [Year]
,RIGHT(games, CHARINDEX(' ',REVERSE(Games))-1) AS [Season],
[sport],
[Event],

-- Replacing Na with "Not Registered" in medal column
CASE WHEN MEDAL = 'NA' Then 'Not Registered' Else Medal End as Medal
from [olympic_games].[dbo].[athletes_event_results]