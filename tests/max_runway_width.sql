select * from 
{{ ref('silver_runways') }}
where RUNWAY_WIDTH_FT>9000