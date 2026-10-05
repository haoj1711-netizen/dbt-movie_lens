WITH src_scores as (
    SELECT * FROM {{ ref('src_genome_score') }}
)

SELECT
    movie_id,
    tag_id,
    ROUND(relevance, 4) as relevance_score
FROM src_scores
WHERE relevance > 0

--command: dbt run --select fct_genome_scores