{% docs airport_comments_dsc %}

Orders can be one of the following statuses:

| status         | description                                                               |
|----------------|---------------------------------------------------------------------------|
| comment_id     | Primary key identifier for the airport comment              |
| airport_ident        | Foreign key referencing airport_ident in silver_airports     |
| comment_timestamp      | Timestamp indicating when the comment was authored by the user                              |
| member_nickname       | Display handle of the comment author |
| comment_subject       | Subject header or title line of the comment |
| comment_body       | Full text details and observations posted by the user |
| loaded_at       | System timestamp recording when the row was processed into the silver layer |

{% enddocs %}