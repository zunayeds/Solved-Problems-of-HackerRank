SELECT SUM(ct.Population)
FROM City ct
JOIN Country c ON c.Code = ct.CountryCode
WHERE Continent = 'Asia'