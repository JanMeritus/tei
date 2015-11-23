<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="tei" version="2.0">
    <xsl:output doctype-system="enrich.dtd" indent="yes"/>
    <xsl:variable name="signatura"
        select="/tei:TEI/tei:teiHeader[1]/tei:fileDesc[1]/tei:sourceDesc[1]/tei:msDesc[1]/tei:msIdentifier[1]/tei:idno[1]"/>
    <xsl:variable name="signatura2"
        select="concat(substring-before($signatura, ' '), '-', '0000.', format-number(number(substring-after($signatura, ' ')), '000'))"/>
    <xsl:template match="node()|@*">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="tei:teiHeader/@type"/>
    <xsl:template match="@default"/>
    <xsl:template match="@sex">
        <xsl:choose>
            <xsl:when test="contains(., '0')"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@xml:lang">
        <xsl:choose>
            <xsl:when test=". = 'en'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
   
    <xsl:template match="@unit">
        <xsl:choose>
            <xsl:when test=". = 'mm'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@reason">
        <xsl:choose>
            <xsl:when test=". = 'unknown'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@defective">
        <xsl:choose>
            <xsl:when test=". = 'false'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@full">
        <xsl:choose>
            <xsl:when test=". = 'yes'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@material">
        <xsl:choose>
            <xsl:when test=". = 'unknown'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@anchored">
        <xsl:choose>
            <xsl:when test=". = 'true'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@type">
        <xsl:choose>
            <xsl:when test=". = 'sysno'">
                <xsl:attribute name="{name()}">
                    <xsl:text>control_number</xsl:text>
                </xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'signatura'">
                <xsl:attribute name="{name()}">
                    <xsl:text>shelf_mark</xsl:text>
                </xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'carovy_kod'">
                <xsl:attribute name="{name()}">
                    <xsl:text>bar_code</xsl:text>
                </xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'unknown'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@xml:base">
        <xsl:choose>
            <xsl:when test=". = 'MZK03'">
                <xsl:attribute name="{name()}">
                    <xsl:text>MZK01</xsl:text>
                </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
