{% docs airport_comments_dsc %}

The three silver layer tables follow a star schema structure linked together by the core key airport_ident.
1. Silver_airports - Store the master record for each aviation facility, including geographic coordinates, airport classification, 
   country, and regional codes.
2. Silver_runways - Connects to silver_airports via airport_ident in a 1-to-many relationship, containing technical 
   specifications for all runways at a given airport.
3. Silver_airport_comments - Connects to silver_airports via airport_ident in a 1-to-many relationship, storing
   user-submitted observations, notes, and community updates tied to that facility.

{% enddocs %}