WITH fct_movies_with_tags as (
    SELECT * FROM {{ ref('dim_movies_with_tags') }}
)

SELECT * FROM fct_movies_with_tags

