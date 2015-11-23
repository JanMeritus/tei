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
        <místa>
            <xsl:apply-templates select="místa/item">
                <xsl:sort order="ascending" data-type="text" select="placeName" lang="cze"/>
            </xsl:apply-templates>
        </místa>
    </xsl:template>
    <xsl:template match="item">
       
                <item>
                    <místo>
                        <xsl:value-of select="normalize-space(placeName)"/>
                    </místo>
                    <signatura>
                        <xsl:value-of select="signatura"/>
                    </signatura>
                    
                </item>
    </xsl:template>
    
</xsl:stylesheet>
