-- 1683. Invalid Tweets

/*
Problem Statement:
Find the IDs of tweets that are invalid.
A tweet is invalid if the number of characters in the content
is strictly greater than 15.

Input: 
Tweets table:
+----------+-----------------------------------+
| tweet_id | content                           |
+----------+-----------------------------------+
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |
+----------+-----------------------------------+
Output: 
+----------+
| tweet_id |
+----------+
| 2        |
+----------+
Explanation: 
Tweet 1 has length = 11. It is a valid tweet.
Tweet 2 has length = 33. It is an invalid tweet.
*/


select tweet_id 
from Tweets
where length(content)>15;
