SELECT R.[column1],
       R.[Content_ID],
       R.[Reactions_type],
       R.[Datetime],
       C.[Content_type],
       C.[Category],
       F.[Reactions_type],
	   F.[Sentiment],
       F.[Score]
FROM [Social Buzz].[dbo].[Reactions] R
LEFT JOIN [Social Buzz].[dbo].[Content] C ON R.[Content_ID] = C.[Content_ID]
LEFT JOIN [Social Buzz].[dbo].[ReactionTypes] F ON R.[Reactions_type] = F.[Reactions_type];

SELECT TOP 5
    C.Category,
    SUM(F.Score) AS Total_Score
FROM
    [Social Buzz].[dbo].[Reactions] R
LEFT JOIN
    [Social Buzz].[dbo].[Content] C ON R.Content_ID = C.Content_ID
LEFT JOIN
    [Social Buzz].[dbo].[ReactionTypes] F ON R.Reactions_type = F.Reactions_type
GROUP BY
    C.Category
ORDER BY
    Total_Score DESC;



