<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" exclude-result-prefixes="xd" version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 16, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Bar</xd:p>
            <xd:p/>
        </xd:desc>
    </xd:doc>
    <xsl:output indent="yes"/>
    <xsl:template match="/">
        <jmena>
            <xsl:apply-templates select="místa/item[1]"/>
            <xsl:apply-templates
                select="/místa/item[místo/child::node() !=
                preceding-sibling::item[1]/místo/child::node()]"
            />
        </jmena>
    </xsl:template>
    <xsl:template match="item">
        <xsl:variable name="name" select="místo"/>
        <xsl:variable name="pocet" select="count(following::místo[. = $name])"/>
        <item>
            <name>
                <xsl:value-of select="místo"/>
            </name>
            <signatura>
                <xsl:apply-templates select="signatura"/>
            </signatura>
            <xsl:for-each select="following::signatura[position() &lt;= $pocet]">
                <signatura>
                    <xsl:apply-templates select="."/>
                </signatura>
            </xsl:for-each>
            <výskyt>
                <xsl:value-of select="$pocet + 1"/>
            </výskyt>
        </item>
    </xsl:template>
    <xsl:template match="signatura">
        <xsl:choose>
            <xsl:when test="contains(., 'CH-RKP-0000.00')">
                <xsl:value-of select="concat('CH ', substring-after(., '0000.00'))"/>
            </xsl:when>
            <xsl:when test="contains(., 'CH-RKP-0000.0')">
                <xsl:value-of select="concat('CH ', substring-after(., '0000.0'))"/>
            </xsl:when>
            <xsl:when test="contains(., 'CH-RKP-0000.')">
                <xsl:value-of select="concat('CH ', substring-after(., '0000.'))"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
