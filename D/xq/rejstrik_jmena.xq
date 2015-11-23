declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";

let $seznam :=
<rejstrik>
{
for $person in //listPerson/person
for $idno in $person/preceding::msIdentifier[1]/idno

(:for $persName in $person/persName[1]
for $persName2 in $person/persName[position()>1]
for $surname in $persName/surname
for $forename in $persName/forename
for $nameLink in $persName/nameLink
for $roleName in $persName/roleName
for $genName in $persName/genName
for $addName in $persName/addName:)
order by $person/persName[1]/surname[1]
return <osoba>{$person} {$idno}</osoba>
}

</rejstrik>

return $seznam

