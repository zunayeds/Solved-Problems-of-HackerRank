SELECT h.hacker_id, h.name
FROM Submissions s
JOIN Challenges c ON c.challenge_id = s.challenge_id
JOIN Difficulty d ON d.difficulty_level = c.difficulty_level
JOIN Hackers h ON h.hacker_id = s.hacker_id
GROUP BY  h.hacker_id, h.name
HAVING COUNT(CASE WHEN s.score = d.score THEN 1 ELSE NULL END) > 1
ORDER BY COUNT(CASE WHEN s.score = d.score THEN 1 ELSE NULL END) DESC, h.hacker_id