select
    S_ACCTBAL as acctbal,
    S_ADDRESS as address,
    S_COMMENT as comment,
    S_NAME as name,
    S_NATIONKEY as nationkey,
    S_PHONE as phone,
    S_SUPPKEY as suppkey
from 
    {{ source('tpch', 'supplier') }}