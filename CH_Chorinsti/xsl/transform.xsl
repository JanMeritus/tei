<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html><head>
        <link REL="StyleSheet" TYPE="text/css" HREF="transform.css"/>
        <title><xsl:value-of select="TEI.2/teiHeader/fileDesc/sourceDesc/msDescription/msHeading/title"/>
	<xsl:value-of select="TEI.2/teiHeader/fileDesc/sourceDesc/msDescription/msHeading/origDate"/></title></head>
    <body bgcolor="white">
    	
    	<h2><xsl:value-of select="TEI.2/teiHeader/fileDesc/sourceDesc/msDescription/msHeading/title"/></h2>
	<xsl:apply-templates select="TEI.2/teiHeader/fileDesc/sourceDesc/msDescription"/>
	
    </body></html>
</xsl:template>

<xsl:template match="msDescription">
    <div CLASS="msDescription">
    <xsl:apply-templates select="msIdentifier"/>
    <xsl:apply-templates select="msHeading"/>
    <xsl:apply-templates select="msContents"/><br/>
    <xsl:apply-templates select="physDesc"/>
    <xsl:apply-templates select="history"/>
    <xsl:apply-templates select="additional"/>
    
   </div>
</xsl:template>

<xsl:template match="msHeading">
    <div CLASS="msHeading">
    <h4>Záhlaví</h4>
    <table><xsl:if test="title"><tr><th>Titul</th><td><xsl:value-of select="title"/></td></tr></xsl:if>
    <xsl:if test="author"><tr><th>Autor</th><td><xsl:value-of select="author"/></td></tr></xsl:if>
   <xsl:if test="origDate"><tr><th>Datace</th><td><xsl:value-of select="origDate"/><xsl:text> </xsl:text><xsl:choose><xsl:when test="origDate/@notAfter and origDate/@notBefore">(<xsl:value-of select="origDate/@notBefore"/>-<xsl:value-of select="origDate/@notAfter"/>)</xsl:when><xsl:otherwise></xsl:otherwise></xsl:choose></td></tr></xsl:if>
    <xsl:if test="textLang"><tr><th>Jazyk originálu</th><td><xsl:value-of select="textLang"/></td></tr></xsl:if>
    <xsl:if test="origPlace"><tr><th>Místo vzniku</th><td><xsl:value-of select="origPlace"/></td></tr></xsl:if>
    </table>
    <!--<xsl:if test="origPlace"><xsl:value-of select="origPlace"/><xsl:text>, </xsl:text></xsl:if>
    <xsl:if test="textLang"><xsl:value-of select="textLang"/><xsl:text>.</xsl:text></xsl:if>-->
    </div>
</xsl:template>

<xsl:template match="msIdentifier">
    <div CLASS="msIdentifier">
    <h4>Uložení dokumentu</h4>
    <table><xsl:if test="settlement"><tr><th>Země</th><td><xsl:value-of select="settlement"/></td></tr></xsl:if>
   <xsl:if test="region"> <tr><th>Oblast</th><td><xsl:value-of select="region"/></td></tr></xsl:if>
    <xsl:if test="repository"><tr><th>Místo uložení</th><td><xsl:value-of select="repository"/></td></tr></xsl:if>
    <xsl:if test="idno"><tr><th>Signatura</th><td><xsl:value-of select="idno"/></td></tr></xsl:if>
    <xsl:if test="altName"><tr><th>Jiné označení</th><td><xsl:value-of select="altName"/> <xsl:if test="altName/@type"> (type: <xsl:value-of select="altName/@type"/>)</xsl:if></td></tr></xsl:if></table>
    </div>
</xsl:template>

