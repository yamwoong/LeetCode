SELECT *
FROM Users
WHERE REGEXP_LIKE (MAIL, '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$');