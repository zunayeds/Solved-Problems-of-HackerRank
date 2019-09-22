SELECT w.id, T1.*
FROM (
    SELECT wp.age, MIN(w.coins_needed) coins_needed, w.power
    FROM Wands w
    JOIN Wands_Property wp ON wp.Code = w.Code
    WHERE wp.is_evil = 0
    GROUP BY w.power, wp.age
) T1
JOIN Wands w ON w.coins_needed = T1.coins_needed AND w.power = T1.power
JOIN Wands_Property wp ON wp.Code = w.Code AND wp.age = T1.age
ORDER BY T1.power DESC, T1.age DESC