declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";

let $seznam :=
<rejstrik>
{
for $lang in //msContents/textLang

(:for $lang_part in  $lang/parent::textLang/parent::msContents/msItem/textLang
for $locus in $lang_part/parent::msItem/locus:)
for $idno in $lang/preceding::msIdentifier[1]/idno
order by $lang/@mainLang
return <jazyk>{$lang} {$idno}</jazyk>
}

</rejstrik>

return $seznam

