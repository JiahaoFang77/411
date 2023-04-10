USE csgo;

SELECT StudyField, AVG(MarketPrice)
FROM `User` NATURAL JOIN Own NATURAL JOIN Skin
GROUP BY StudyField







