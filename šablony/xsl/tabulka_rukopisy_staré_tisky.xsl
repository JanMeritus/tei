<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:output indent="yes"/>
    <xsl:template match="/">
        <seznam type="publicationStmt">
                <xsl:apply-templates select="/body/spreadsheet[1]/table[1]/table-row">
                    <xsl:sort select="normalize-space(table-cell[5])"/>
                </xsl:apply-templates>
        </seznam>
    </xsl:template>
    <xsl:template match="table-row">
        <xsl:variable name="cislo">
            <xsl:number/>
        </xsl:variable>
        <publicationStmt n="{$cislo}">
            
            <idno type="sysno" xml:base="MZK03">
                <xsl:value-of select="normalize-space(format-number(translate(table-cell[1], ' /:', ''), '000000000'))"/>
            </idno>
            <idno type="čárák"><xsl:value-of select="normalize-space(format-number(translate(table-cell[2], ' /:', ''), '0000000000'))"/></idno>
            <idno type="signatura"><xsl:value-of select="normalize-space(table-cell[5])"/></idno>
            <xsl:choose>
                <xsl:when test="contains(table-cell[8], 'uuid')">
                    <idno type="Kramerius" xml:base="{normalize-space(table-cell[8])}"><xsl:value-of select="concat('uuid:', substring-after(table-cell[8], 'uuid:'))"/></idno>
                </xsl:when>
                <xsl:otherwise>
                    <idno type="other" xml:base="{normalize-space(table-cell[8])}">K4???</idno>
                </xsl:otherwise>
            </xsl:choose>

            <publisher>Moravská zemská knihovna</publisher>
        </publicationStmt>
    </xsl:template>
</xsl:stylesheet>