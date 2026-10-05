with src_movies as (
    select * from {{ ref('src_movies') }} -- refer to the staging view we created
)
select
    movie_id,
    INITCAP(TRIM(title)) as movie_title,
    SPLIT(genres, '|') as genre_array,
    genres
from src_movies
