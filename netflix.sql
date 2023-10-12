-- device usage { determine which devices are commomly used for streaming } platform optimization
SELECT 
    device, COUNT(*) AS device_count
FROM
    netflix
GROUP BY Device
ORDER BY device_count DESC;


-- revenue segmentation { segment users based on thier subscription type and age to identify which segment generates that highiest revenue }
SELECT DISTINCT
    age, monthly_revenue, Subscription_type, Gender
FROM
    netflix
GROUP BY age , monthly_revenue , Subscription_type , gender
ORDER BY Monthly_revenue DESC , age ASC , Gender;


-- total revenue generated 
SELECT 
    SUM(plan_durationn * monthly_revenue) AS totalRevenueGenerated
FROM
    netflix;


-- Geographic analysis; examine country field to see where Netflix has most subscribers and whether contents preference really baby, John

SELECT DISTINCT
    country, Monthly_revenue
FROM
    netflix
GROUP BY 1 , 2
ORDER BY 2 DESC
;


-- total users 
SELECT 
    COUNT(user_id)
FROM
    netflix;


-- distict gender 
SELECT 
    gender, COUNT(*) AS gender_count
FROM
    netflix
GROUP BY Gender
ORDER BY gender_count;
;