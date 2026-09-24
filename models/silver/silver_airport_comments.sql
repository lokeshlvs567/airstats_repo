{{
    config(
        materialized='incremental',
        unique_key='comment_id'
    )
}}

with airport_comments as 
(select * from {{ ref('src_airport_comments') }})

select 
COMMENT_ID
,AIRPORT_IDENT
,COMMENT_TIMESTAMP
,nvl(MEMBER_NICKNAME,'__UNKNOWN__') as MEMBER_NICKNAME
,COMMENT_SUBJECT
,COMMENT_BODY, 
current_timestamp() as loaded_at
from airport_comments
where comment_body is not null or comment_body!=''
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    and COMMENT_ID > (select max(COMMENT_ID) from {{ this }}) 
{% endif %}
