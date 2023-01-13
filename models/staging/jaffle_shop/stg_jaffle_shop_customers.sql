with base_customers as
(
select * 
from
{{ source("jaffle_shop", "customers") }}
),
customers as
(

        select first_name || ' ' || last_name as name, 
        id as customer_id,
        last_name as surname,
        first_name as givenname

        from base_customers

)
Select * from customers