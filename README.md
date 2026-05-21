SQL Lecture Notes (5/20/2026)
Data Query Language:
i) Select (*) from considers all columns from the table.
ii) Select DISTINCT is used to return only unique values from one or more columns.
iii) Select COUNT (*) is used to count the total number of rows in a table.
iv) Select count (distinct column_name) from TABLE counts how many unique (non-NULL) values  exist in a specific column.
v) LIMIT is used to restrict how many rows are returned.
vi) ORDER BY is used to sort results.
vii) AND, OR are logical operators used in a WHERE clause to filter rows.
viii) AND Returns rows only if all conditions are true. OR Returns rows if at least one condition is true.

LIKE Operators:
Like operator is used for pattern matching in text. It works with two main wildcards:
i) Percentile (%) - Represents zero, one or many characters.
ii) Underscore - Represents exactly one character.

Between Operator:
BETWEEN is used to filter values within a range (inclusive).

Group By and Having:
i) GROUP BY is used to group rows that have the same values in one or more columns, usually to perform aggregate functions like COUNT, SUM, AVG, MAX, MIN.
ii) HAVING is used to filter grouped results (after GROUP BY).

Order of execution:
From (table) – Join – Where – Group By – Having – Order By – Limit.

Built in functions:
Padding is used to put extra space.

•	Strings → Text values stored in columns (e.g., 'Hello'). 
•	SUBSTRING(string, start, length) → Extracts part of a string from a given position for a given length. 
•	Substring range → Extracts characters between positions using SUBSTRING(column, start, length). 
•	CONCAT(string1, string2, ...) → Joins multiple strings together into one. 
•	LENGTH(string) → Returns the number of characters in a string. 
•	SUBSTRING with LOCATE → Extracts text based on a position found using LOCATE(substring, string). 
•	SUBSTRING_INDEX(string, delimiter, count) → Returns part of a string before/after a delimiter based on count. 
•	UPPER(string) → Converts all characters in a string to uppercase. 
•	LOWER(string) → Converts all characters in a string to lowercase. 
•	LEFT(string, n) → Returns the first n characters from the left side of a string. 
•	RIGHT(string, n) → Returns the last n characters from a string.

We use multiple built in functions to get the output.

Case Statement:
Conditional logic in SQL that returns different values based on conditions (like IF-ELSE).
•	REPLACE(string, old, new) → Replaces all occurrences of a specified substring with another substring in a string.
•	REGEXP (Regular Expression) → Pattern matching operator used to search, match, or filter strings based on complex patterns.
