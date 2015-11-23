declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";

let $seznam :=
<rejstrik>
{
for $date in //msDesc/head/origDate
for $idno in $date/preceding::msIdentifier[1]/idno


order by $date
return <datum>{$date} {$idno}</datum>
}

</rejstrik>

return $seznam

