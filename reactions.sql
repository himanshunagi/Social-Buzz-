SELECT *
  FROM [Social Buzz].[dbo].[Reactions]
  WHERE Type IS NULL --checking missing value 

DELETE FROM [Social Buzz].[dbo].[Reactions]
WHERE Type IS NULL --deleting row that containing missing type

Alter table [Social Buzz].[dbo].[Reactions]
drop column	User_ID --Removing unnecessary column

SELECT *
FROM [Social Buzz].[dbo].[Reactions] --checking table if row succesfully deleted