SELECT s.Name
FROM Friends f
JOIN Students s ON s.ID = f.ID
JOIN Packages p ON p.ID = f.ID
JOIN Packages fp ON fp.ID = f.Friend_ID
WHERE fp.Salary > p.Salary
ORDER BY fp.Salary