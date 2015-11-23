declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.w3.org/1999/XSL/Transform";
declare namespace xsl = "http://www.w3.org/1999/XSL/Transform";

let $seznam :=
<seznam>
{
for $TEI in //tei:TEI
for $select in $TEI//tei:publicationStmt/tei:idno[@type='signatura']/text()
order by $select
return
<xsl:apply-templates select="document('{$select}.tei.xml')/TEI/teiHeader"/>
}
</seznam>
return $seznam