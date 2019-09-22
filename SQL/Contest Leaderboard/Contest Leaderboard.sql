SELECT c1.hacker_id, h.name, SUM(C.score)
FROM (SELECT hacker_id, challenge_id, MAX(score) score
FROM Submissions
GROUP BY hacker_id, challenge_id) c1
JOIN Hackers h ON h.hacker_id = c1.hacker_id
JOIN 
(SELECT hacker_id, challenge_id, MAX(score) score
FROM Submissions
GROUP BY hacker_id, challenge_id) C on C.hacker_id = c1.hacker_id AND C.challenge_id = c1.challenge_id
GROUP BY c1.hacker_id, h.name
HAVING SUM(C.score) > 0
ORDER BY SUM(C.score) DESC, c1.hacker_id