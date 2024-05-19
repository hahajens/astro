<!-- 
## Bra att ha om man ska ha större texter eller dokumentation. istället för att lägga i description property i yml filer
## också väldigt bra om man vill referera samma dokumentaionsdokument från flera modeller/tabeller då slipper man upprepa sig och kan referera till samma flera ggr
## referera till d_date i din decription i din ymlfil :
##    - name: date 
##      description: "{{ doc('d_date')}}"

## "kompilera" dokumentation med koMmando: dbt docs generate -->

{% docs date %}

    | Column | description      |
    |--------|------------------|
    | Year   | avser vilket år  |
    | Month  | avser vilken mnd |

{% enddocs %}   