{% snapshot customers_snapshot %}
    {{
        config(
            target_schema='snapshots',
            target_database='dbt_fundamentals_kc',
            unique_key='customer_id',
            strategy='check',
            check_cols=['all']
        )
    }}

    select * from {{ ref('customers') }}

 {% endsnapshot %}