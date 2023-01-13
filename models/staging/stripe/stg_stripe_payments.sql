with  base_payments as
(
select * from 
{{ source("stripe", "payment") }}
),

payments as
(

Select 

    id as payment_id,
    status as payment_status,
    round(amount/100.0,2) as payment_amount,
    orderid as order_id

from base_payments

)
Select * from Payments
