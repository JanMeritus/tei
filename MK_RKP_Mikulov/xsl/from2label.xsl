<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <!-- XSLT Template to copy anything, priority="-1" -->
    <xsl:template match="@*|node()" priority="-1">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- If I were to do something different for an element here is how I'd do it. -->
    <!--<xsl:template match="locus/@from">
        <xsl:variable name="from" select="."/>
        <xsl:attribute name="from">
            <xsl:value-of select="//facsimile/surface[$from = desc/label]/@xml:id"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="locus/@to">
        <xsl:variable name="to" select="."/>
        <xsl:attribute name="to">
            <xsl:value-of select="//facsimile/surface[$to = desc/label]/@xml:id"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="locus[not(@from)]">
        <xsl:variable name="target" select="."/>
        <xsl:element name="locus" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="target">
                <xsl:value-of select="//facsimile/surface[$target = desc/label]/@xml:id"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="locus[not(@to)]">
        <xsl:variable name="target" select="."/>
        <xsl:element name="locus" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:attribute name="target">
                <xsl:value-of select="//facsimile/surface[$target = desc/label]/@xml:id"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>-->
    <xsl:template match="label">
        <xsl:variable name="cislo">
            <xsl:choose>
                <xsl:when test="contains(., 'r')">
                    <xsl:value-of select="substring-before(., 'r')"/>
                </xsl:when>
                <xsl:when test="contains(., 'v')">
                    <xsl:value-of select="substring-before(., 'v')"/>
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="jedna" select="number('1')"/>
        <!--<label><xsl:value-of select="$cislo + 1"/></label>-->
        <xsl:choose>
            <xsl:when test="number($cislo) > 220 and number($cislo) &lt; 233">
                <xsl:choose>
                    <xsl:when test="contains(., 'r')">
                        <label>
                            <xsl:value-of select="concat(number($cislo) - 1, 'r')"/>
                        </label>
                    </xsl:when>
                    <xsl:when test="contains(., 'v')">
                        <label>
                            <xsl:value-of select="concat(number($cislo) - 1, 'v')"/>
                        </label>
                    </xsl:when>
                </xsl:choose>
               
            </xsl:when>
            <xsl:when test="number($cislo) > 233">
                <xsl:choose>
                    <xsl:when test="contains(., 'r')">
                        <label>
                            <xsl:value-of select="concat(number($cislo) - 2, 'r')"/>
                        </label>
                    </xsl:when>
                    <xsl:when test="contains(., 'v')">
                        <label>
                            <xsl:value-of select="concat(number($cislo) - 2, 'v')"/>
                        </label>
                    </xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <label>
                    <xsl:value-of select="."/>
                </label>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@defective"/>
    <xsl:template match="@anchored"/>
    <xsl:template match="@unit"/>
    <xsl:template match="@default"/>
    <xsl:template match="@full"/>
    <xsl:template match="msDesc/@xml:lang"/>
    <xsl:template match="teiHeader/@type[.='text']"/>
    <xsl:template match="supplied/@reason[.='unknown']"/>
    <xsl:template match="region/@type[.='unknown']"/>
</xsl:stylesheet>