<xsl:template match="msContents">
    <h4>Rozpis obsahu</h4>
    <div CLASS="msContents">
    
    <xsl:apply-templates select="overview"/>   
    <xsl:for-each select="msItem">
       <h5>Textová jednotka (n: <xsl:value-of select="@n"/>)</h5>
   <table>
  <xsl:if test="locus"><tr><th>Rozsah</th> <td><xsl:value-of select="locus"/> <xsl:if test="locus/@from"> (from: <xsl:value-of select="locus/@from"/></xsl:if><xsl:text> </xsl:text><xsl:if test="locus/@to">to:  <xsl:value-of select="locus/@to"/>)</xsl:if></td></tr></xsl:if>
  <xsl:if test="author[1]"><tr><th>Autor</th> <td><xsl:value-of select="author[1]"/></td></tr></xsl:if>
 <xsl:if test="author[2]"><tr><th>Autor</th> <td><xsl:value-of select="author[2]"/></td></tr></xsl:if>
  <xsl:if test="author[3]"><tr><th>Autor</th> <td><xsl:value-of select="author[3]"/></td></tr></xsl:if>
  <xsl:if test="author[4]"><tr><th>Autor</th> <td><xsl:value-of select="author[4]"/></td></tr></xsl:if>
  <xsl:if test="author[5]"><tr><th>Autor</th> <td><xsl:value-of select="author[5]"/></td></tr></xsl:if>
   <xsl:if test="title[1]"><tr><th>Titul</th> <td><xsl:value-of select="title[1]"/></td></tr></xsl:if>
   <xsl:if test="title[2]"><tr><th>Titul</th> <td><xsl:value-of select="title[2]"/></td></tr></xsl:if>
   <xsl:if test="title[3]"><tr><th>Titul</th> <td><xsl:value-of select="title[3]"/></td></tr></xsl:if>
   
   <xsl:if test="rubric[1]"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric[1]"/></td></tr></xsl:if>
   <xsl:if test="rubric[2]"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric[2]"/></td></tr></xsl:if>
   <xsl:if test="rubric[3]"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric[3]"/></td></tr></xsl:if>
   <xsl:if test="rubric[4]"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric[4]"/></td></tr></xsl:if>
   <xsl:if test="rubric[5]"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric[5]"/></td></tr></xsl:if>
   <xsl:if test="rubric[6]"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric[6]"/></td></tr></xsl:if>
   <xsl:if test="rubric[7]"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric[7]"/></td></tr></xsl:if>
   <xsl:if test="rubric[8]"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric[8]"/></td></tr></xsl:if>
   <xsl:if test="rubric[9]"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric[9]"/></td></tr></xsl:if>
   <xsl:if test="rubric[10]"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric[10]"/></td></tr></xsl:if>
  <xsl:if test="incipit[1]"><tr><th>Incipit</th> <td><xsl:value-of select="incipit[1]"/></td></tr></xsl:if>
  <xsl:if test="incipit[2]"><tr><th>Incipit</th> <td><xsl:value-of select="incipit[2]"/></td></tr></xsl:if>
  <xsl:if test="incipit[3]"><tr><th>Incipit</th> <td><xsl:value-of select="incipit[3]"/></td></tr></xsl:if>
  <xsl:if test="incipit[4]"><tr><th>Incipit</th> <td><xsl:value-of select="incipit[4]"/></td></tr></xsl:if>
  <xsl:if test="incipit[5]"><tr><th>Incipit</th> <td><xsl:value-of select="incipit[5]"/></td></tr></xsl:if>
  <xsl:if test="incipit[6]"><tr><th>Incipit</th> <td><xsl:value-of select="incipit[6]"/></td></tr></xsl:if>
  <xsl:if test="incipit[7]"><tr><th>Incipit</th> <td><xsl:value-of select="incipit[7]"/></td></tr></xsl:if>
  <xsl:if test="incipit[8]"><tr><th>Incipit</th> <td><xsl:value-of select="incipit[8]"/></td></tr></xsl:if>
  <xsl:if test="incipit[9]"><tr><th>Incipit</th> <td><xsl:value-of select="incipit[9]"/></td></tr></xsl:if>
  <xsl:if test="incipit[10]"><tr><th>Incipit</th> <td><xsl:value-of select="incipit[10]"/></td></tr></xsl:if>
  <xsl:if test="explicit"><tr><th>Explicit</th> <td><xsl:value-of select="explicit"/></td></tr></xsl:if>
  <xsl:if test="colophon"><tr><th>Kolofon</th> <td><xsl:value-of select="colophon"/></td></tr></xsl:if>
  <xsl:if test="textLang"><tr><th>Jazyk originálu</th> <td><xsl:value-of select="textLang"/></td></tr></xsl:if>
  <xsl:if test="note"><tr><th>Poznámka</th> <td><xsl:value-of select="note"/></td></tr></xsl:if>
 
   </table>
    <xsl:if test="//msContents/msItem/msItem">
  	<xsl:for-each select="msItem">
       <h5>Textová jednotka (n: <xsl:value-of select="@n"/>)</h5>
   <table>
  <xsl:if test="locus"><tr><th>Rozsah</th> <td><xsl:value-of select="locus"/> (<xsl:if test="locus/@from">from: <xsl:value-of select="locus/@from"/></xsl:if><xsl:text> </xsl:text><xsl:if test="locus/@to">to:  <xsl:value-of select="locus/@to"/></xsl:if>)</td></tr></xsl:if>
  <xsl:if test="author"><tr><th>Autor</th> <td><xsl:value-of select="author"/></td></tr></xsl:if>
   <xsl:if test="title"><tr><th>Titul</th> <td><xsl:value-of select="title"/></td></tr></xsl:if>
   <xsl:if test="rubric"><tr><th>Rubrika</th> <td><xsl:value-of select="rubric"/></td></tr></xsl:if>
  <xsl:if test="incipit"><tr><th>Incipit</th> <td><xsl:value-of select="incipit"/></td></tr></xsl:if> 
  <xsl:if test="explicit"><tr><th>Explicit</th> <td><xsl:value-of select="explicit"/></td></tr></xsl:if>
  <xsl:if test="colophon"><tr><th>Kolofon</th> <td><xsl:value-of select="colophon"/></td></tr></xsl:if>
  <xsl:if test="textLang"><tr><th>Jazyk originálu</th> <td><xsl:value-of select="textLang"/></td></tr></xsl:if>
  <xsl:if test="note"><tr><th>Poznámka</th> <td><xsl:value-of select="note"/></td></tr></xsl:if>
  </table></xsl:for-each>
  </xsl:if>
    <xsl:choose>
    
            <xsl:when test="locus[@from=@to]">
                <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="/TEI.2/teiHeader/fileDesc/location"/>
                    <xsl:choose>
                        <xsl:when test="locus/@from &lt; 10">/00</xsl:when>
                        <xsl:when test="locus/@from &gt; 9 and locus/@from &lt; 100">/0</xsl:when>
                        <xsl:otherwise>/</xsl:otherwise>
                    </xsl:choose>
                    <xsl:value-of select="locus/@from"/>
                </xsl:attribute>
               
                <xsl:if test="author">
                    <xsl:value-of select="author"/>&#160;
                </xsl:if>
                
                </a>
		
                <br/>
               
            </xsl:when>
            <xsl:otherwise>
                
                
                <br/>
                <div CLASS="pages">
                <xsl:for-each select="page">
                    <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="/TEI.2/teiHeader/fileDesc/location"/>
                        <xsl:choose>
                            <xsl:when test="/@location &lt; 10">/00</xsl:when>
                            <xsl:when test="./@location &gt; 9 and ./@location &lt; 100">/0</xsl:when>
                            <xsl:otherwise>/</xsl:otherwise>
                        </xsl:choose>
                        <xsl:value-of select="./@location"/>
			</xsl:attribute>
                    <xsl:attribute name="title"><xsl:value-of select="."/></xsl:attribute>
                    <xsl:value-of select="."/></a>&#160;&#160;
                </xsl:for-each>
                </div>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:for-each>
    </div>
