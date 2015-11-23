declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";

let $seznam :=
<rejstrik>
{
let $notace := //musicNotation
let $idno := $notace/preceding::msIdentifier[1]/idno
return <notace>{$idno}</notace>
}
</rejstrik>
order by $seznam/notace
return $seznam