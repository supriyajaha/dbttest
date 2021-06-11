select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- amount stored in cents, coverts it to dollar

 {{ cents_to_dollars('amount') }} as amount,
    created as created_at

    from `dbt-tutorial`.stripe.payment