</xsl:template>

<xsl:template match="overview">
   <div CLASS="overview">
  
   <xsl:if test="//msContents/overview/p"><h6>Přehled</h6> 
   <xsl:value-of select="//msContents/overview/p"/><br/></xsl:if>
   <xsl:if test="//msContents/overview/p[2]"><xsl:value-of select="//msContents/overview/p[2]"/><br/></xsl:if>
   <xsl:if test="//msContents/overview/p[3]"><xsl:value-of select="//msContents/overview/p[3]"/><br/></xsl:if>
   <xsl:if test="//msContents/overview/p[4]"><xsl:value-of select="//msContents/overview/p[4]"/><br/></xsl:if>
   <xsl:if test="//msContents/overview/p[5]"><xsl:value-of select="//msContents/overview/p[5]"/><br/></xsl:if>
  <br/><br/>
    <span STYLE="font-size:100%;font-weight:bold"><xsl:text>Části rukopisu:</xsl:text></span></div>
</xsl:template>

<xsl:template match="physDesc">
    <div CLASS="physDesc">
    <h4>Dochování</h4>
    <table><xsl:if test="form"><tr><th>Forma</th> <td><xsl:value-of select="form"/></td></tr></xsl:if>
    <!--<xsl:if test="support"><b>Support: </b><xsl:value-of select="support"/><br/></xsl:if>-->
    <xsl:if test="support"><tr><th>Materiál</th> <td><xsl:apply-templates select="support"/></td></tr></xsl:if>
    <xsl:if test="extent"><tr><th>Rozsah</th> <td><xsl:value-of select="extent"/> (<xsl:value-of select="child::foliation/*"/>)</td></tr></xsl:if>
    <!--<xsl:if test="msWriting"><b>Script: </b><xsl:value-of select="msWriting"/><br/></xsl:if>-->
    <xsl:if test="layout"><tr><th>Vzhled</th> <td><xsl:value-of select="layout"/></td></tr></xsl:if>
    <xsl:if test="decoration"><tr><th>Výzdoba</th> <td><xsl:value-of select="decoration"/></td></tr></xsl:if>
    <xsl:if test="condition"><tr><th>Stav dochování</th> <td><xsl:value-of select="condition"/></td></tr></xsl:if>
    <xsl:if test="bindingDesc"><tr><th>Vazba</th> <td><xsl:value-of select="bindingDesc"/></td></tr></xsl:if>
    <xsl:if test="msWriting"><xsl:apply-templates select="msWriting"/></xsl:if>
    <!--<xsl:if test="foliation"><b>Foliation: </b><xsl:value-of select="foliation"/><br/></xsl:if>--></table>
    </div>
