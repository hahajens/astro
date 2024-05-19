SELECT TicketNumber 
FROM {{ref('f_Sales')}}
WHERE NetAmount < 0 