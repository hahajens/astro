
-- Definiera en dictionary (python) för att mappa upp tabeller och minsta antal rader
{% set expected_counts = {
        'customer': 50000,
        'item': 1000,
        'store': 20
    }
%}


--- loopa över dictionary och kolla om antal rader i respektive tabeller är mindre än reglerna vi satt upp i dictionary
{% for tableNm, expected_count in expected_counts.items() %}
    SELECT '{{tableNm}}' AS TableNm,
        (SELECT COUNT(*) FROM {{ source('presentation', tableNm) }} AS row_count ),
        {{ expected_count }} AS expected_row_count
    WHERE 
        (SELECT COUNT(*) FROM {{ source('presentation', tableNm) }} ) < {{ expected_count }}
    {% if not loop.last %} UNION ALL {% endif %}

{% endfor %}