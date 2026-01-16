create database Instagram_user_data;
use Instagram_user_data;

select * from instagram_usage_lifestyle;

## How many total_id's are there?
SELECT COUNT(*) AS total_ids
FROM instagram_usage_lifestyle;

## Q What time user create account and last login date?
SELECT user_id,
    MIN(account_creation_year) AS account_creation_date,
    MAX(last_login_date) AS last_login_date
FROM instagram_usage_lifestyle
#where user_id = 45
group by user_id;

## How many user_id exist country wise?
SELECT country,
    COUNT(DISTINCT user_id) AS total_users
FROM instagram_usage_lifestyle
group by country;


select country,count(daily_active_minutes_instagram) as count_activity_min,
Rank() over(partition by country order by daily_active_minutes_instagram) as rank_
from instagram_usage_lifestyle
group by gender;








