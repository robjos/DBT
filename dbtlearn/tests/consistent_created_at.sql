select *
from {{ ref('dim_listings_cleansed') }} a 
join {{ ref('fct_reviews') }} b on(a.listing_id = b.listing_id)
where b.review_date < a.created_at