</xsl:template>

<xsl:template match="msWriting">
    <div CLASS="desc">
   <table><tr><th>Písmo</th>
   <xsl:if test="@hands"><td><xsl:value-of select="@hands"/>
        <xsl:choose>
            <xsl:when test="@hands &gt; 4"><xsl:text> písařských rukou</xsl:text></xsl:when>
            <xsl:when test="@hands &lt; 5 and @hands &gt; 1"><xsl:text> písařské ruce</xsl:text></xsl:when>
            <xsl:otherwise></xsl:otherwise>
        </xsl:choose></td></xsl:if> </tr>
       
	<xsl:for-each select="handDesc"><tr><th></th><td>
	<xsl:if test="p"><xsl:value-of select="p"/> <xsl:text> </xsl:text><xsl:if test="@script">(<xsl:value-of select="@script"/>)</xsl:if><xsl:if test="@scribe">; písař: <xsl:value-of select="@scribe"/></xsl:if></xsl:if></td> 	
	</tr></xsl:for-each></table>
    </div>
</xsl:template>

<xsl:template match="support">
    <xsl:choose>
        <xsl:when test="p/*">
            <xsl:if test="p/material"><xsl:value-of select="p/material"/></xsl:if>
            <xsl:if test="p/dimensions">; rozměry: 
                <xsl:choose>
                    <xsl:when test="p/dimensions/height and p/dimensions/width">
                        <xsl:value-of select="p/dimensions/height"/>
                        <xsl:text> x </xsl:text>
                        <xsl:value-of select="p/dimensions/width"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="."/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="p"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template match="history">
    <div CLASS="history">
    <h4>Historie</h4>
    <!--<span CLASS="desc">History:</span>-->
    <!--<xsl:if test="origin"><b>Origin:</b><br/><xsl:value-of select="origin/p"/><br/></xsl:if>-->
    <xsl:if test="provenance"><b>Provenience:</b><br/><xsl:value-of select="provenance/p[1]"/><br/></xsl:if>
    <xsl:if test="provenance/p[2]"><xsl:value-of select="provenance/p[2]"/><br/></xsl:if>
    <xsl:if test="provenance/p[3]"><xsl:value-of select="provenance/p[3]"/><br/></xsl:if>
    <xsl:if test="provenance/p[4]"><xsl:value-of select="provenance/p[4]"/><br/></xsl:if>
    <xsl:if test="provenance/p[5]"><xsl:value-of select="provenance/p[5]"/><br/></xsl:if>
    <xsl:if test="provenance/p[6]"><xsl:value-of select="provenance/p[6]"/><br/></xsl:if>
    <xsl:if test="provenance/p[7]"><xsl:value-of select="provenance/p[7]"/><br/></xsl:if>
    <xsl:if test="provenance/p[8]"><xsl:value-of select="provenance/p[8]"/><br/></xsl:if>
    <xsl:if test="provenance/p[9]"><xsl:value-of select="provenance/p[9]"/><br/></xsl:if>
    <xsl:if test="provenance/p[10]"><xsl:value-of select="provenance/p[10]"/><br/></xsl:if>
    
    <xsl:if test="acquisition"><b>Akvizice:</b><br/><xsl:value-of select="acquisition"/></xsl:if>
    </div>
