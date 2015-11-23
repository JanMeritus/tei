<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xd"
    version="1.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Nov 19, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Bar</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    
    
    <xsl:template match="*">
        <xsl:choose>
            <xsl:when test="namespace-uri()=''">
                <xsl:element namespace="http://www.tei-c.org/ns/1.0" name="{local-name(.)}">
                    <xsl:apply-templates select="@*|*|processing-instruction()|comment()|text()"/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy>
                    <xsl:apply-templates select="@*|*|processing-instruction()|comment()|text()"/>
                </xsl:copy>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="@*|processing-instruction()|comment()">
        <xsl:copy/>
    </xsl:template>
    
    
    <xsl:template match="graphic/@url">
        <xsl:variable name="cislo">
            <xsl:number count="//facsimile/surface"/>
        </xsl:variable>
        <xsl:attribute name="url">
            <xsl:choose>
                <xsl:when test="$cislo &lt; 10">
                    
                    <xsl:value-of select="concat(substring-before(., '/'), '/', '0000000',
                        $cislo, '.jp2')"/>
                    
                </xsl:when>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="$cislo &gt;= 10 and $cislo &lt; 100">
                    
                    <xsl:value-of select="concat(substring-before(., '/'), '/', '000000',
                        $cislo, '.jp2')"/>
                    
                </xsl:when>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="$cislo &gt;= 100 and $cislo &lt; 1000">
                    
                    <xsl:value-of select="concat(substring-before(., '/'), '/', '00000',
                        $cislo, '.jp2')"/>
                    
                </xsl:when>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="$cislo &gt;= 1000">
                    
                    <xsl:value-of select="concat(substring-before(., '/'), '/', '0000',
                        $cislo, '.jp2')"/>
                    
                </xsl:when>
            </xsl:choose>
            
        </xsl:attribute>
    </xsl:template>
    
    
</xsl:stylesheet>