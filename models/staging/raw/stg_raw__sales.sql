with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id,
        revenue,
        quantity
    from source
)

select
concat(orders_id, "_", pdt_id) AS sales_id,
date_date,
orders_id,
pdt_id,
revenue,
quantity

from renamed
