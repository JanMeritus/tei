declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";

let $seznam :=
<rejstrik>
{
for $jmeno in //history//persName
for $idno in $jmeno/preceding::msIdentifier[1]/idno
order by $jmeno
return <prov>{$jmeno} {$idno}</prov>
}
</rejstrik>

return $seznam