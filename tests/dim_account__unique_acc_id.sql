select 
    sk_account_id, 
    count(*) cnt
from {{ ref('dim_account') }} 
group by sk_account_id
having cnt > 1