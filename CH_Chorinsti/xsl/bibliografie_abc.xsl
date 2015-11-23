<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" 
    exclude-result-prefixes="xd"
    version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 16, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Bar</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    <xsl:output indent="yes"/>
    <xsl:template match="/">
        <bibliografie>
            <xsl:apply-templates select="bibliografie/bibl">
            <xsl:sort/>
        </xsl:apply-templates>
        </bibliografie>
    </xsl:template>
    
   <xsl:template match="bibl">
       <bibl><xsl:value-of select="."/></bibl>
   </xsl:template>
    
</xsl:stylesheet>