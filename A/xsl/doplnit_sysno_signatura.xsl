<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="tei" version="2.0">
    <xsl:output doctype-system="enrich.dtd" indent="yes"/>
    <xsl:variable name="signatura"
        select="/tei:TEI/tei:teiHeader[1]/tei:fileDesc[1]/tei:sourceDesc[1]/tei:msDesc[1]/tei:msIdentifier[1]/tei:idno[1]"/>
    <xsl:template match="/">
        <xsl:variable name="signatura2"
            select="concat(substring-before($signatura, ' '), '-', '0000.', format-number(number(substring-after($signatura, ' ')), '000'))"/>
        
        <xsl:result-document href="{concat($signatura2, '.tei.xml')}">
            <xsl:apply-templates/>
        </xsl:result-document>
    </xsl:template>
    
    
    <xsl:template match="node()|@*">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="*">
        <xsl:element name="{local-name()}" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:teiHeader/@type"/>
    <xsl:template match="@default"/>
    <xsl:template match="@*">
        <xsl:choose>
            <xsl:when test="contains(., 'unknown')"/>
            <xsl:when test="contains(., 'yes')"/>
            <xsl:when test="contains(., 'mm')"/>
            <xsl:when test="contains(., 'en')"/>
            <xsl:when test="contains(., 'true')"/>
            <xsl:when test="contains(., 'false')"/>
            
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="tei:publicationStmt">
        <xsl:variable name="signatura2"
            select="concat(substring-before($signatura, ' '), '-', '0000.', format-number(number(substring-after($signatura, ' ')), '000'))"/>
        
        <publicationStmt xmlns="http://www.tei-c.org/ns/1.0">

            <xsl:element name="idno">
                <xsl:attribute name="type">
                    <xsl:text>sysno</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="xml:base">
                    <xsl:text>MZK03</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="document('seznam_sysna_A.xml')//sysno[following-sibling::sigantura = $signatura2]"/>
            </xsl:element>
            <xsl:element name="idno">
                <xsl:attribute name="type">
                    <xsl:text>signatura</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="xml:base">
                    <xsl:text>MZK03</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="document('seznam_sysna_A.xml')//sigantura[. = $signatura2]"/>
            </xsl:element>
            
            
            <publisher>Moravská zemská knihovna</publisher>
        </publicationStmt>
        
    </xsl:template>
<xsl:template match="tei:revisionDesc">
    <xsl:copy copy-namespaces="no">
        <xsl:apply-templates select="node()|@*"/>
        <change xmlns="http://www.tei-c.org/ns/1.0" when="2012-02-15">
            <persName>Přemysl Bar</persName>
            <note>Doplnění elementu &lt;publicationStmt&gt; o systémové číslo, signaturu a čárový kód</note>
        </change>
    </xsl:copy>
    
</xsl:template>
</xsl:stylesheet>
