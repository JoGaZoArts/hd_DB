xquery version "3.1";
let $doc := doc("/db/hr_DB/data/hr.xml")

for $country in $doc//*[local-name()='country']
for $region in $doc//*[local-name()='region']
where $country/*[local-name()='region_id'] = $region/@*[local-name()='region_id']
return
    <resultado_geografia>
        <pais>{string($country/*[local-name()='country_name'])}</pais>
        <continente>{string($region/*[local-name()='region_name'])}</continente>
    </resultado_geografia>