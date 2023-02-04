SELECT S.hacker_id, name
FROM SUBMISSIONS AS S
JOIN HACKERS AS H ON S.hacker_id = H.hacker_id
JOIN Challenges AS C ON S.challenge_id = C.challenge_id
JOIN Difficulty AS D ON C.difficulty_level = D.difficulty_level
WHERE S.score = D.score
GROUP BY name, S.hacker_id
HAVING count(S.challenge_id) > 1
ORDER BY count(S.challenge_id) DESC, S.hacker_id;