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
            <xsl:apply-templates select="jmena/item">
                <xsl:sort order="ascending" data-type="text" select="name" lang="cze"/>
            </xsl:apply-templates>
        </jmena>
    </xsl:template>
    <xsl:template match="item">
        <xsl:choose>
            <xsl:when
                test="contains(name, 'Přemysl') or contains(name, 'Štachová') or
                   contains(name, 'Dokoupil')">
                <xsl:apply-templates select="name"/>
            </xsl:when>
            <xsl:otherwise>
                <item>
                    <name>
                        <xsl:value-of select="normalize-space(name)"/>
                    </name>
                    <signatura>
                        <xsl:value-of select="signatura"/>
                    </signatura>
                    <note>
                        <xsl:value-of select="note"/>
                    </note>
                </item>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="name"/>
</xsl:stylesheet>
