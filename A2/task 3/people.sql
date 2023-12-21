CREATE VIEW Movies.People AS
SELECT
    p.imdb_id AS "IMDb Key",
    p.name AS "Name",
    CASE
        WHEN a.id IS NOT NULL THEN 'Yes'
        ELSE 'No'
    END AS "Is Actor",
    CASE
        WHEN d.id IS NOT NULL THEN 'Yes'
        ELSE 'No'
    END AS "Is Director",
    CASE
        WHEN c.id IS NOT NULL THEN 'Yes'
        ELSE 'No'
    END AS "Is Creator",
    COUNT(DISTINCT a.id) + COUNT(DISTINCT d.id) + COUNT(DISTINCT c.id) AS "Total Number of Movies"
FROM
    Person p
    LEFT JOIN Actor a ON p.id = a.id
    AND p.imdb_id = a.imdb_id
    LEFT JOIN Director d ON p.id = d.id
    AND p.imdb_id = d.imdb_id
    LEFT JOIN Creator c ON p.id = c.id
    AND p.imdb_id = c.imdb_id
    LEFT JOIN Acts_in ai ON p.imdb_id = ai.actor_id
    LEFT JOIN Directed di ON p.imdb_id = di.director_id
    LEFT JOIN Created cr ON p.imdb_id = cr.creator_id
GROUP BY
    p.imdb_id,
    p.name,
    a.id,
    d.id,
    c.id;