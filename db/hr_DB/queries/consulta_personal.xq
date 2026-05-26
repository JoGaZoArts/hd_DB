xquery version "3.1";
let $doc := doc("/db/hr_DB/data/hr.xml")

for $emp in $doc//*[local-name()='employee']
for $dept in $doc//*[local-name()='department']
where $emp/*[local-name()='department_id'] = $dept/@*[local-name()='department_id']
return
    <resultado_personal>
        <nombre>{concat($emp/*[local-name()='first_name'], ' ', $emp/*[local-name()='last_name'])}</nombre>
        <departamento>{string($dept/*[local-name()='department_name'])}</departamento>
    </resultado_personal>
    
