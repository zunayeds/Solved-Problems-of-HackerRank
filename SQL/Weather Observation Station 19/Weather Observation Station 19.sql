DECLARE
@a DECIMAL(10,4),
@b DECIMAL(10,4),
@c DECIMAL(10,4),
@d DECIMAL(10,4)

SELECT @a = MIN(LAT_N), @b = MIN(LONG_W), @c = MAX(LAT_N), @d = MAX(LONG_W)
FROM STATION

SELECT CAST (SQRT((@a-@c)*(@a-@c) + (@b-@d)*(@b-@d)) AS DECIMAL(10,4))