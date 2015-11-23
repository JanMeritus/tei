<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xd"
    version="1.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 14, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Bar</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    <xsl:output indent="yes"/>
    <xsl:template match="/">
        <facsimile>
            <xsl:apply-templates select="facsimile/surface"/>
                
            
        </facsimile>
    </xsl:template>
    <xsl:template match="surface">
        <xsl:element name="surface">
            <xsl:attribute name="xml:id">
                <xsl:value-of select="@xml:id"/>
            </xsl:attribute>
        
        
            <desc>
                <label><xsl:text>Adl.15 </xsl:text> <xsl:number format="I"/></label>
               
            </desc>
        <xsl:element name="graphic">
            <xsl:attribute name="url">
                <xsl:value-of select="graphic/@url"/>
            </xsl:attribute>
        </xsl:element>
        </xsl:element>
        
    </xsl:template>
</xsl:stylesheet>