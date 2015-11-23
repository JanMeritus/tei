<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:strip-space elements="*"/>
    <xsl:preserve-space elements="author colophon date incipit note p persName title"/>
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:variable name="uc">ABCDEFGHIJKLMNOPQRSTUVWXYZĚŠČŘŽÝÁÍÉÚŮŇ</xsl:variable>
    <xsl:variable name="lc">abcdefghijklmnopqrstuvwxyzěščřžýáíéúůň</xsl:variable>
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="page" page-height="270mm" page-width="200mm"
                    margin-top="25mm" margin-bottom="25mm" margin-left="25mm" margin-right="25mm">
                    <fo:region-body margin-top="0mm" margin-bottom="0mm" margin-left="0mm"
                        margin-right="0mm"/>
                    <fo:region-before extent="10mm"/>
                    <fo:region-after extent="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="page">
                <!--<fo:static-content flow-name="xsl-region-after">
                    <fo:block font-family="TimesNewRoman" font-size="18pt" line-height="25pt"
                        color="black" text-align="center">
                        <fo:page-number/>
                    </fo:block>
                </fo:static-content>-->
                <fo:flow font-family="TimesNewRoman" flow-name="xsl-region-body">
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.001.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.002.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.003.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.004.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.005.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.006.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.007.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.008.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.009.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.010.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.011.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.012.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.013.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.014.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.015.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.016.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.017.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.018.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.019.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.020.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.021.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.022.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.023.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.024.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.025.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <!--<xsl:apply-templates
                        select="document('CH-RKP-0000.026.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.027.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>-->
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.028.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.029.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.030.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.031.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.032.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.033.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.034.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.035.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.036.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.037.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.038.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.039.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.040.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.041.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.042.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.043a.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.043b.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.044.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.045.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.046.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.047.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.048.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.049.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.050.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.051.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.052.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.053.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.054.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.055.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <!-- <xsl:apply-templates
                        select="document('CH-RKP-0000.056.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.057.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>-->
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.058.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.059.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.060.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.061.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.062.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.063.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.064.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.065.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.066.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.067.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.068.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.069.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.070.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.071.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.072.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.073.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.074.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.075.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.076.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.077.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.078.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.079.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.080.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.081.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.082.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.083.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.084.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.085.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.086.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.087.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.088.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.089.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.090.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.091.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.092.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.093.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.094.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.095.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.096.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.097.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.098.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.099.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.100.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.101.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.102.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.103.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.104.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.105.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.106.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.107.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.108.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.109.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.110.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.111.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.112.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-0006.225.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-0006.500.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-0004.805.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.113.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-0005.748.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('CH-0005.959.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <!--   <xsl:apply-templates
                        select="document('CH-0006.091.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    -->
                    <!-- <xsl:apply-templates
                        select="document('CH-0006.500b.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    -->
                    <xsl:apply-templates
                        select="document('CH-0007.040.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <!--  <fo:block font-size="25pt" font-weight="bold" text-align="center"
                        >Rejstříky</fo:block>
                    <xsl:apply-templates select="document('bibliografie_ch.xml')/bibliografie"/>
                  -->
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <xsl:template match="msDesc">
        <xsl:apply-templates select="msIdentifier"/>
        <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
            text-align="justify">
            <xsl:apply-templates select="physDesc"/>
        </fo:block>
        <xsl:if test="head/title">
            <xsl:apply-templates select="head/title"/>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="msIdentifier/idno[contains(., 'CH-0006.500')]">
                <fo:block>
                    <fo:table space-after="10pt" space-before="10pt">
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-body font-family="TimesNewRoman" font-size="12pt"
                            line-height="1.5" text-align="left">
                            <fo:table-row border-width="70pt">
                                <fo:table-cell width="80pt">
                                    <fo:block font-style="italic">MS 1.</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block/>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="msPart">
                        <fo:block>
                            <fo:table space-after="10pt" space-before="10pt">
                                <fo:table-column/>
                                <fo:table-column/>
                                <fo:table-body font-family="TimesNewRoman" font-size="12pt"
                                    line-height="1.5" text-align="left">
                                    <fo:table-row border-width="70pt">
                                        <fo:table-cell width="80pt">
                                            <fo:block font-style="italic">MS</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block/>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>
                    </xsl:when>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:if test="msContents/msItem">
            <xsl:apply-templates select="msContents/msItem"/>
        </xsl:if>
        <xsl:if test="msIdentifier/idno = 'CH-RKP-0000.025'">
            <xsl:apply-templates
                select="document('CH-RKP-0000.026.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc/msContents/msItem"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.027.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc/msContents/msItem"
            />
        </xsl:if>
        <xsl:if test="msIdentifier/idno = 'CH-RKP-0000.055'">
            <xsl:apply-templates
                select="document('CH-RKP-0000.056.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc/msContents/msItem"/>
            <xsl:apply-templates
                select="document('CH-RKP-0000.057.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc/msContents/msItem"
            />
        </xsl:if>
        <xsl:if test="msContents/summary">
            <fo:block font-family="TimesNewRoman" font-size="10pt" line-height="1.5"
                text-align="justify" space-after="10pt" space-before="10pt">
                <xsl:apply-templates select="msContents/summary"/>
            </fo:block>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="msPart[position() != 1]">
                <fo:block font-size="12pt" font-style="italic">TISKY</fo:block>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="msPart">
                    <fo:block font-size="12pt" font-style="italic">TISK</fo:block>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:for-each select="msPart[physDesc/p/term[contains(., 'tisk')]]">
            <xsl:choose>
                <xsl:when test="physDesc/p/term[contains(., 'tisk')]">
                    <xsl:apply-templates select="."/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="msContents/msItem"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="msIdentifier">
        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="14pt" line-height="1.5"
            color="black" space-after="25pt" space-before="25pt" page-break-after="avoid"
            text-align-last="justify">
            <xsl:variable name="cislo"
                select="number(substring-after(altIdentifier[contains(note,
                'Dokoupila')]/idno, 'CH '))"/>
            <fo:inline>
                <xsl:choose>
                    <xsl:when test="idno = 'CH-RKP-0000.025'">
                        <xsl:text>25.-27.</xsl:text>
                    </xsl:when>
                    <xsl:when test="idno = 'CH-RKP-0000.055'">
                        <xsl:text>56.-58.</xsl:text>
                    </xsl:when>
                    <xsl:when test="idno = 'CH-0004.805'">
                        <xsl:text>116.</xsl:text>
                    </xsl:when>
                    <xsl:when test="idno = 'CH-RKP-0000.113'">
                        <xsl:text>117.</xsl:text>
                    </xsl:when>
                    <xsl:when test="idno = 'CH-0005.748'">
                        <xsl:text>118.</xsl:text>
                    </xsl:when>
                    <xsl:when test="idno = 'CH-0005.959'">
                        <xsl:text>119.</xsl:text>
                    </xsl:when>
                    <xsl:when test="idno = 'CH-0007.040'">
                        <xsl:text>120.</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="$cislo > 42">
                                <xsl:value-of select="$cislo + 1"/>
                            </xsl:when>
                            <xsl:when
                                test="substring-after(altIdentifier[contains(note,
                            'Dokoupila')]/idno, 'CH ') = '43a'">
                                <xsl:text>43</xsl:text>
                            </xsl:when>
                            <xsl:when
                                test="substring-after(altIdentifier[contains(note,
                            'Dokoupila')]/idno, 'CH ') = '43b'">
                                <xsl:text>44</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of
                                    select="substring-after(altIdentifier[contains(note,
                                'Dokoupila')]/idno, 'CH ')"
                                />
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>.</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </fo:inline>
            <fo:leader/>
            <fo:inline>
                <xsl:choose>
                    <xsl:when
                        test="altIdentifier[contains(note, 'Dokoupila')]/idno and contains(idno,
                    'RKP')">
                        <xsl:choose>
                            <xsl:when test="idno = 'CH-RKP-0000.025'">
                                <xsl:text>CH 25-27</xsl:text>
                            </xsl:when>
                            <xsl:when test="idno = 'CH-RKP-0000.055'">
                                <xsl:text>CH 55-57</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of
                                    select="altIdentifier[contains(note, 'Dokoupila')]/idno"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="contains(idno,
                    'CH-000')">
                        <xsl:choose>
                            <xsl:when
                                test="contains(//msPart[10]/altIdentifier/idno/text(), 'CH 115')">
                                <xsl:value-of select="altIdentifier[@type = 'other']/idno"/>
                                <xsl:text> - </xsl:text>
                                <xsl:value-of select="//msPart[10]/altIdentifier/idno/text()"/>
                            </xsl:when>
                            <xsl:when test="idno = 'CH-0006.225'">
                                <xsl:text>CH 113</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="idno"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="idno"/>
                    </xsl:otherwise>
                </xsl:choose>
            </fo:inline>
        </fo:block>
        <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5" color="black"
            page-break-after="avoid" space-after="20pt">
            <fo:inline>
                <xsl:choose>
                    <xsl:when test="//msDesc/msIdentifier/idno = 'CH-RKP-0000.021'">
                        <xsl:apply-templates select="//msDesc/head/origDate/child::node()"/>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter='1550' and @notBefore='1501']">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter='1600' and @notBefore='1551']">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super"
                                >2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter='1650' and @notBefore='1601']">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter='1700' and @notBefore='1651']">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                >2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter='1750' and @notBefore='1701']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter='1750' and @notBefore='1700']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter='1800' and @notBefore='1751']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter='1800' and @notBefore='1750']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter='1850' and @notBefore='1801']">
                        <fo:inline>XIX<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'Polovina 16.')]">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'Polovina 17.')]">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'Polovina 18.')]">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'Polovina 19.')]">
                        <fo:inline>XIX<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'Přelom 16. a 17.')]">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super"
                                >ex.</fo:inline>/XVII<fo:inline font-size="10pt"
                                vertical-align="super">in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'Přelom 17. a 18.')]">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                >ex.</fo:inline>/XVIII<fo:inline font-size="10pt"
                                vertical-align="super">in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'Přelom 18. a 19.')]">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >ex.</fo:inline>/XIX<fo:inline font-size="10pt"
                                vertical-align="super">in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter='1820' and @notBefore='1780']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >ex.</fo:inline>/XIX<fo:inline font-size="10pt"
                                vertical-align="super">in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., '2. polovina 18. století')]">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., '1. polovina 18. století')]">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., '17. století')]">
                        <fo:inline>XVII</fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., '18. století')]">
                        <fo:inline>XVIII</fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[@notAfter and not(@notBefore)]">
                        <xsl:text>ante </xsl:text>
                        <xsl:value-of select="//msDesc/head/origDate/@notAfter"/>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[not(@notAfter) and @notBefore]">
                        <xsl:text>post </xsl:text>
                        <xsl:value-of select="//msDesc/head/origDate/@notBefore"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head/origDate, 'po')">
                        <xsl:text>post </xsl:text>
                        <xsl:value-of select="substring-after(//msDesc/head/origDate, 'po ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head/origDate, 'Po')">
                        <xsl:text>post </xsl:text>
                        <xsl:value-of select="substring-after(//msDesc/head/origDate, 'Po ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head/origDate, 'Před')">
                        <xsl:text>ante </xsl:text>
                        <xsl:value-of select="substring-after(//msDesc/head/origDate, 'Před ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head/origDate, 'Ne po roce')">
                        <xsl:text>ante </xsl:text>
                        <xsl:value-of
                            select="substring-after(//msDesc/head/origDate, 'Ne po roce ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head/origDate, 'ca')">
                        <xsl:text>c. </xsl:text>
                        <xsl:value-of select="substring-after(//msDesc/head/origDate, 'ca ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head/origDate, 'Kolem roku')">
                        <xsl:text>c. </xsl:text>
                        <xsl:value-of
                            select="substring-after(//msDesc/head/origDate, 'Kolem roku ')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of
                            select="concat(translate(substring(//msDesc/head/origDate, 1,
                            1), $uc, $lc), substring(//msDesc/head/origDate, 2))"
                        />
                    </xsl:otherwise>
                </xsl:choose>
            </fo:inline>
            <xsl:if test="//msDesc/head/origPlace">
                <xsl:text>, </xsl:text>
                <fo:inline>
                    <xsl:value-of select="//msDesc/head/origPlace"/>
                </fo:inline>
            </xsl:if>
            <xsl:if test="//msDesc/msPart">
                <xsl:text>, </xsl:text>
                <fo:inline>konvolut</fo:inline>
            </xsl:if>
            <xsl:choose>
                <xsl:when
                    test="//msDesc/physDesc/objectDesc/supportDesc/support/p/material[contains(.,
                    'ergamen')] and //msDesc/physDesc/objectDesc/supportDesc/support/p/material[contains(., 'apír')]">
                    <xsl:text>, </xsl:text>
                    <fo:inline>
                        <xsl:text>perg. + pap.</xsl:text>
                    </fo:inline>
                </xsl:when>
                <xsl:when
                    test="//msDesc/physDesc/objectDesc/supportDesc/support/p/material[contains(., 'apír')]">
                    <xsl:text>, </xsl:text>
                    <fo:inline>
                        <xsl:text>pap.</xsl:text>
                    </fo:inline>
                </xsl:when>
                <xsl:when
                    test="//msDesc/physDesc/objectDesc/supportDesc/support/p/material[contains(., 'ergamen')]">
                    <xsl:text>, </xsl:text>
                    <fo:inline>
                        <xsl:text>perg.</xsl:text>
                    </fo:inline>
                </xsl:when>
            </xsl:choose>
            <xsl:if test="idno = 'CH-RKP-0000.103' or //physDesc/musicNotation">
                <xsl:text>, </xsl:text>
                <fo:inline>notace</fo:inline>
            </xsl:if>
            <xsl:if test="idno = 'CH-RKP-0000.025' or idno = 'CH-RKP-0000.055'">
                <xsl:text>, </xsl:text>
                <fo:inline>3 svazky</fo:inline>
            </xsl:if>
            <xsl:text>, </xsl:text>
            <fo:inline>
                <xsl:choose>
                    <xsl:when test="contains(//msDesc/msIdentifier/idno, 'CH-0006.500')">
                        <xsl:text>MS 1.: </xsl:text>
                        <xsl:apply-templates
                            select="//msDesc/physDesc/objectDesc/supportDesc/extent"/>
                        <xsl:text>; MS 2.: </xsl:text>
                        <xsl:apply-templates
                            select="//msPart[10]/physDesc/objectDesc/supportDesc/extent"/>
                    </xsl:when>
                    <xsl:when test="idno = 'CH-RKP-0000.025'">
                        <xsl:text>1. </xsl:text>
                        <xsl:apply-templates
                            select="//msDesc/physDesc/objectDesc/supportDesc/extent"/>
                        <xsl:text>; 2. </xsl:text>
                        <xsl:apply-templates
                            select="document('CH-RKP-0000.026.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent"/>
                        <xsl:text>; 3. </xsl:text>
                        <xsl:apply-templates
                            select="document('CH-RKP-0000.027.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent"
                        />
                    </xsl:when>
                    <xsl:when test="idno = 'CH-RKP-0000.055'">
                        <xsl:text>1. </xsl:text>
                        <xsl:apply-templates
                            select="//msDesc/physDesc/objectDesc/supportDesc/extent"/>
                        <xsl:text>; 2. </xsl:text>
                        <xsl:apply-templates
                            select="document('CH-RKP-0000.056.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent"/>
                        <xsl:text>; 3. </xsl:text>
                        <xsl:apply-templates
                            select="document('CH-RKP-0000.057.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent"
                        />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="//msDesc/msPart">
                                <xsl:text>MS: </xsl:text>
                                <xsl:apply-templates
                                    select="//msDesc/physDesc/objectDesc/supportDesc/extent"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates
                                    select="//msDesc/physDesc/objectDesc/supportDesc/extent"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </fo:inline>
            <xsl:text>, </xsl:text>
            <fo:inline>
                <xsl:apply-templates
                    select="//msDesc/physDesc/objectDesc/supportDesc/support/p/dimensions"/>
            </fo:inline>
            <xsl:text>, </xsl:text>
            <xsl:choose>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@period]">
                    <fo:inline>vaz. <xsl:value-of
                            select="//msDesc/physDesc/bindingDesc/binding/@period"/></fo:inline>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@contemporary='true']">
                    <fo:inline>vaz. soudobá</fo:inline>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@contemporary='false']">
                    <fo:inline>vaz. mladší</fo:inline>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc[contains(p[1], 'Dobová')]">
                    <fo:inline>vaz. dobová</fo:inline>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc[contains(p[1], 'Soudobá')]">
                    <fo:inline>vaz. soudobá</fo:inline>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[contains(p[1], 'Dobová')]">
                    <fo:inline>vaz. dobová</fo:inline>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[contains(p[1], 'Soudobá')]">
                    <fo:inline>vaz. soudobá</fo:inline>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@period]">
                    <fo:inline>vaz. <xsl:value-of
                            select="//msDesc/physDesc/bindingDesc/binding/@period"/></fo:inline>
                </xsl:when>
                <xsl:when
                    test="//msDesc/physDesc[contains(bindingDesc, 'Sešit') or
                    contains(bindingDesc, 'sešit')]">
                    <fo:inline>sešit</fo:inline>
                </xsl:when>
            </xsl:choose>
        </fo:block>
    </xsl:template>
    <xsl:template match="msItem">
        <xsl:variable name="pocet1" select="count(following-sibling::msItem)"/>
        <xsl:variable name="pocet2" select="count(preceding-sibling::msItem)"/>
        <xsl:choose>
            <xsl:when test="msItem[not(preceding-sibling::incipit)] or locusGrp">
                <xsl:if test="title">
                    <fo:table space-after="10pt" space-before="10pt">
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-body font-family="TimesNewRoman" font-size="12pt"
                            line-height="1.5" text-align="left">
                            <fo:table-row border-width="70pt">
                                <fo:table-cell width="80pt">
                                    <fo:block>
                                        <xsl:if test="not(locusGrp)">
                                            <xsl:choose>
                                                <xsl:when test="$pocet1 >= 1"> (<xsl:number
                                                  format="a"/>) </xsl:when>
                                                <xsl:when test="$pocet2 >= 1"> (<xsl:number
                                                  format="a"/>) </xsl:when>
                                            </xsl:choose>
                                        </xsl:if>
                                        <xsl:if test="locus">
                                            <xsl:text> </xsl:text>
                                            <xsl:apply-templates select="locus"/>
                                        </xsl:if>
                                        <xsl:if test="locusGrp">
                                            <xsl:choose>
                                                <xsl:when test="$pocet1 >= 1"> (<xsl:number
                                                  format="a"/>) </xsl:when>
                                                <xsl:when test="$pocet2 >= 1"> (<xsl:number
                                                  format="a"/>) </xsl:when>
                                            </xsl:choose>
                                            <xsl:text> </xsl:text>
                                            <!-- <xsl:choose>
                                                <xsl:when
                                                  test="contains(locusGrp/locus[last()]/@to,
                                                  'r') or contains(locusGrp/locus[last()]/@to,
                                                    'v')">
                                                  <xsl:text> f. </xsl:text>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  <xsl:text> p. </xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>-->
                                            <xsl:value-of select="locusGrp/locus[1]/@from"/>
                                            <xsl:text>-</xsl:text>
                                            <xsl:value-of
                                                select="locusGrp/locus[position() =
                                                last()]/@to"
                                            />
                                        </xsl:if>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="justify">
                                        <xsl:if test="author">
                                            <xsl:apply-templates select="author"/>
                                            <xsl:text>: </xsl:text>
                                        </xsl:if>
                                        <xsl:apply-templates select="title"/>
                                    </fo:block>
                                    <fo:block/>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </xsl:if>
                <xsl:apply-templates select="msItem"/>
            </xsl:when>
            <xsl:otherwise>
                <fo:table space-after="10pt" space-before="10pt">
                    <fo:table-column/>
                    <fo:table-column/>
                    <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                        text-align="left">
                        <fo:table-row border-width="70pt">
                            <xsl:if test="locus">
                                <fo:table-cell width="80pt">
                                    <fo:block>
                                        <xsl:choose>
                                            <xsl:when test="docImprint">
                                                <xsl:for-each select="docImprint">(<xsl:number
                                                  format="1" value="position()"/>)</xsl:for-each>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:choose>
                                                  <xsl:when
                                                  test="//msDesc/msIdentifier/idno =
                                                        'CH-RKP-0000.025'">
                                                  <xsl:text>1. </xsl:text>
                                                  </xsl:when>
                                                  <xsl:when
                                                  test="//msDesc/msIdentifier/idno =
                                                        'CH-RKP-0000.026'">
                                                  <xsl:text>2. </xsl:text>
                                                  </xsl:when>
                                                  <xsl:when
                                                  test="//msDesc/msIdentifier/idno =
                                                        'CH-RKP-0000.027'">
                                                  <xsl:text>3. </xsl:text>
                                                  </xsl:when>
                                                </xsl:choose>
                                                <xsl:choose>
                                                  <xsl:when
                                                  test="//msDesc/msIdentifier/idno =
                                                        'CH-RKP-0000.055'">
                                                  <xsl:text>1. </xsl:text>
                                                  </xsl:when>
                                                  <xsl:when
                                                  test="//msDesc/msIdentifier/idno =
                                                        'CH-RKP-0000.056'">
                                                  <xsl:text>2. </xsl:text>
                                                  </xsl:when>
                                                  <xsl:when
                                                  test="//msDesc/msIdentifier/idno =
                                                        'CH-RKP-0000.057'">
                                                  <xsl:text>3. </xsl:text>
                                                  </xsl:when>
                                                </xsl:choose>
                                                <xsl:choose>
                                                  <xsl:when test="$pocet1 >= 1"> (<xsl:number
                                                  format="a"/>) </xsl:when>
                                                  <xsl:when test="$pocet2 >= 1"> (<xsl:number
                                                  format="a"/>) </xsl:when>
                                                </xsl:choose>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:text> </xsl:text>
                                        <xsl:apply-templates select="locus"/>
                                    </fo:block>
                                </fo:table-cell>
                            </xsl:if>
                            <xsl:if test="not(locus)">
                                <fo:table-cell width="80pt">
                                    <xsl:choose>
                                        <xsl:when test="$pocet1 >= 1">
                                            <fo:block>(<xsl:number format="a"/>) </fo:block>
                                        </xsl:when>
                                        <xsl:when test="$pocet2 >= 1">
                                            <fo:block> (<xsl:number format="a"/>) </fo:block>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <fo:block> </fo:block>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </fo:table-cell>
                            </xsl:if>
                            <fo:table-cell>
                                <xsl:choose>
                                    <xsl:when test="title and author">
                                        <fo:block text-align="justify">
                                            <xsl:apply-templates select="author"/>
                                            <xsl:text>: </xsl:text>
                                            <xsl:apply-templates select="title"/>
                                        </fo:block>
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="author and not(title)">
                                        <fo:block text-align="justify">
                                            <xsl:apply-templates select="author"/>
                                        </fo:block>
                                        <fo:block/>
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="title and not(author)">
                                        <fo:block text-align="justify">
                                            <xsl:apply-templates select="title"/>
                                        </fo:block>
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="docTitle">
                                        <xsl:choose>
                                            <xsl:when test="author">
                                                <fo:block>
                                                  <xsl:apply-templates select="docTitle"/>
                                                  <xsl:if test="docAuthor">
                                                  <xsl:apply-templates select="docAuthor"/>
                                                  </xsl:if>
                                                  <xsl:if test="docImprint">
                                                  <xsl:apply-templates select="docImprint"/>
                                                  </xsl:if>
                                                </fo:block>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <fo:block>
                                                  <xsl:apply-templates select="docTitle"/>
                                                  <xsl:if test="docAuthor">
                                                  <xsl:apply-templates select="docAuthor"/>
                                                  </xsl:if>
                                                </fo:block>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:if test="docImprint">
                                    <fo:block>
                                        <fo:inline font-weight="bold"><xsl:value-of select="author"
                                            />: </fo:inline>
                                        <fo:inline font-style="italic"><xsl:value-of
                                                select="docTitle"/>. </fo:inline>
                                        <fo:inline>
                                            <xsl:value-of select="docImprint"/>
                                        </fo:inline>
                                    </fo:block>
                                </xsl:if>
                                <xsl:if test="rubric">
                                    <xsl:choose>
                                        <xsl:when test="incipit and not(explicit)">
                                            <xsl:for-each select="rubric">
                                                <xsl:variable name="cislo" select="position()"/>
                                                <fo:block text-align="justify">
                                                  <xsl:apply-templates select="."/>
                                                </fo:block>
                                                <fo:block text-align="justify">
                                                  <xsl:value-of
                                                  select="following-sibling::incipit[position() =
                                                        $cislo]"
                                                  />
                                                </fo:block>
                                            </xsl:for-each>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:for-each select="rubric">
                                                <fo:block text-align="justify">
                                                  <xsl:apply-templates select="."/>
                                                </fo:block>
                                                <fo:block/>
                                            </xsl:for-each>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:if>
                                <xsl:choose>
                                    <xsl:when test="incipit and not(explicit) and not(rubric)">
                                        <fo:block text-align="justify">
                                            <xsl:apply-templates select="incipit"/>
                                        </fo:block>
                                    </xsl:when>
                                    <xsl:when test="explicit and not(incipit)">
                                        <fo:block text-align="justify">
                                            <xsl:apply-templates select="explicit"/>
                                        </fo:block>
                                    </xsl:when>
                                    <xsl:when test="incipit and explicit">
                                        <xsl:choose>
                                            <xsl:when test="incipit[@n]">
                                                <xsl:for-each select="incipit">
                                                  <xsl:variable name="incipit" select="@n"/>
                                                  <fo:block text-align="justify">
                                                  <xsl:apply-templates select="."/>
                                                  <xsl:if
                                                  test="following-sibling::explicit[@n = $incipit]">
                                                  <xsl:text> x </xsl:text>
                                                  <xsl:apply-templates
                                                  select="following-sibling::explicit[@n = $incipit]"
                                                  />
                                                  </xsl:if>
                                                  </fo:block>
                                                  <fo:block/>
                                                </xsl:for-each>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:for-each select="incipit">
                                                  <xsl:variable name="incipit"
                                                  select="count(position())"/>
                                                  <fo:block text-align="justify">
                                                  <xsl:apply-templates select="."/>
                                                  <xsl:text> x </xsl:text>
                                                  <xsl:apply-templates
                                                  select="following-sibling::explicit[position() = $incipit]"
                                                  />
                                                  </fo:block>
                                                  <fo:block/>
                                                </xsl:for-each>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:if test="colophon">
                                    <fo:block text-align="justify">
                                        <xsl:apply-templates select="colophon"/>
                                    </fo:block>
                                </xsl:if>
                                <fo:block/>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
                <xsl:if test="note">
                    <fo:block font-family="TimesNewRoman" font-size="10pt" line-height="1.5"
                        text-align="justify" margin-left="80pt">
                        <xsl:apply-templates select="note"/>
                    </fo:block>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:if test="msItem[preceding-sibling::incipit]">
            <xsl:apply-templates select="msItem"/>
        </xsl:if>
        <xsl:if test="preceding::msIdentifier[idno = 'CH-0006.500']">
            <xsl:apply-templates select="following::msPart[@n = 10]"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="msItem/msItem">
        <fo:table space-after="10pt" space-before="10pt" margin-left="0pt">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                text-align="left">
                <fo:table-row>
                    <xsl:if test="locus">
                        <fo:table-cell width="80pt">
                            <fo:block>
                                <xsl:apply-templates select="locus"/>
                            </fo:block>
                        </fo:table-cell>
                    </xsl:if>
                    <fo:table-cell>
                        <xsl:choose>
                            <xsl:when test="title and author">
                                <fo:block text-align="justify">
                                    <xsl:apply-templates select="author"/>
                                    <xsl:text>: </xsl:text>
                                    <xsl:apply-templates select="title"/>
                                </fo:block>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="author and not(title)">
                                <fo:block text-align="justify">
                                    <xsl:apply-templates select="author"/>
                                </fo:block>
                                <fo:block/>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="title and not(author)">
                                <fo:block text-align="justify">
                                    <xsl:apply-templates select="title"/>
                                </fo:block>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="docTitle">
                                <xsl:choose>
                                    <xsl:when test="author">
                                        <fo:block>
                                            <xsl:apply-templates/>
                                        </fo:block>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <fo:block>
                                            <xsl:apply-templates/>
                                        </fo:block>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:if test="docImprint">
                            <fo:block>
                                <fo:inline font-weight="bold"><xsl:value-of select="author"/>: </fo:inline>
                                <fo:inline font-style="italic"><xsl:value-of select="docTitle"/>. </fo:inline>
                                <fo:inline>
                                    <xsl:value-of select="docImprint"/>
                                </fo:inline>
                            </fo:block>
                        </xsl:if>
                        <xsl:choose>
                            <xsl:when test="rubric">
                                <fo:block text-align="justify">
                                    <xsl:apply-templates select="rubric"/>
                                </fo:block>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="incipit and explicit">
                                <xsl:choose>
                                    <xsl:when test="incipit[@n]">
                                        <xsl:for-each select="incipit">
                                            <xsl:variable name="incipit" select="@n"/>
                                            <fo:block text-align="justify">
                                                <xsl:apply-templates select="."/>
                                                <xsl:if
                                                  test="following-sibling::explicit[@n = $incipit]">
                                                  <xsl:text> x </xsl:text>
                                                </xsl:if>
                                                <xsl:apply-templates
                                                  select="following-sibling::explicit[@n = $incipit]"
                                                />
                                            </fo:block>
                                            <fo:block/>
                                        </xsl:for-each>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:for-each select="incipit">
                                            <xsl:variable name="incipit" select="count(position())"/>
                                            <fo:block text-align="justify">
                                                <xsl:apply-templates select="."/>
                                                <xsl:if
                                                  test="following-sibling::explicit[position() = $incipit]">
                                                  <xsl:text> x </xsl:text>
                                                </xsl:if>
                                                <xsl:apply-templates
                                                  select="following-sibling::explicit[position() = $incipit]"
                                                />
                                            </fo:block>
                                            <fo:block/>
                                        </xsl:for-each>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>
                        <fo:block text-align="justify">
                            <xsl:if test="incipit and not(explicit)">
                                <xsl:apply-templates select="incipit"/>
                            </xsl:if>
                            <xsl:if test="explicit and not(incipit)">
                                <xsl:apply-templates select="explicit"/>
                            </xsl:if>
                        </fo:block>
                        <xsl:if test="colophon">
                            <fo:block text-align="justify">
                                <xsl:apply-templates select="colophon"/>
                            </fo:block>
                        </xsl:if>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
        <xsl:if test="note">
            <fo:block font-family="TimesNewRoman" font-size="10p" line-height="1.5"
                text-align="justify" margin-left="80pt">
                <xsl:apply-templates select="note"/>
            </fo:block>
        </xsl:if>
    </xsl:template>
    <xsl:template match="note">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="parent::colophon">
                <xsl:text>(</xsl:text>
                <xsl:if test="not(p)">
                    <xsl:apply-templates select="child::node()"/>
                    <xsl:choose>
                        <xsl:when test="contains($tecka, '.')">
                            <xsl:text> </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>. </xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
                <xsl:if test="p">
                    <xsl:apply-templates select="p"/>
                </xsl:if>
                <xsl:text>)</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="not(p)">
                    <xsl:apply-templates select="child::node()"/>
                    <xsl:choose>
                        <xsl:when test="contains($tecka, '.')">
                            <xsl:text> </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>. </xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
                <xsl:if test="p">
                    <xsl:apply-templates select="p"/>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="p">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="parent::foliation">
                <xsl:choose>
                    <xsl:when test="contains(., 'Foliace')">
                        <xsl:choose>
                            <xsl:when test="preceding-sibling::p[contains(., 'foliace')]">
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:when>
                            <xsl:when test="preceding-sibling::p[contains(., 'Foliace')]">
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="substring-before(., 'Foliace')"/>
                                <fo:inline font-style="italic">Foliace </fo:inline>
                                <xsl:value-of select="substring-after(., 'Foliace')"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="contains(., 'foliace')">
                        <xsl:choose>
                            <xsl:when test="preceding-sibling::p[contains(., 'foliace')]">
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:when>
                            <xsl:when test="preceding-sibling::p[contains(., 'Foliace')]">
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="substring-before(., 'foliace')"/>
                                <fo:inline font-style="italic"> foliace </fo:inline>
                                <xsl:value-of select="substring-after(., 'foliace')"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="contains(., 'Paginace')">
                        <xsl:choose>
                            <xsl:when test="preceding-sibling::p[contains(., 'paginace')]">
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:when>
                            <xsl:when test="preceding-sibling::p[contains(., 'Paginace')]">
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="substring-before(., 'Paginace')"/>
                                <fo:inline font-style="italic">Paginace </fo:inline>
                                <xsl:value-of select="substring-after(., 'Paginace')"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="contains(., 'paginace')">
                        <xsl:choose>
                            <xsl:when test="preceding-sibling::p[contains(., 'paginace')]">
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="substring-before(., 'paginace')"/>
                                <fo:inline font-style="italic"> paginace </fo:inline>
                                <xsl:value-of select="substring-after(., 'paginace')"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="contains(., 'Chyba')">
                        <xsl:value-of select="substring-before(., 'Chyba')"/>
                        <fo:inline font-style="italic">Chyba </fo:inline>
                        <xsl:value-of select="substring-after(., 'Chyba')"/>
                    </xsl:when>
                    <xsl:when test="contains(., 'Chyby')">
                        <xsl:value-of select="substring-before(., 'Chyby')"/>
                        <fo:inline font-style="italic">Chyby </fo:inline>
                        <xsl:value-of select="substring-after(., 'Chyby')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="parent::layoutDesc or parent::layout">
                <xsl:choose>
                    <xsl:when test="contains(., 'zrcadlo')">
                        <xsl:value-of select="substring-before(., 'zrcadlo')"/>
                        <fo:inline font-style="italic"> zrcadlo </fo:inline>
                        <xsl:value-of select="substring-after(., 'zrcadlo')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:if test="following-sibling::bibl">
                    <xsl:text>Viz </xsl:text>
                    <xsl:apply-templates select="following-sibling::bibl"/>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!--  
    <xsl:template match="p[substring(text(), 1, 1)]">
        <xsl:value-of select="translate(., $uc, $lc)"/>
    </xsl:template>
   -->
    <xsl:template match="q">
        <fo:inline font-style="italic"> "<xsl:apply-templates select="child::node()"/>" </fo:inline>
    </xsl:template>
    <xsl:template match="colophon">
        <fo:inline font-style="italic">
            <xsl:apply-templates select="child::node()"/>
        </fo:inline>
    </xsl:template>
    <xsl:template match="supplied">
        <fo:inline font-style="normal">
            <xsl:choose>
                <xsl:when
                    test="contains(substring(., 1, 2), 'F.') or contains(substring(., 1, 2),
                     'P.')"
                    > [<xsl:value-of select="translate(.,'FP','fp')"/>] </xsl:when>
                <xsl:when
                    test="parent::rubric or parent::incipit or parent::explicit or
                    parent::colophon or parent::titlePart">
                    <xsl:text>[</xsl:text>
                    <xsl:value-of select="."/>
                    <xsl:text>]</xsl:text>
                </xsl:when>
                <xsl:when test="parent::title/preceding-sibling::persName/supplied">
                    <xsl:text>[</xsl:text>
                    <xsl:value-of select="parent::title/preceding-sibling::persName/supplied"/>
                    <xsl:text>: </xsl:text>
                    <xsl:value-of select="."/>
                    <xsl:text>]</xsl:text>
                </xsl:when>
                <xsl:otherwise> [<xsl:value-of select="."/>] </xsl:otherwise>
            </xsl:choose>
        </fo:inline>
    </xsl:template>
    <!--  <xsl:template match="msItem" mode="incipit">
        <xsl:if test="incipit[position()&lt;2] and explicit[position()&lt;2]">
            <xsl:apply-templates select="incipit[position()=1]"/>
            <xsl:text> x </xsl:text>
            <xsl:apply-templates select="explicit[position()=1]"/>
        </xsl:if>
        <fo:block> </fo:block>
        <xsl:if test="incipit[position()>1] and explicit[position()>1]">
            <xsl:apply-templates select="incipit[position()=2]"/>
            <xsl:text> x </xsl:text>
            <xsl:apply-templates select="explicit[position()=2]"/>
        </xsl:if>
    </xsl:template>
   -->
    <xsl:template match="incipit">
        <xsl:choose>
            <xsl:when test="parent::msItem/parent::msContents">
                <xsl:choose>
                    <xsl:when test="preceding-sibling::title or preceding-sibling::rubric">
                        <xsl:choose>
                            <xsl:when test="name(child::node()[1]) != 'supplied'">
                                <xsl:text>"</xsl:text>
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:when>
                            <xsl:when
                                test="name(child::node()[1]) = 'supplied' and
                                child::node()[1][not(preceding-sibling::node())]">
                                <xsl:apply-templates select="child::node()[1]"/>
                                <xsl:if test="not(preceding-sibling::incipit)">
                                    <xsl:text>"</xsl:text>
                                </xsl:if>
                                <xsl:apply-templates select="child::node()[position()>1]"/>
                            </xsl:when>
                            <xsl:otherwise> "<xsl:apply-templates select="child::node()"/>"
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when
                                test="name(child::node()[1]) = 'supplied' and
                                child::node()[1][not(preceding-sibling::node())]">
                                <xsl:apply-templates select="child::node()[1]"/>
                                <fo:inline font-weight="bold">" <xsl:apply-templates
                                        select="child::node()[position()>1]"/>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="supplied[1 and following-sibling::node()]/preceding-sibling::node()">
                                <fo:inline font-weight="bold">"<xsl:apply-templates
                                        select="child::node()[following-sibling::supplied]"
                                    /></fo:inline>
                                <xsl:apply-templates select="supplied[1]"/>
                                <fo:inline font-weight="bold">
                                    <xsl:apply-templates
                                        select="child::node()[preceding-sibling::supplied]"/>
                                </fo:inline>
                            </xsl:when>
                            <xsl:when test="name(child::node()[1]) != 'supplied'">
                                <fo:inline font-weight="bold">" <xsl:apply-templates
                                        select="child::node()"/>
                                </fo:inline>
                            </xsl:when>
                            <xsl:otherwise>
                                <fo:inline font-weight="bold"> "<xsl:apply-templates
                                        select="child::node()"/>" </fo:inline>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="text()[not(preceding-sibling::node())]">
                        <fo:inline>"</fo:inline>
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:when>
                    <xsl:when
                        test="name(child::node()[1]) = 'supplied' and
                    child::node()[1][not(preceding-sibling::node())]">
                        <xsl:apply-templates select="child::node()[1]"/>
                        <fo:inline>"</fo:inline>
                        <xsl:apply-templates select="child::node()[position()>1]"/>
                    </xsl:when>
                    <xsl:when test="name(child::node()[1]) != 'supplied'">
                        <fo:inline>"</fo:inline>
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:when>
                    <xsl:otherwise> "<xsl:apply-templates select="child::node()"/>" </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="incipit/node()[last()]">
        <xsl:choose>
            <xsl:when test="parent::incipit/following-sibling::incipit">
                <xsl:value-of select="."/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
                <fo:inline>"</fo:inline>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="explicit">
        <xsl:choose>
            <xsl:when test="text()[not(preceding-sibling::node())]">
                <fo:inline vertical-align="text-bottom">"</fo:inline>
                <xsl:apply-templates select="child::node()"/>
            </xsl:when>
            <xsl:when test="name(child::node()[1]) = 'supplied'">
                <xsl:apply-templates select="supplied[1]"/>
                <fo:inline vertical-align="text-bottom">"</fo:inline>
                <xsl:apply-templates select="supplied[1]/following-sibling::node()"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>"</xsl:text>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="explicit/node()[last()]">
        <xsl:value-of select="."/>
        <fo:inline>"</fo:inline>
    </xsl:template>
    <xsl:template match="handDesc">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:if test="summary">
            <xsl:apply-templates select="summary"/>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="handNote[position() &lt; 2 and position() = last()]">
                <xsl:choose>
                    <xsl:when test="handNote[not(p)]">
                        <xsl:apply-templates select="handNote/child::node()"/>
                        <xsl:choose>
                            <xsl:when test="contains($tecka, '.')">
                                <xsl:text> </xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>. </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="handNote/p">
                        <xsl:for-each select="handNote/p">
                            <xsl:apply-templates select="."/>
                        </xsl:for-each>
                    </xsl:when>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="handNote[position() &gt; 1]">
                <xsl:for-each select="handNote">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </xsl:when>
        </xsl:choose>
        <xsl:if test="//msDesc[msIdentifier/idno = 'CH-0006.500']/msPart[@n='10']">
            <xsl:text>MS 2.: </xsl:text>
            <xsl:apply-templates
                select="//msDesc[msIdentifier/idno =
                'CH-0006.500']/msPart[@n='10']/physDesc/handDesc/handNote"
            />
        </xsl:if>
    </xsl:template>
    <xsl:template match="handNote">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="p">
                <xsl:apply-templates select="p"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="author">
        <xsl:choose>
            <xsl:when test="parent::msItem">
                <fo:inline font-weight="bold">
                    <xsl:apply-templates select="child::node()"/>
                </fo:inline>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="title[not(supplied)]">
        <xsl:choose>
            <xsl:when test="parent::head">
                <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="12pt"
                    line-height="1.5" color="black" space-after="20pt" space-before="20pt"
                    margin-left="25mm" margin-right="25mm" page-break-after="avoid"
                    page-break-inside="avoid" text-align="justify" text-align-last="center">
                    <xsl:choose>
                        <xsl:when test="preceding-sibling::persName[@type='author']">
                            <xsl:apply-templates select="preceding-sibling::persName"/>
                            <xsl:text>: </xsl:text>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when
                            test="//msDesc/msContents/msItem[position() = 1 and
                            position() = last() and title]">
                            <xsl:text>"</xsl:text>
                            <xsl:choose>
                                <xsl:when test="//msDesc/msIdentifier/idno = 'CH-RKP-0000.025'">
                                    <xsl:value-of select="substring-before(., '. I. Teil')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:apply-templates select="child::node()"/>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:text>"</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:choose>
                                <xsl:when test="//msDesc/msContents/titlePage">
                                    <xsl:text>"</xsl:text>
                                    <xsl:apply-templates select="//msDesc/msContents/titlePage"/>
                                    <xsl:text>"</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>"</xsl:text>
                                    <xsl:apply-templates select="child::node()"/>
                                    <xsl:text>"</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:block>
            </xsl:when>
            <xsl:when test="parent::bibl or parent::p or parent::note">
                <fo:inline font-style="italic">
                    <xsl:apply-templates select="child::node()"/>
                </fo:inline>
            </xsl:when>
            <xsl:when test="parent::q">
                <xsl:apply-templates select="child::node()"/>
            </xsl:when>
            <xsl:when test="parent::msItem/parent::msContents">
                <xsl:choose>
                    <xsl:when test="//msDesc/msIdentifier/idno = 'CH-RKP-0000.025'">
                        <fo:inline font-weight="bold">"<xsl:value-of
                                select="substring-after(.,
                            'Vögel. ')"
                            />"</fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/msIdentifier/idno = 'CH-RKP-0000.026'">
                        <fo:inline font-weight="bold">"<xsl:value-of
                                select="substring-after(.,
                            'Vögel. ')"
                            />"</fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/msIdentifier/idno = 'CH-RKP-0000.027'">
                        <fo:inline font-weight="bold">"<xsl:value-of
                                select="substring-after(.,
                            'Vögel. ')"
                            />"</fo:inline>
                    </xsl:when>
                    <xsl:otherwise>
                        <fo:inline font-weight="bold">"<xsl:apply-templates select="child::node()"
                            />"</fo:inline>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>"</xsl:text>
                <xsl:apply-templates select="child::node()"/>
                <xsl:text>"</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="title">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="title[supplied]">
        <xsl:choose>
            <xsl:when
                test="name(child::node()[1]) = 'supplied' and
                    name(child::node()[last()]) = 'supplied'">
                <xsl:choose>
                    <xsl:when test="parent::head">
                        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="12pt"
                            line-height="1.5" color="black" space-after="20pt" space-before="20pt"
                            margin-left="25mm" margin-right="25mm" page-break-after="avoid"
                            page-break-inside="avoid" text-align="justify" text-align-last="center">
                            <xsl:choose>
                                <xsl:when test="//msDesc/msContents/titlePage">
                                    <xsl:apply-templates select="//msDesc/msContents/titlePage"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:choose>
                                        <xsl:when
                                            test="preceding-sibling::persName[@type='author'][not(supplied)]">
                                            <xsl:apply-templates
                                                select="preceding-sibling::persName"/>
                                            <xsl:text>: </xsl:text>
                                        </xsl:when>
                                    </xsl:choose>
                                    <xsl:apply-templates select="child::node()"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </fo:block>
                    </xsl:when>
                    <xsl:when test="parent::msItem/parent::msContents">
                        <xsl:choose>
                            <xsl:when test="preceding-sibling::author or following-sibling::author">
                                <fo:inline font-weight="bold">
                                    <xsl:apply-templates select="child::node()"/>
                                </fo:inline>
                            </xsl:when>
                            <xsl:otherwise>
                                <fo:block font-weight="bold">
                                    <xsl:apply-templates select="child::node()"/>
                                </fo:block>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <fo:block>
                            <xsl:apply-templates select="child::node()"/>
                        </fo:block>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="name(child::node()[1]) = 'supplied' and not(preceding-sibling::node())">
                <xsl:choose>
                    <xsl:when test="parent::head">
                        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="12pt"
                            line-height="1.5" color="black" space-after="20pt" space-before="20pt"
                            margin-left="25mm" margin-right="25mm" page-break-after="avoid"
                            page-break-inside="avoid" text-align="justify" text-align-last="center">
                            <xsl:apply-templates select="child::node()[1]"/>
                            <xsl:text>"</xsl:text>
                            <xsl:apply-templates select="child::node()[position()>1]"/>
                        </fo:block>
                    </xsl:when>
                    <xsl:otherwise>
                        <fo:block>
                            <xsl:apply-templates select="child::node()[1]"/>
                            <xsl:text>"</xsl:text>
                            <xsl:apply-templates select="child::node()[position()>1]"/>
                        </fo:block>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="name(child::node()[last()]) = 'supplied'">
                <xsl:choose>
                    <xsl:when test="parent::head">
                        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="12pt"
                            line-height="1.5" color="black" space-after="20pt" space-before="20pt"
                            margin-left="25mm" margin-right="25mm" page-break-after="avoid"
                            page-break-inside="avoid" text-align="justify" text-align-last="center">
                            <xsl:choose>
                                <xsl:when test="//msDesc/msContents/titlePage">
                                    <xsl:text>"</xsl:text>
                                    <xsl:apply-templates select="//msDesc/msContents/titlePage"/>
                                    <xsl:text>"</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:choose>
                                        <xsl:when test="preceding-sibling::persName[@type='author']">
                                            <xsl:apply-templates
                                                select="preceding-sibling::persName"/>
                                            <xsl:text>: </xsl:text>
                                        </xsl:when>
                                    </xsl:choose>
                                    <xsl:text>"</xsl:text>
                                    <xsl:apply-templates
                                        select="child::node()[position()&lt;last()]"/>
                                    <xsl:text>"</xsl:text>
                                    <xsl:apply-templates select="child::node()[last()]"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </fo:block>
                    </xsl:when>
                    <xsl:otherwise>
                        <fo:block>
                            <xsl:text>"</xsl:text>
                            <xsl:apply-templates select="child::node()[position()&lt;last()]"/>
                            <xsl:text>"</xsl:text>
                            <xsl:apply-templates select="child::node()[last()]"/>
                        </fo:block>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="parent::head">
                        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="12pt"
                            line-height="1.5" color="black" space-after="20pt" space-before="20pt"
                            margin-left="25mm" margin-right="25mm" page-break-after="avoid"
                            page-break-inside="avoid" text-align="justify" text-align-last="center">
                            <xsl:choose>
                                <xsl:when test="preceding-sibling::persName[@type='author']">
                                    <xsl:apply-templates select="preceding-sibling::persName"/>
                                    <xsl:text>: </xsl:text>
                                </xsl:when>
                            </xsl:choose>
                            <xsl:text>"</xsl:text>
                            <xsl:apply-templates select="child::node()"/>
                            <xsl:text>"</xsl:text>
                        </fo:block>
                    </xsl:when>
                    <xsl:otherwise>
                        <fo:block>
                            <xsl:text>"</xsl:text>
                            <xsl:apply-templates select="child::node()"/>
                            <xsl:text>"</xsl:text>
                        </fo:block>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="docTitle">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <!-- <xsl:template match="gap">
        <xsl:choose>
            <xsl:when test="gloss">
                <xsl:value-of select="gloss"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>///</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <fo:footnote>
            <xsl:if test="@reason">
                <fo:inline font-size="10pt" vertical-align="super">
                    <xsl:number/>
                </fo:inline>
                <fo:footnote-body>
                    <fo:block font-size="10pt">
                        <fo:inline vertical-align="super">
                            <xsl:number/>
                            <xsl:text> </xsl:text>
                        </fo:inline>
                        <xsl:if test="@reason='damage'">
                            <xsl:text>Poškozeno. </xsl:text>
                        </xsl:if>
                        <xsl:if test="@reason='omitted' and not(@extent) and not(@unit)">
                            <xsl:text>Chybí část textu.</xsl:text>
                        </xsl:if>
                        <xsl:if test="@unit and not(@extent)">
                            <xsl:if test="@unit='lines'"> Chybí několik řádků. </xsl:if>
                            <xsl:if test="@unit='words'"> Chybí několik slov. </xsl:if>
                            <xsl:if test="@unit='pages'"> Chybí několik stran. </xsl:if>
                            <xsl:if test="@unit='leaves'"> Chybí několik folií. </xsl:if>
                        </xsl:if>
                        <xsl:if test="@unit and @extent">
                            <xsl:if test="@unit='lines'"> Chybí <xsl:if test="@extent = 1">jeden
                                    řádek.</xsl:if>
                                <xsl:if test="@extent > 1 and @extent &lt; 5"><xsl:value-of
                                        select="@extent"/> řádky.</xsl:if>
                                <xsl:if test="@extent >= 5"><xsl:value-of select="@extent"/>
                                    řádků.</xsl:if>
                            </xsl:if>
                            <xsl:if test="@unit='words'"> Chybí <xsl:if test="@extent = 1">jedno
                                    slovo.</xsl:if>
                                <xsl:if test="@extent > 1 and @extent &lt; 5"><xsl:value-of
                                        select="@extent"/> slova.</xsl:if>
                                <xsl:if test="@extent >= 5"><xsl:value-of select="@extent"/>
                                    slov.</xsl:if>
                            </xsl:if>
                            <xsl:if test="@unit='pages'"> Chybí <xsl:if test="@extent = 1">jedna
                                    strana.</xsl:if>
                                <xsl:if test="@extent > 1 and @extent &lt; 5"><xsl:value-of
                                        select="@extent"/> strany.</xsl:if>
                                <xsl:if test="@extent >= 5"><xsl:value-of select="@extent"/>
                                    stran.</xsl:if>
                            </xsl:if>
                            <xsl:if test="@unit='leaves'"> Chybí <xsl:if test="@extent = 1">jedno
                                    folio.</xsl:if>
                                <xsl:if test="@extent > 1 and @extent &lt; 5"><xsl:value-of
                                        select="@extent"/> folia.</xsl:if>
                                <xsl:if test="@extent >= 5"><xsl:value-of select="@extent"/>
                                    folií.</xsl:if>
                            </xsl:if>
                        </xsl:if>
                    </fo:block>
                </fo:footnote-body>
            </xsl:if>
        </fo:footnote>
    </xsl:template>-->
    <xsl:template match="choice">
        <xsl:apply-templates select="abbr"/>
        <xsl:choose>
            <xsl:when test="expan[position()>1]">
                <xsl:text>[</xsl:text>
                <xsl:for-each select="expan">
                    <xsl:apply-templates select="."/>
                    <xsl:if test="position() != last()">
                        <fo:inline font-style="italic">
                            <xsl:text> nebo </xsl:text>
                        </fo:inline>
                    </xsl:if>
                </xsl:for-each>
                <xsl:text>]</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>[</xsl:text>
                <xsl:apply-templates select="expan"/>
                <xsl:text>]</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="abbr">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:apply-templates select="child::node()"/>
        <xsl:choose>
            <xsl:when test="contains($tecka, '.')">
                <xsl:text> </xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="expan">
        <xsl:choose>
            <xsl:when test="supplied">
                <xsl:value-of select="."/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="dimensions">
        <xsl:choose>
            <xsl:when test="contains(substring(height, 3, 1), '0')">
                <xsl:value-of select="substring(height, 1, 2)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="concat(substring(height, 1, 2), ',', substring(height, 3, 1))"
                />
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text> x </xsl:text>
        <xsl:choose>
            <xsl:when test="contains(substring(width, 3, 1), '0')">
                <xsl:value-of select="substring(width, 1, 2)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="concat(substring(width, 1, 2), ',', substring(width, 3, 1))"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text> cm</xsl:text>
    </xsl:template>
    <xsl:template match="msPart[physDesc/objectDesc/@form='codex']">
        <fo:table space-after="10pt" space-before="10pt">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                text-align="left">
                <fo:table-row border-width="70pt">
                    <fo:table-cell width="80pt">
                        <xsl:if test="@n = '10'">
                            <fo:block font-style="italic">MS 2.</fo:block>
                        </xsl:if>
                    </fo:table-cell>
                    <fo:table-cell>
                        <xsl:apply-templates select="head/title"/>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
        <xsl:apply-templates select="msContents/msItem"/>
        <xsl:if test="msContents/summary">
            <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                text-align="justify" space-after="10pt" space-before="10pt">
                <xsl:apply-templates select="msContents/summary"/>
            </fo:block>
        </xsl:if>
    </xsl:template>
    <xsl:template match="msPart[physDesc/p/term[contains(., 'tisk')]]">
        <fo:table space-after="10pt" space-before="10pt">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body font-family="TimesNewRoman" font-size="10" line-height="1.5"
                text-align="left">
                <fo:table-row border-width="70pt">
                    <fo:table-cell width="80pt">
                        <fo:block>
                            <xsl:variable name="CH115">
                                <xsl:number format="1"/>
                            </xsl:variable>
                            <xsl:choose>
                                <xsl:when test="//msDesc/msIdentifier/idno = 'CH-0006.500'">
                                    <xsl:choose>
                                        <xsl:when test="@n > 10"> (<xsl:value-of
                                                select="$CH115 -
                                            1"
                                            />) </xsl:when>
                                        <xsl:otherwise>(<xsl:number format="1" count="msPart"
                                            />)</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                                <xsl:otherwise> (<xsl:number format="1" count="msPart"/>)
                                </xsl:otherwise>
                            </xsl:choose>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <xsl:choose>
                            <xsl:when test="msContents/titlePage">
                                <fo:block>
                                    <fo:inline>
                                        <xsl:apply-templates
                                            select="msContents/titlePage/docAuthor/child::node()"/>
                                    </fo:inline>
                                    <fo:inline>
                                        <xsl:apply-templates
                                            select="msContents/titlePage/docTitle/child::node()"/>
                                    </fo:inline>
                                    <xsl:text>. </xsl:text>
                                    <fo:inline>
                                        <xsl:apply-templates
                                            select="msContents/titlePage/docImprint/child::node()"/>
                                    </fo:inline>
                                    <xsl:text> </xsl:text>
                                    <fo:inline>
                                        <xsl:apply-templates
                                            select="physDesc/objectDesc/supportDesc/extent/child::node()[name()
                                            != 'note']"
                                        />
                                    </fo:inline>
                                    <xsl:if test="physDesc/objectDesc/supportDesc/extent/note">
                                        <fo:block> </fo:block>
                                        <fo:inline>
                                            <xsl:apply-templates
                                                select="physDesc/objectDesc/supportDesc/extent/note"
                                            />
                                        </fo:inline>
                                    </xsl:if>
                                </fo:block>
                                <!--  <fo:block>
                                            <fo:inline font-weight="bold"><xsl:value-of select="author"/>: </fo:inline>
                                            <fo:inline font-style="italic"><xsl:value-of select="docTitle"/>. </fo:inline>
                                            <fo:inline>
                                            <xsl:value-of select="docImprint"/>
                                            </fo:inline>
                                            </fo:block> -->
                            </xsl:when>
                            <xsl:otherwise>
                                <fo:block>
                                    <xsl:apply-templates select="head/title"/>
                                </fo:block>
                            </xsl:otherwise>
                        </xsl:choose>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>
    <xsl:template match="summary">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="parent::msContents">
                <xsl:choose>
                    <xsl:when test="note">
                        <xsl:apply-templates select="note"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="child::node()"/>
                        <xsl:choose>
                            <xsl:when test="contains($tecka, '.')">
                                <xsl:text> </xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>. </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:apply-templates
                    select="//sourceDesc/msDesc/msIdentifier[idno =
                        'CH-RKP-0000.113']/altIdentifier/note"
                />
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="physDesc">
        <xsl:if test="objectDesc/supportDesc/foliation">
            <xsl:choose>
                <xsl:when test="//msDesc/msIdentifier/idno = 'CH-RKP-0000.025'">
                    <xsl:text>Sv. 1. </xsl:text>
                    <xsl:apply-templates select="objectDesc/supportDesc/foliation"/>
                    <xsl:text>Sv. 2. </xsl:text>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.026.tei.xml')//objectDesc/supportDesc/foliation"/>
                    <xsl:text>Sv. 3. </xsl:text>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.027.tei.xml')//objectDesc/supportDesc/foliation"
                    />
                </xsl:when>
                <xsl:when test="//msDesc/msIdentifier/idno = 'CH-RKP-0000.055'">
                    <xsl:text>Sv. 1. </xsl:text>
                    <xsl:apply-templates select="objectDesc/supportDesc/foliation"/>
                    <xsl:text>Sv. 2. </xsl:text>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.056.tei.xml')//objectDesc/supportDesc/foliation"/>
                    <xsl:text>Sv. 3. </xsl:text>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.057.tei.xml')//objectDesc/supportDesc/foliation"
                    />
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="objectDesc/supportDesc/foliation"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="accMat">
            <xsl:apply-templates select="accMat"/>
        </xsl:if>
        <xsl:if test="objectDesc/supportDesc/collation">
            <xsl:choose>
                <xsl:when test="objectDesc/supportDesc/collation/preceding-sibling::foliation">
                    <fo:inline font-style="italic">— Kolace: </fo:inline>
                </xsl:when>
                <xsl:otherwise>
                    <fo:inline font-style="italic">Kolace: </fo:inline>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="//msDesc/msIdentifier/idno = 'CH-RKP-0000.055'">
                    <xsl:text>Sv. 1. </xsl:text>
                    <xsl:apply-templates select="objectDesc/supportDesc/collation"/>
                    <xsl:text>Sv. 2. a 3. </xsl:text>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.056.tei.xml')//objectDesc/supportDesc/collation"
                    />
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="objectDesc/supportDesc/collation"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="objectDesc/supportDesc/condition">
            <xsl:apply-templates select="objectDesc/supportDesc/condition"/>
        </xsl:if>
        <xsl:if test="objectDesc/layoutDesc">
            <xsl:apply-templates select="objectDesc/layoutDesc"/>
        </xsl:if>
        <xsl:if test="handDesc">
            <fo:inline font-style="italic">— Písmo: </fo:inline>
            <xsl:apply-templates select="handDesc"/>
        </xsl:if>
        <xsl:if test="bindingDesc">
            <fo:inline font-style="italic">— Vazba: </fo:inline>
            <xsl:apply-templates select="bindingDesc"/>
        </xsl:if>
        <xsl:if test="decoDesc">
            <xsl:choose>
                <xsl:when test="//msDesc/msIdentifier/idno = 'CH-RKP-0000.025'">
                    <xsl:text>Sv. 1. </xsl:text>
                    <xsl:apply-templates select="decoDesc"/>
                    <xsl:text>Sv. 2. </xsl:text>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.026.tei.xml')//decoDesc/p[position() &lt;
                        last()]"/>
                    <xsl:text>Sv. 3. </xsl:text>
                    <xsl:apply-templates
                        select="document('CH-RKP-0000.027.tei.xml')//decoDesc/p[position() &lt;
                        last()]"
                    />
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="decoDesc/decoNote[@type='illustration']">
                            <fo:inline font-style="italic">— Výzdoba: </fo:inline>
                            <xsl:apply-templates select="decoDesc"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:inline font-style="italic">— </fo:inline>
                            <xsl:apply-templates select="decoDesc"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="//msDesc/history">
            <xsl:apply-templates select="//msDesc/history"/>
        </xsl:if>
        <xsl:if test="additions">
            <fo:inline>— </fo:inline>
            <xsl:apply-templates select="additions"/>
        </xsl:if>
        <xsl:if test="musicNotation">
            <fo:inline>— </fo:inline>
            <xsl:apply-templates select="musicNotation"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="additions">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="musicNotation">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="history">
        <xsl:choose>
            <xsl:when test="provenance//bibl[position() &lt; 2]/idno[position() &lt; 2]">
                <fo:inline font-style="italic">— Vlastnické poznámky a signatura: </fo:inline>
            </xsl:when>
            <xsl:when test="provenance//bibl[position() != 1]/idno[position() != 1]">
                <fo:inline font-style="italic">— Vlastnické poznámky a signatury: </fo:inline>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="provenance">
                    <fo:inline font-style="italic">— Vlastnické poznámky: </fo:inline>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:if test="p">
            <xsl:apply-templates select="p"/>
        </xsl:if>
        <xsl:if test="provenance">
            <xsl:apply-templates select="provenance"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="foliation">
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:if test="contains(., 'foliace')">
                    <xsl:apply-templates select="text()[substring-before(., 'foliace')]"/>
                    <fo:inline font-style="italic"> foliace </fo:inline>
                    <xsl:apply-templates select="text()[substring-after(., 'foliace')]"/>
                </xsl:if>
                <xsl:if test="contains(., 'Foliace')">
                    <xsl:apply-templates select="text()[substring-before(., 'Foliace')]"/>
                    <fo:inline font-style="italic">Foliace </fo:inline>
                    <xsl:apply-templates select="text()[substring-after(., 'Foliace')]"/>
                </xsl:if>
                <xsl:if test="contains(., 'paginace')">
                    <xsl:apply-templates select="text()[substring-before(., 'paginace')]"/>
                    <fo:inline font-style="italic"> paginace </fo:inline>
                    <xsl:apply-templates select="text()[substring-after(., 'paginace')]"/>
                </xsl:if>
                <xsl:if test="contains(., 'Paginace')">
                    <xsl:apply-templates select="text()[substring-before(., 'Paginace')]"/>
                    <fo:inline font-style="italic">Paginace </fo:inline>
                    <xsl:apply-templates select="text()[substring-after(., 'Paginace')]"/>
                </xsl:if>
                <xsl:text>. </xsl:text>
            </xsl:when>
            <xsl:when test="p">
                <xsl:if test="p[contains(., 'foliace') or contains(., 'paginace')]">
                    <xsl:choose>
                        <xsl:when test="p[contains(., 'foliace')]">
                            <xsl:apply-templates select="p[contains(., 'foliace')]"/>
                        </xsl:when>
                        <xsl:when test="p[contains(., 'paginace')]">
                            <xsl:apply-templates select="p[contains(., 'paginace')]"/>
                        </xsl:when>
                    </xsl:choose>
                </xsl:if>
                <xsl:if
                    test="p[not(contains(., 'Ff.')) and not(contains(., 'Pp.')) and
                    not(contains(., 'Chyba')) and not(contains(., 'Chyby')) and not(contains(.,
                    'foliace')) and not(contains(., 'paginace'))]">
                    <xsl:apply-templates
                        select="p[not(contains(., 'Ff.')) and not(contains(., 'Pp.')) and
                        not(contains(., 'Chyba')) and not(contains(., 'Chyby')) and not(contains(.,
                        'foliace')) and not(contains(., 'paginace'))]"
                    />
                </xsl:if>
                <xsl:for-each select="p[contains(., 'Ff.') or contains(., 'Pp.')]">
                    <xsl:choose>
                        <xsl:when test="string-length(.)>200">
                            <xsl:text>Mnoho </xsl:text>
                            <xsl:if test="contains(., 'Ff.')">folií </xsl:if>
                            <xsl:if test="contains(., 'Pp.')">stran </xsl:if>
                            <xsl:text>prázdných. </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="."/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <xsl:if test="p[contains(., 'Chyba') or contains(., 'Chyby')]">
                    <xsl:apply-templates select="p[contains(., 'Chyba') or contains(., 'Chyby')]"/>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="collation">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="p">
                <xsl:for-each select="p">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="condition">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="p">
                <xsl:for-each select="p">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="layoutDesc">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:choose>
                    <xsl:when test="layout">
                        <xsl:apply-templates select="layout"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="child::node()"/>
                        <xsl:choose>
                            <xsl:when test="contains($tecka, '.')">
                                <xsl:text> </xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>. </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="p">
                <xsl:for-each select="p">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
                <xsl:if test="layout">
                    <xsl:apply-templates select="layout"/>
                </xsl:if>
            </xsl:when>
            <xsl:when test="layout">
                <xsl:apply-templates select="layout"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="layout">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="p">
                <xsl:for-each select="p">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="bindingDesc">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="not(p) and not(binding)">
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="p">
                <xsl:for-each select="p">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="binding">
                <xsl:apply-templates select="binding"/>
            </xsl:when>
        </xsl:choose>
        <xsl:if test="condition">
            <xsl:apply-templates select="condition"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="binding">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="p">
                <xsl:apply-templates select="child::node()"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="decoDesc">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="not(p) and not(decoNote)">
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="p">
                <xsl:for-each select="p">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="decoNote">
                <xsl:apply-templates select="decoNote"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="decoNote">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="p">
                <xsl:apply-templates select="p"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="provenance">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:apply-templates select="child::node()"/>
                <xsl:choose>
                    <xsl:when test="contains($tecka, '.')">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>. </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="p">
                <xsl:if test="p">
                    <xsl:apply-templates select="p"/>
                </xsl:if>
                <xsl:if test="note">
                    <xsl:apply-templates select="note"/>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="accMat">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:if test="not(p)">
            <xsl:apply-templates select="child::node()"/>
            <xsl:choose>
                <xsl:when test="contains($tecka, '.')">
                    <xsl:text> </xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>. </xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="p">
            <xsl:apply-templates select="p"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="bibliografie">
        <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5" space-after="5pt"
            space-before="5pt">
            <fo:block font-weight="bold" text-align="center">Literatura</fo:block>
            <fo:block> </fo:block>
            <xsl:for-each select="bibl">
                <fo:block margin-left="40pt">
                    <fo:block text-indent="-20pt">
                        <fo:inline>
                            <xsl:value-of select="."/>
                        </fo:inline>
                    </fo:block>
                    <fo:block> </fo:block>
                </fo:block>
            </xsl:for-each>
        </fo:block>
    </xsl:template>
    <xsl:template match="ex">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="titlePage">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="docAuthor">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="docTitle[1]">
        <xsl:apply-templates select="titlePart[1]"/>
        <xsl:apply-templates select="titlePart[position()>1]"/>
    </xsl:template>
    <xsl:template match="docTitle[position()>1]">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="titlePart">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="docEdition">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="docImprint">
        <fo:block/>
        <xsl:apply-templates select="child::node()"/>
        <xsl:if test="origDate/@when">
            <xsl:text> (</xsl:text>
            <xsl:value-of select="origDate/@when"/>
            <xsl:text>)</xsl:text>
        </xsl:if>
        <xsl:if test="date/@when">
            <xsl:text> (</xsl:text>
            <xsl:value-of select="date/@when"/>
            <xsl:text>)</xsl:text>
        </xsl:if>
    </xsl:template>
    <xsl:template match="idno">
        <xsl:choose>
            <xsl:when test="parent::bibl">
                <xsl:choose>
                    <xsl:when test="contains(., 'CH')">
                        <xsl:value-of select="."/>
                    </xsl:when>
                    <xsl:otherwise>
                        <fo:inline font-style="italic">
                            <xsl:value-of select="."/>
                        </fo:inline>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="orgName">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="persName">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="extent">
        <xsl:choose>
            <xsl:when test="contains(., 'ff. +')">
                <xsl:choose>
                    <xsl:when test="contains(., 'list')">
                        <xsl:value-of select="."/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="substring-before(., 'ff. +')"/>
                        <xsl:text>ff.</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="contains(., 'pp. +')">
                <xsl:choose>
                    <xsl:when test="contains(., 'list')">
                        <xsl:value-of select="."/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="substring-before(., 'pp. +')"/>
                        <xsl:text>pp.</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="rubric">
        <xsl:choose>
            <xsl:when test="parent::msItem/parent::msContents">
                <xsl:choose>
                    <xsl:when test="not(preceding-sibling::title)">
                        <fo:inline font-weight="bold">"<xsl:apply-templates select="child::node()"
                            />"</fo:inline>
                    </xsl:when>
                    <xsl:otherwise>"<xsl:apply-templates select="child::node()"/>"</xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise> "<xsl:apply-templates select="child::node()"/>" </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="unclear[@reason]">
        <fo:inline><xsl:apply-templates select="child::node()"/>(?)</fo:inline>
    </xsl:template>
    <xsl:template match="hi">
        <xsl:choose>
            <xsl:when test="@rend='sup'">
                <fo:inline font-size="10pt" vertical-align="super">
                    <xsl:apply-templates select="child::node()"/>
                </fo:inline>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="msItem/locus">
        <xsl:value-of select="translate(., 'pf.', '')"/>
    </xsl:template>
</xsl:stylesheet>
