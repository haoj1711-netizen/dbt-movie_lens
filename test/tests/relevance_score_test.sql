SELECT
    movie_id,
    tag_id,


FROM {{ ref('fct_genome_scores') }}
WHERE relevance_score <= 3