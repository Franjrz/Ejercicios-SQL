SELECT cycling.*,  
CASE
    WHEN cast(floor(cycling.hours) as int)%2 = 0 THEN cast(floor(cycling.hours)/2 as int)
    ELSE cast(floor(cycling.hours-1)/2 as int)
END AS liters
FROM cycling;