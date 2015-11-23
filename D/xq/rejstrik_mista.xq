declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";

let $seznam :=
<rejstrik>
{
for $place in //listPerson/person
for $idno in $person/preceding::msIdentifier[1]/idno

order by $person/persName[1]/surname[1]
return <item>{$person} {$idno}</item>
}
</rejstrik>
return $seznam

