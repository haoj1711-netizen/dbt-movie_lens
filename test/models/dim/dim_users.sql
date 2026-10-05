WITH ratings as (
    SELECT DISTINCT user_id FROM {{ ref('src_ratings') }}  
),
tags as (
    SELECT DISTINCT user_id FROM {{ ref('src_tags') }}
)
SELECT DISTINCT user_id
FROM (
    SELECT * FROM ratings
    UNION
    SELECT * FROM tags
)