<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xd"
    version="1.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Oct 29, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Bar</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    <xsl:template match="/">
        <pocet>
            
            <xsl:value-of select="count(//incident)"/>
            
        </pocet>
    </xsl:template>
</xsl:stylesheet>