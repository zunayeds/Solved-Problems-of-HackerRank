SELECT c.Continent, CAST (AVG(ct.Population) AS INT)
FROM City ct
JOIN Country c ON c.Code = ct.CountryCode
GROUP BY c.Continent