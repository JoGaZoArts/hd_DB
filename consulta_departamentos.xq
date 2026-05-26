xquery version "3.1";
let $doc := doc("/db/hr_DB/data/hr.xml")

for $dept in $doc//*[local-name()='department']
for $loc in $doc//*[local-name()='location']
where $dept/*[local-name()='location_id'] = $loc/@*[local-name()='location_id']
return
    <resultado_sedes>
        <departamento>{string($dept/*[local-name()='department_name'])}</departamento>
        <ciudad>{string($loc/*[local-name()='city'])}</ciudad>
        <direccion>{string($loc/*[local-name()='street_address'])}</direccion>
    </resultado_sedes>