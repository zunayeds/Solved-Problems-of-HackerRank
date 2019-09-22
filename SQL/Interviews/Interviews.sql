SELECT con.contest_id, con.hacker_id, con.Name, SS.total_submissions, SS.total_accepted_submissions, VS.total_views, VS.total_unique_views
FROM Contests con
JOIN
(SELECT col.contest_id, SUM(total_submissions) total_submissions, SUM(total_accepted_submissions) total_accepted_submissions
    FROM Submission_Stats ss
    JOIN Challenges ch ON ch.challenge_id = ss.challenge_id
    JOIN Colleges col ON col.college_id = ch.college_id
    GROUP BY col.contest_id) SS ON SS.contest_id = con.contest_id
JOIN
(SELECT col.contest_id, SUM(total_views) total_views, SUM(total_unique_views) total_unique_views
    FROM View_Stats vs
    JOIN Challenges ch ON ch.challenge_id = vs.challenge_id
    JOIN Colleges col ON col.college_id = ch.college_id
    GROUP BY col.contest_id) VS ON VS.contest_id = con.contest_id
ORDER BY con.contest_id