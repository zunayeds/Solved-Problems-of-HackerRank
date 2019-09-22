WITH cte AS
  (
    SELECT h.hacker_id, h.name, COUNT(c.challenge_id) challenges_created,
      ROW_NUMBER() OVER (PARTITION BY COUNT(c.challenge_id) ORDER BY COUNT(c.challenge_id) DESC) AS row_number
    FROM Hackers h
    JOIN Challenges c ON c.hacker_id = h.hacker_id
    GROUP BY h.hacker_id, h.name
  )
SELECT x.hacker_id, x.name, x.challenges_created
FROM cte x
WHERE (SELECT MAX(challenges_created) FROM cte) =  x.challenges_created OR
    (SELECT COUNT(hacker_id) FROM cte WHERE challenges_created = x.challenges_created) = 1
ORDER BY challenges_created DESC, hacker_id