-- Drop the primary key constraint
ALTER TABLE [Social Buzz].[dbo].[Content]
DROP CONSTRAINT PK_Content;

-- Now, drop the 'user_id' column
ALTER TABLE [Social Buzz].[dbo].[Content]
DROP COLUMN user_id;

UPDATE [Social Buzz].[dbo].[Content]
SET Category = REPLACE(Category, '"', '')
WHERE CHARINDEX('"', Category) > 0 --remove"" in  category data

Select * 
From [Social Buzz].[dbo].[Content]
