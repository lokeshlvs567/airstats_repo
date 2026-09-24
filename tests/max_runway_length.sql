select * from 
{{ ref('silver_runways') }}
where RUNWAY_LENGTH_FT>30000