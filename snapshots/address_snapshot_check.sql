{% snapshot address_snapshot_check %}

    {{
        config(
            target_schema='shapshots',
            strategy='check',
            unique_key='customer_id',
            check_cols=['address']
        )
    }}

    SELECT * FROM raw.customer

{% endsnapshot %}