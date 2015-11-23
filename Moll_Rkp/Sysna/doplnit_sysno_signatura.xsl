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
    <xsl:template match="@*">
        <xsl:choose>
            <xsl:when test="contains(., 'unknown')"/>
            <xsl:when test="contains(., 'yes')"/>
            <xsl:when test="contains(., 'mm')"/>
           
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
        <xsl:choose>
            <xsl:when test="tei:idno[@type='sysno']">
                <publicationStmt xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:copy-of select="tei:idno[1]" copy-namespaces="no"/>
                    <xsl:element name="idno">
                        <xsl:attribute name="type">
                            <xsl:text>signatura</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="xml:base">
                            <xsl:text>MZK03</xsl:text>
                        </xsl:attribute>
                        <xsl:value-of
                            select="document('seznam_sysna_Moll.xml')//signatura[. = $signatura]"/>
                    </xsl:element>
                    <xsl:choose>
                        <xsl:when
                            test="contains(//tei:msDesc[1]/tei:msIdentifier[1]/tei:idno[1], 'přív.')"/>
                        <xsl:otherwise>
                            <xsl:element name="idno">
                                <xsl:attribute name="type">
                                    <xsl:text>carovy_kod</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="xml:base">
                                    <xsl:text>MZK03</xsl:text>
                                </xsl:attribute>
                                <xsl:value-of
                                    select="substring-after(/tei:TEI/tei:teiHeader[1]/tei:fileDesc[1]/tei:sourceDesc[1]/tei:msDesc[1]/@xml:id, 'CZ_BOA001_')"
                                />
                            </xsl:element>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:copy-of select="tei:idno/following-sibling::node()" copy-namespaces="no"/>
                </publicationStmt>
            </xsl:when>
            <xsl:otherwise>
                <publicationStmt xmlns="http://www.tei-c.org/ns/1.0">
                    <xsl:element name="idno">
                        <xsl:attribute name="type">
                            <xsl:text>sysno</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="xml:base">
                            <xsl:text>MZK03</xsl:text>
                        </xsl:attribute>
                        <xsl:value-of
                            select="document('seznam_sysna_Moll.xml')//sysno[following-sibling::signatura = $signatura]"
                        />
                    </xsl:element>
                    <xsl:element name="idno">
                        <xsl:attribute name="type">
                            <xsl:text>signatura</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="xml:base">
                            <xsl:text>MZK03</xsl:text>
                        </xsl:attribute>
                        <xsl:value-of
                            select="document('seznam_sysna_Moll.xml')//signatura[. = $signatura]"/>
                    </xsl:element>
                    <xsl:choose>
                        <xsl:when
                            test="contains(//tei:msDesc[1]/tei:msIdentifier[1]/tei:idno[1], 'přív.')"/>
                        <xsl:otherwise>
                            <xsl:element name="idno">
                                <xsl:attribute name="type">
                                    <xsl:text>carovy_kod</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="xml:base">
                                    <xsl:text>MZK03</xsl:text>
                                </xsl:attribute>
                                <xsl:value-of
                                    select="substring-after(/tei:TEI/tei:teiHeader[1]/tei:fileDesc[1]/tei:sourceDesc[1]/tei:msDesc[1]/@xml:id, 'CZ_BOA001_')"
                                />
                            </xsl:element>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:if test="/tei:TEI/tei:facsimile[1]/tei:surface/tei:graphic/@url">
                        <xsl:element name="idno">
                            <xsl:attribute name="type">
                                <xsl:text>Kramerius</xsl:text>
                            </xsl:attribute>

                            <xsl:value-of
                                select="document('seznam_pid.xml')//seznam/record[signatura = $signatura]/pid"
                            />
                        </xsl:element>
                    </xsl:if>
                    <publisher>Moravská zemská knihovna</publisher>
                </publicationStmt>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>
    <xsl:template match="tei:revisionDesc">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node()|@*"/>
            <change xmlns="http://www.tei-c.org/ns/1.0" when="2012-02-16">
                <persName>Přemysl Bar</persName>
                <note>Doplnění elementu &lt;publicationStmt&gt; o systémové číslo, signaturu a
                    čárový kód</note>
            </change>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="tei:teiHeader">
        <xsl:choose>
            <xsl:when test="tei:revisionDesc">
                <xsl:copy copy-namespaces="no">
                    <xsl:apply-templates select="node()|@*"/>
                </xsl:copy>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy copy-namespaces="no">
                    <xsl:apply-templates select="node()|@*"/>
                    <revisionDesc xmlns="http://www.tei-c.org/ns/1.0">
                        <change when="2012-02-16">
                            <persName>Přemysl Bar</persName>
                            <note>Doplnění elementu &lt;publicationStmt&gt; o systémové číslo,
                                signaturu a čárový kód</note>
                        </change>
                    </revisionDesc>
                </xsl:copy>

            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