</xsl:template>

<xsl:template match="additional">
   <h4>Další informace</h4>
	<xsl:if test="listBibl"><div CLASS="additional">
 
    <xsl:if test="listBibl/bibl[1]"><b>Literatura:</b><br/></xsl:if>
 
    <span STYLE="margin-left:30pt">
    <xsl:if test="listBibl/bibl[1]"><xsl:value-of select="listBibl/bibl[1]"/><br/></xsl:if>
   <xsl:if test="listBibl/bibl[2]"><xsl:value-of select="listBibl/bibl[2]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[3]"><xsl:value-of select="listBibl/bibl[3]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[4]"><xsl:value-of select="listBibl/bibl[4]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[5]"><xsl:value-of select="listBibl/bibl[5]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[6]"><xsl:value-of select="listBibl/bibl[6]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[7]"><xsl:value-of select="listBibl/bibl[7]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[8]"><xsl:value-of select="listBibl/bibl[8]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[9]"><xsl:value-of select="listBibl/bibl[9]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[10]"><xsl:value-of select="listBibl/bibl[10]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[11]"><xsl:value-of select="listBibl/bibl[11]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[12]"><xsl:value-of select="listBibl/bibl[12]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[13]"><xsl:value-of select="listBibl/bibl[13]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[14]"><xsl:value-of select="listBibl/bibl[14]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[15]"><xsl:value-of select="listBibl/bibl[15]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[16]"><xsl:value-of select="listBibl/bibl[16]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[17]"><xsl:value-of select="listBibl/bibl[17]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[18]"><xsl:value-of select="listBibl/bibl[18]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[19]"><xsl:value-of select="listBibl/bibl[19]"/><br/></xsl:if>
    <xsl:if test="listBibl/bibl[20]"><xsl:value-of select="listBibl/bibl[20]"/><br/></xsl:if>
	<xsl:value-of select="listBibl/bibl/imprint/pubPlace"/>
        <xsl:value-of select="listBibl/bibl/imprint/date"/></span><br/>
   </div></xsl:if>
    <div CLASS="recordHist"> 
    <xsl:if test="//recordHist/source"><b>Historie záznamu:</b><br/></xsl:if>
     <span STYLE="margin-left:30pt">
  <xsl:if test="//recordHist/source"> <xsl:value-of select="//recordHist/source"/><br/></xsl:if></span>  <span STYLE="margin-left:30pt"><xsl:if test="//recordHist/change"><xsl:if test="//recordHist/change/date"><xsl:value-of select="//recordHist/change/date"/>, </xsl:if><xsl:value-of select="//recordHist/change/respStmt/name[@type='place']"/>, 
   <xsl:if test="//recordHist/change/respStmt/name[2]"><xsl:value-of select="//recordHist/change/respStmt/name[2]"/>, </xsl:if>
  <xsl:if test="//recordHist/change/respStmt/name[3]"><xsl:value-of select="//recordHist/change/respStmt/name[3]"/>, </xsl:if>
  <xsl:if test="//recordHist/change/respStmt/name[4]"><xsl:value-of select="//recordHist/change/respStmt/name[4]"/>, </xsl:if>
  <xsl:if test="//recordHist/change/respStmt/name[5]"><xsl:value-of select="//recordHist/change/respStmt/name[5]"/>, </xsl:if>
  <xsl:value-of select="//recordHist/change/item"/></xsl:if></span>
 </div>
</xsl:template>



</xsl:stylesheet>
