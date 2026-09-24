select * from {{ ref('scd_silver_airports') }}
where AIRPORT_IDENT='01CN'