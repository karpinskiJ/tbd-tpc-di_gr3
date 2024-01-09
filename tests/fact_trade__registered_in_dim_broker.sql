SELECT DISTINCT ft.sk_broker_id
FROM 
    {{ ref('fact_trade') }} ft
LEFT JOIN 
    {{ ref('dim_broker') }} db
ON 
    ft.sk_broker_id = db.sk_broker_id
WHERE
    db.sk_broker_id IS NULL