SELECT DISTINCT fcb.sk_customer_id
FROM 
    {{ ref('fact_cash_balances') }} fcb
LEFT JOIN 
    {{ ref('dim_customer') }} dc
ON 
    fcb.sk_customer_id = dc.sk_customer_id
WHERE
    dc.sk_customer_id IS NULL