with src_runways as (
select * from {{ ref('src_runways') }} )

select 
runway_id,
airport_ident,
runway_length_ft,
runway_width_ft,
case when runway_surface is null or runway_surface='' then '__UNKNOWN__' end as runway_surface,
runway_lighted,
runway_closed
from src_runways