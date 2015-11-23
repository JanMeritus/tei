<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xd" version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 16, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Bar</xd:p>
            <xd:p/>
        </xd:desc>
    </xd:doc>
    <xsl:output indent="yes"/>
    <xsl:template match="/">
        <xsl:element name="jmena">
            <xsl:attribute name="xml:lang">
                <xsl:text>cze</xsl:text>
            </xsl:attribute>
            
            
            <xsl:apply-templates
                select="document('CH-RKP-0000.001.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.002.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.003.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.004.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.005.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.006.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.007.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.008.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.009.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.010.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.011.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.012.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.013.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.014.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.015.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.016.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.017.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.018.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.019.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.020.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.021.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.022.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.023.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.024.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.025.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.026.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.027.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.028.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.029.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.030.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.031.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.032.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.033.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.034.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.035.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.036.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.037.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.038.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.039.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.040.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.041.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.042.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.043a.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.043b.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.044.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.045.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.046.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.047.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.048.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.049.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.050.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.051.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.052.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.053.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.054.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.055.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.056.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.057.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.058.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.059.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.060.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.061.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.062.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.063.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.064.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.065.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.066.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.067.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.068.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.069.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.070.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.071.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.072.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.073.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.074.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.075.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.076.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.077.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.078.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.079.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.080.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.081.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.082.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.083.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.084.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.085.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.086.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.087.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.088.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.089.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.090.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.091.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.092.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.093.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.094.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.095.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.096.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.097.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.098.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.099.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.100.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.101.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.102.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.103.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.104.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.105.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.106.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.107.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.108.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.109.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.110.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.111.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.112.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-0006.225.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.113.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-0004.805.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-0005.748.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <xsl:apply-templates
                select="document('CH-0005.959.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            <!--   <xsl:apply-templates
                select="document('CH-0006.091.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            -->
            <xsl:apply-templates
                select="document('CH-0007.040.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc"/>
            
        </xsl:element>
       
        
    </xsl:template>
    <xsl:template match="sourceDesc">
        <xsl:apply-templates select="//persName"/>
    </xsl:template>
    <xsl:template match="persName">
        <xsl:variable name="surname" select="count(surname)"/>
        <xsl:variable name="forename" select="count(forename)"/>
        <xsl:variable name="nameLink" select="count(nameLink)"/>
        <xsl:variable name="genName" select="count(genName)"/>
        <xsl:variable name="roleName" select="count(roleName)"/>
        <xsl:variable name="placeName" select="count(placeName)"/>
        <item>
            <xsl:element name="name">
                <xsl:attribute name="surname">
                    <xsl:value-of select="$surname"/>
                </xsl:attribute>
                <xsl:attribute name="forename">
                    <xsl:value-of select="$forename"/>
                </xsl:attribute>
                <!--   <xsl:attribute name="nameLink">
                <xsl:value-of select="$nameLink"/>
            </xsl:attribute>
            <xsl:attribute name="genName">
                <xsl:value-of select="$genName"/>
            </xsl:attribute>
           -->
                <xsl:choose>
                    <xsl:when test="roleName and placeName">
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:when>
                    <xsl:when test="placeName">
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:if test="$surname = 0 and $forename = 0">
                            <xsl:apply-templates select="text()"/>
                        </xsl:if>
                        <xsl:if test="$surname = 1">
                            <xsl:choose>
                                <xsl:when test="$surname = 1 and $forename = 0">
                                    <xsl:apply-templates select="surname"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:apply-templates select="surname"/>
                                    <xsl:text>, </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:if>
                        <xsl:if test="$surname &gt; 1">
                            <xsl:for-each select="surname[position() != last()]">
                                <xsl:apply-templates select="."/>
                                <xsl:text> </xsl:text>
                            </xsl:for-each>
                            <xsl:for-each select="surname[position() = last()]">
                                <xsl:apply-templates select="."/>
                                <xsl:text>, </xsl:text>
                            </xsl:for-each>
                        </xsl:if>
                        <xsl:if test="$forename &gt;= 1">
                            <xsl:for-each select="forename[position() != last()]">
                                <xsl:apply-templates select="."/>
                                <xsl:text> </xsl:text>
                            </xsl:for-each>
                            <xsl:for-each select="forename[position() = last()]">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                        </xsl:if>
                        <xsl:if test="genName">
                            <xsl:text> </xsl:text>
                            <xsl:apply-templates select="genName"/>
                        </xsl:if>
                        <xsl:if test="nameLink">
                            <xsl:text> </xsl:text>
                            <xsl:choose>
                                <xsl:when test="nameLink[preceding-sibling::addName]">
                                    <xsl:apply-templates
                                        select="addName[following-sibling::nameLink]"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:apply-templates select="nameLink"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:apply-templates select="nameLink"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:if>
                        <xsl:if test="roleName">
                            <xsl:text> (</xsl:text>
                            <xsl:apply-templates select="roleName"/>
                            <xsl:text>)</xsl:text>
                        </xsl:if>
                        <xsl:if test="addName">
                            <xsl:if test="not(nameLink)">
                                <xsl:text> (</xsl:text>
                                <xsl:apply-templates select="addName"/>
                                <xsl:text>)</xsl:text>
                            </xsl:if>
                        </xsl:if>
                        <xsl:if test="unclear">
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="unclear"/>
                            <xsl:text>?)</xsl:text>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:element>
            <xsl:if test="date">
                <date>
                    <xsl:value-of select="date"/>
                </date>
            </xsl:if>
            <signatura>
                <xsl:value-of select="preceding::msIdentifier/idno"/>
            </signatura>
            <note>Elementy použité v "persName":<xsl:for-each select="child::node()">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="name(.)"/>
                </xsl:for-each>
            </note>
        </item>
    </xsl:template>
    <xsl:template match="forename">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="surname">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="nameLink">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="genName">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="roleName">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="placeName">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="addName">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="text()">
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>
