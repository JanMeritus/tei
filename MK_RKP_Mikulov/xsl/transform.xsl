<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html><head>
        <link REL="StyleSheet" TYPE="text/css" HREF="transform.css"/>
        <title><xsl:value-of select="TEI.2/teiHeader/fileDesc/sourceDesc/msDescription/msHeading/title"/>:<xsl:value-of select="TEI.2/teiHeader/fileDesc/sourceDesc/msDescription/msHeading/origDate"/></title></head>
    <body bgcolor="white">
        <xsl:apply-templates select="TEI.2/teiHeader/fileDesc/sourceDesc/msDescription"/>
    </body></html>
</xsl:template>

<xsl:template match="msDescription">
    <div CLASS="msDescription">
    <xsl:apply-templates select="msIdentifier"/>
    <xsl:apply-templates select="msHeading"/>
    <xsl:apply-templates select="msContents"/><br/>
    <xsl:apply-templates select="physDesc/msWriting"/><br/>
    <xsl:apply-templates select="physDesc"/>
    <xsl:apply-templates select="history"/>
    <xsl:apply-templates select="additional"/>
    </div>
</xsl:template>

<xsl:template match="msHeading">
    <div CLASS="msHeading">
    <i><xsl:value-of select="title"/><xsl:text> </xsl:text></i>
    <xsl:if test="origDate"><xsl:value-of select="origDate"/><xsl:text></xsl:text></xsl:if>
    <!--<xsl:if test="origPlace"><xsl:value-of select="origPlace"/><xsl:text>, </xsl:text></xsl:if>
    <xsl:if test="textLang"><xsl:value-of select="textLang"/><xsl:text>.</xsl:text></xsl:if>-->
    </div>
</xsl:template>

<xsl:template match="msIdentifier">
    <div CLASS="msIdentifier">
    <xsl:value-of select="settlement"/>,
    <xsl:value-of select="repository"/>,<br/>
    <xsl:value-of select="idno"/><br/>
    </div>
</xsl:template>

<xsl:template match="msContents">
    <xsl:apply-templates select="overview"/><br/>
    <div CLASS="msContents">
    <xsl:for-each select="msItem">
        <xsl:value-of select="locus"/>
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
                    <xsl:value-of select="locus/@from"/>.html
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:if test="author"><xsl:value-of select="author"/></xsl:if><xsl:value-of select="title"/>
                </xsl:attribute>
                <xsl:if test="author">
                    <xsl:value-of select="author"/>&#160;
                </xsl:if>
                <b><xsl:value-of select="title"/>.</b>
                </a>
                <xsl:if test="note">
                    <xsl:value-of select="note"/>
                </xsl:if><br/>
                <xsl:if test="textLang">
                    Language of text: <xsl:value-of select="textLang"/>
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="author">
                    <xsl:value-of select="author"/>&#160;
                </xsl:if>
                <b><xsl:value-of select="title"/>.</b>
                <xsl:if test="textLang">
                    Language of text: <xsl:value-of select="textLang"/>
                </xsl:if>
                <xsl:if test="note">
                    <xsl:text> </xsl:text><xsl:value-of select="note"/>
                </xsl:if><br/>
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
                        <xsl:value-of select="./@location"/>.html
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
    <xsl:value-of select="p"/><br/><br/>
    <span STYLE="font-size:120%;font-weight:bold"><xsl:text>Části rukopisu:</xsl:text></span>
</xsl:template>

<xsl:template match="physDesc">
    <div CLASS="physDesc">
    <span CLASS="desc">Fyzický popis:</span>
    <xsl:if test="form"><b>Forma: </b><xsl:value-of select="form"/><br/></xsl:if>
    <!--<xsl:if test="support"><b>Support: </b><xsl:value-of select="support"/><br/></xsl:if>-->
    <xsl:if test="support"><b>Materiál: </b><xsl:apply-templates select="support"/><br/></xsl:if>
    <xsl:if test="extent"><b>Počet stran: </b><xsl:value-of select="extent"/>(<xsl:value-of select="foliation"/>)<br/></xsl:if>
    <!--<xsl:if test="msWriting"><b>Script: </b><xsl:value-of select="msWriting"/><br/></xsl:if>-->
    <xsl:if test="decoration"><b>Vzhled: </b><xsl:value-of select="decoration"/><br/></xsl:if>
    <xsl:if test="bindingDesc"><b>Vazba: </b><xsl:value-of select="bindingDesc"/><br/></xsl:if>
    <!--<xsl:if test="foliation"><b>Foliation: </b><xsl:value-of select="foliation"/><br/></xsl:if>-->
    </div>
</xsl:template>

<xsl:template match="msWriting">
    <div CLASS="desc">
        <xsl:value-of select="@hands"/>
        <xsl:choose>
            <xsl:when test="@hands &gt; 4"><xsl:text> písařských ruk:</xsl:text></xsl:when>
            <xsl:when test="@hands &lt; 5 and @hands &gt; 1"><xsl:text> písařské ruce:</xsl:text></xsl:when>
            <xsl:otherwise><xsl:text> písařská ruka:</xsl:text></xsl:otherwise>
        </xsl:choose>
    </div>
    <div CLASS="handDesc">
        <xsl:for-each select="handDesc">
            <xsl:value-of select="@scribe"/> = <xsl:value-of select="p"/><br/>
        </xsl:for-each>
    </div>
</xsl:template>

<xsl:template match="support">
    <xsl:choose>
        <xsl:when test="p/*">
            <xsl:if test="p/material"><xsl:value-of select="p/material"/></xsl:if>
            <xsl:if test="p/dimensions">
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
    <!--<span CLASS="desc">History:</span>-->
    <!--<xsl:if test="origin"><b>Origin:</b><br/><xsl:value-of select="origin/p"/><br/></xsl:if>-->
    <xsl:if test="provenance"><b>Provenience:</b><br/><xsl:value-of select="provenance/p"/><br/></xsl:if>
    </div>
</xsl:template>

<xsl:template match="additional">
    <div CLASS="additional">
    <span CLASS="desc">Additional:</span><br/>
    <b>Bibliography:</b><br/><span STYLE="margin-left:30pt"><xsl:value-of select="listBibl/bibl/author"/>
        <i><xsl:value-of select="listBibl/bibl/title"/></i><xsl:value-of select="listBibl/bibl/imprint/pubPlace"/>
        <xsl:value-of select="listBibl/bibl/imprint/date"/></span>
    </div>
</xsl:template>
</xsl:stylesheet>
