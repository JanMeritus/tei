declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";


let $seznam :=
<html xml:lang="cs" lang="cs" dir="ltr">
  
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Digitalizované dokumenty - Historické fondy (TEI)</title>
  </head>
<body>
<h4>Digitalizované dokumenty - Historické fondy (TEI)</h4>
{
for $pocet_dig in count(//facsimile[contains(@xml:base, 'hades')]/@xml:base)
return <p>Pocet dig. dok. na hades.mzk.cz: <b>{$pocet_dig}</b></p>
}
{
for $pocet_dig in count(//facsimile[contains(@xml:base, 'imageserver')]/@xml:base)
return
<p>Pocet dig. dok. na imageserver.mzk.cz: <b>{$pocet_dig}</b></p>
}
{
for $pocet_dig in count(//facsimile[@xml:base]/surface)
return
<p>Pocet dig. obrázků: <b>{$pocet_dig}</b></p>
}
<table border="1" cellpadding="5">
<tr>
  <td><b>signatura</b></td>
  <td><b>sysno</b></td>
  <td><b>čár. kód</b></td>
  <td><b>url</b></td>
</tr>
{
for $x in //facsimile/@xml:base
for $url in $x cast as xs:string
for $format in substring-after($x/following::surface[1]/graphic[1]/@url, '.')
for $carak in substring-after($x/preceding::msDesc/@xml:id, 'CZ_BOA001_')
for $sysno1 in substring-after($x, 'mzk03/')
for $sysno2 in substring($sysno1, 1, 11)

let $surface := $x/parent::facsimile/surface
for $y in $x/preceding::msDesc/msIdentifier/idno[1]/text()

where string-length(replace($sysno2, '/', ''))= 9
order by $y
return 
<tr>
  <td>{$y}</td>
  <td>{replace($sysno2, '/', '')}</td>
  <td>{$carak}</td>
 <td><a href="{$url}">{$url}</a></td> 
</tr>
}

</table>
</body>
</html>
return $seznam

