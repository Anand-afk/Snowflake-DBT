with RED_Employee as(
    SELECT *
    FROM {{ source('RED_EDW_ON_SF','Load_Employee') }}
    LIMIT 10 
),

final as (
    select * from RED_Employee
)

select * from final