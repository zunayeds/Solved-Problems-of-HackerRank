SELECT ct.Name
FROM City ct
JOIN Country c ON c.Code = ct.CountryCode
WHERE Continent = 'Africa'