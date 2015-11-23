declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";

let $tabulka :=

<TEI>
  <teiHeader>
    <fileDesc>
      <titleStmt>
        <title/>
      </titleStmt>
      <publicationStmt>
        <p/>
      </publicationStmt>
      <sourceDesc>
        <list>
          <figure/>
          <head/>
          <item/>
        </list>
      </sourceDesc>
    </fileDesc>
  </teiHeader>
  <text>
    <body>
      <table>
        <head>
          <title>Digitalizovane dokumenty - SVN iris.mzk.cz/ENRICH</title>
        </head>
        <row>
          <cell>Digitalizovane dokumenty - SVN iris.mzk.cz/ENRICH</cell>
        </row>
        {
        let $pocet_dokumentu := //TEI[facsimile/@xml:base]
        let $pocet_dokumentu_K := //TEI[//idno[@type='Kramerius']/text()]
        let $images := //graphic[@url]
        return
        <row>
          <cell>Počet dig. dokumentů: {count($pocet_dokumentu)}</cell>
          <cell>Počet dig. dokumentů v Krameriovi: {count($pocet_dokumentu_K)}</cell>
          <cell>Celkový počet obr.: {format-number(count($images), '###,###')}</cell>
        </row>
        }
        <row>
          <cell>Systémové číslo</cell>
          <cell>Čárový kód</cell>
          <cell>Signatura</cell>
          <cell>Název</cell>
          <cell>URL</cell>
          <cell>Kramerius</cell>
          <cell>Počet obrázků</cell>
          <cell>Počet obrázků všech rozlišení</cell>
          <cell>Formát</cell>
        </row>
{
for $TEI in //TEI[facsimile/@xml:base]
for $Kramerius in string($TEI/teiHeader/fileDesc/publicationStmt/idno[@type='Kramerius'][1]/text())
for $sysno in $TEI/teiHeader/fileDesc/publicationStmt/idno[@type='control_number'][1]/text()
order by $TEI//msDesc/msIdentifier/idno/text()
return 
<row>
  <cell>{$sysno}</cell>
          <cell>{$TEI/teiHeader/fileDesc/publicationStmt/idno[@type='bar_code']/text()}</cell>
          <cell>{$TEI/teiHeader/fileDesc/publicationStmt/idno[@type='shelf_mark']/text()}</cell>
          <cell>{$TEI/teiHeader/fileDesc/sourceDesc/msDesc/head/title//text()}</cell>
          <cell>{string($TEI/facsimile/@xml:base)}</cell>
          <cell>{if ($TEI/teiHeader/fileDesc/publicationStmt/idno[@type='Kramerius'][1]/text()) then concat('http://kramerius.mzk.cz/search/handle/', $Kramerius) else ''}</cell>
          
          <cell>{count($TEI/facsimile/surface)}</cell>
         <cell>{if ($TEI/facsimile/surface/graphic[position() > 1]) then 
 count($TEI/facsimile/surface/graphic) else ''}</cell>
          
                           
          <cell>{if (contains($TEI/facsimile/surface[1]/graphic[1]/@url, 'xml')) then 'jp2' else substring-after($TEI/facsimile/surface[1]/graphic[1]/@url, '.')}</cell>
          
        </row>

}
</table>
</body>
</text>
</TEI>
return $tabulka