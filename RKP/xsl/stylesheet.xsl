<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
 <body>
 <table border="1" width="100%" cellpadding="10"><tr>
<td>
 <h2><p style="color:darkred"><xsl:value-of select="//msDescription/msHeading/author"/>:<br/>
   <xsl:value-of select="//msDescription/msHeading/title"/></p></h2></td></tr></table>
   <p><b>Autor:</b> <xsl:value-of select="//msDescription/msHeading/author"/></p>
   <p><b>Název:</b> <xsl:value-of select="//msDescription/msHeading/title"/></p>
   <p><b>Datum vzniku:</b> <xsl:value-of select="//msDescription/msHeading/origDate"/></p>
   <p><b>Místo vzniku:</b> <xsl:value-of select="//msDescription/msHeading/origPlace"/></p>
   <p><b>Jazyk:</b> <xsl:value-of select="//msDescription/msHeading/textLang"/></p>

 </body>
 </html>

</xsl:template>


</xsl:stylesheet>
