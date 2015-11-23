<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:strip-space elements="*"/>
    <xsl:preserve-space elements="author colophon date note p persName title"/>
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:variable name="uc">ABCDEFGHIJKLMNOPQRSTUVWXYZĚŠČŘŽÝÁÍÉÚŮŇ</xsl:variable>
    <xsl:variable name="lc">abcdefghijklmnopqrstuvwxyzěščřžýáíéúůň</xsl:variable>
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="page" page-height="400mm" page-width="300mm"
                    margin-top="10mm" margin-bottom="10mm" margin-left="20mm" margin-right="20mm">
                    <fo:region-body margin-top="10mm" margin-bottom="10mm" margin-left="0mm"
                        margin-right="0mm"/>
                    <fo:region-before extent="10mm"/>
                    <fo:region-after extent="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="page">
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block font-family="TimesNewRoman" font-size="18pt" line-height="25pt"
                        color="black" text-align="center">
                        <fo:page-number/>
                    </fo:block>
                </fo:static-content>
                <fo:flow font-family="TimesNewRoman" flow-name="xsl-region-body">
                    <fo:block/>
                    <xsl:apply-templates
                        select="document('BA1.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA2.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA3.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA4.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA5.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA6.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA7.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA8.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA9.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA10.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA11.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA12.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA13.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA14.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA15.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA16.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA17.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA18.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA19.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA20.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA21.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA22.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA23.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA24.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA25.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA26.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA27.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA28.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA29.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA30.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA31.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA32.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA33.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA34.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA35.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA36.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA37.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA38.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA39.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA40.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA41.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA42.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA43.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA44.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA45.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA46.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA47.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA48.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA49.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA50.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA51.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA52.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA53.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA54.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,1.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,2.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,3.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,4.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,5.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,6.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,7.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,8.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,9.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,10.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,11.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,12.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,13.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,14.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,15.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,16.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,17.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,18.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,19.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA55,20.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA56.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA57.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA58.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA59.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA60.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA61.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA62.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA63.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA65.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA65.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA66.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA67.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA68.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA69.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA70.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA71.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA72.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA73.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA74.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA75.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA76.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA77.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA78.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA79.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA80.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA81.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA82.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA83.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA84.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA85.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA86.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA87.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA88.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA89.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA90.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA91.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA92.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA92.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA93.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA94.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA95.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA96.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA97.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA98.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA99.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA100.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA101.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA102.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA103.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA104.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA105.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA106.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA107.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA108.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA109.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA110.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                    <xsl:apply-templates
                        select="document('BA111.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BA112.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BA113.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BA114.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BA115.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BA116.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BASk1.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BASk2.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BASk3.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BASk4.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BASk5.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BASk6.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                    <xsl:apply-templates
                        select="document('BASk7.tei.xml')/TEI/teiHeader/fileDesc/sourceDesc/msDesc"
                    />
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <xsl:template match="msDesc">
        <xsl:apply-templates select="msIdentifier"/>
        <xsl:if test="head/title">
            <xsl:apply-templates select="head/title"/>
        </xsl:if>
        <xsl:if test="msContents/msItem">
            <xsl:apply-templates select="msContents/msItem"/>
        </xsl:if>
        <xsl:if test="msContents/summary">
            <fo:block font-family="TimesNewRoman" font-size="14" line-height="18pt"
                text-align="justify" space-after="10pt" space-before="10pt">
                <xsl:apply-templates select="msContents/summary"/>
            </fo:block>
        </xsl:if>
        <fo:block font-family="TimesNewRoman" font-size="14" line-height="18pt" text-align="justify">
            <fo:block/>
            <xsl:apply-templates select="physDesc"/>
        </fo:block>
        <xsl:for-each select="msPart[physDesc/p/term[contains(., 'tisk')]]">
            <xsl:choose>
                <xsl:when test="physDesc/p/term[contains(., 'tisk')]">
                    <fo:block>
                        <xsl:apply-templates select="."/>
                    </fo:block>
                </xsl:when>
                <xsl:otherwise>
                    <fo:block>
                        <xsl:apply-templates select="msContents/msItem"/>
                    </fo:block>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="msIdentifier">
        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="18pt" line-height="25pt"
            color="black" space-after="25pt" space-before="25pt" page-break-after="avoid"
            text-align="left">
            <fo:inline>
                <xsl:value-of select="idno"/>
            </fo:inline>
        </fo:block>
        <fo:block font-family="TimesNewRoman" font-size="14pt" line-height="25pt" color="black"
            text-align="justify" page-break-after="avoid" space-after="20pt">
            <fo:inline>
                <xsl:choose>
                    <xsl:when test="//msDesc/head//origDate[@notAfter='1550' and @notBefore='1501']">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[@notAfter='1600' and @notBefore='1551']">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super"
                                >2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[@notAfter='1650' and @notBefore='1601']">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[@notAfter='1700' and @notBefore='1651']">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                >2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[@notAfter='1750' and @notBefore='1701']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[@notAfter='1750' and @notBefore='1700']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[@notAfter='1800' and @notBefore='1751']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[@notAfter='1800' and @notBefore='1750']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[@notAfter='1850' and @notBefore='1801']">
                        <fo:inline>XIX<fo:inline font-size="10pt" vertical-align="super"
                                >1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., 'Polovina 16.')]">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., 'Polovina 17.')]">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., 'Polovina 18.')]">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., 'Polovina 19.')]">
                        <fo:inline>XIX<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., 'Přelom 16. a 17.')]">
                        <fo:inline>XVI<fo:inline vertical-align="super"
                                >ex.</fo:inline>/XVII<fo:inline vertical-align="super"
                                >in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., 'Přelom 17. a 18.')]">
                        <fo:inline>XVII<fo:inline vertical-align="super"
                                >ex.</fo:inline>/XVIII<fo:inline vertical-align="super"
                                >in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., 'Přelom 18. a 19.')]">
                        <fo:inline>XVIII<fo:inline vertical-align="super"
                                >ex.</fo:inline>/XIX<fo:inline vertical-align="super"
                                >in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[@notAfter='1820' and @notBefore='1780']">
                        <fo:inline>XVIII<fo:inline vertical-align="super"
                                >ex.</fo:inline>/XIX<fo:inline vertical-align="super"
                                >in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., '2. polovina 18. století')]">
                        <fo:inline>XVIII<fo:inline vertical-align="super">2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., '1. polovina 18. století')]">
                        <fo:inline>XVIII<fo:inline vertical-align="super">1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., '17. století')]">
                        <fo:inline>XVII</fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[contains(., '18. století')]">
                        <fo:inline>XVIII</fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[@notAfter and not(@notBefore)]">
                        <xsl:text>ante </xsl:text>
                        <xsl:value-of select="//msDesc/head//origDate/@notAfter"/>
                    </xsl:when>
                    <xsl:when test="//msDesc/head//origDate[not(@notAfter) and @notBefore]">
                        <xsl:text>post </xsl:text>
                        <xsl:value-of select="//msDesc/head//origDate/@notBefore"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head//origDate, 'po')">
                        <xsl:text>post </xsl:text>
                        <xsl:value-of select="substring-after(//msDesc/head//origDate, 'po ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head//origDate, 'Po')">
                        <xsl:text>post </xsl:text>
                        <xsl:value-of select="substring-after(//msDesc/head//origDate, 'Po ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head//origDate, 'Před')">
                        <xsl:text>ante </xsl:text>
                        <xsl:value-of select="substring-after(//msDesc/head//origDate, 'Před ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head//origDate, 'Ne po roce')">
                        <xsl:text>ante </xsl:text>
                        <xsl:value-of
                            select="substring-after(//msDesc/head//origDate, 'Ne po roce ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head//origDate, 'ca')">
                        <xsl:text>c. </xsl:text>
                        <xsl:value-of select="substring-after(//msDesc/head//origDate, 'ca ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head//origDate, 'Kolem roku')">
                        <xsl:text>c. </xsl:text>
                        <xsl:value-of
                            select="substring-after(//msDesc/head//origDate, 'Kolem roku ')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of
                            select="concat(translate(substring(//msDesc/head//origDate, 1,
                            1), $uc, $lc), substring(//msDesc/head//origDate, 2))"
                        />
                    </xsl:otherwise>
                </xsl:choose>
            </fo:inline>
            <xsl:if test="//msDesc/head/origPlace">
                <fo:inline>
                    <xsl:for-each select="//msDesc/head/origPlace">
                        <fo:leader/>
                        <xsl:value-of select="//msDesc/head/origPlace"/>
                    </xsl:for-each>
                </fo:inline>
            </xsl:if>
            <xsl:if test="//msDesc/msPart">
                <fo:leader/>
                <fo:inline>konvolut</fo:inline>
            </xsl:if>
            <xsl:if
                test="//msDesc/physDesc/objectDesc/supportDesc/support/p/material[contains(., 'Papír')]">
                <fo:leader/>
                <fo:inline>
                    <xsl:text>pap.</xsl:text>
                </fo:inline>
            </xsl:if>
            <xsl:if
                test="//msDesc/physDesc/objectDesc/supportDesc/support/p/material[contains(., 'Pergamen')]">
                <fo:leader/>
                <fo:inline>
                    <xsl:text>perg.</xsl:text>
                </fo:inline>
            </xsl:if>
            <fo:leader/>
            <fo:inline>
                <xsl:apply-templates select="//msDesc/physDesc/objectDesc/supportDesc/extent"/>
            </fo:inline>
            <fo:leader/>
            <fo:inline>
                <xsl:apply-templates
                    select="//msDesc/physDesc/objectDesc/supportDesc/support/p/dimensions[@type='leaves']"
                />
            </fo:inline>
            <fo:leader/>
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
            </xsl:choose>
        </fo:block>
    </xsl:template>
    <xsl:template match="msItem">
        <xsl:variable name="pocet1" select="count(following-sibling::msItem)"/>
        <xsl:variable name="pocet2" select="count(preceding-sibling::msItem)"/>
        <fo:table space-after="10pt" space-before="10pt">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body font-family="TimesNewRoman" font-size="18pt" line-height="25pt"
                text-align="left">
                <xsl:if test="preceding::msIdentifier/idno[contains(., 'CH-0006.500')]">
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="150pt">
                            <fo:block>MS 1.</fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block/>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:if>
                <fo:table-row border-width="70pt">
                    <xsl:if test="locus">
                        <fo:table-cell width="150pt">
                            <fo:block>
                                <xsl:choose>
                                    <xsl:when test="docImprint">
                                        <xsl:for-each select="docImprint">(<xsl:number format="1"
                                                value="position()"/>)</xsl:for-each>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:choose>
                                            <xsl:when test="$pocet1 >= 1"> (<xsl:number format="a"
                                                />) </xsl:when>
                                            <xsl:when test="$pocet2 >= 1"> (<xsl:number format="a"
                                                />) </xsl:when>
                                        </xsl:choose>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="locus"/>
                            </fo:block>
                        </fo:table-cell>
                    </xsl:if>
                    <xsl:if test="not(locus)">
                        <fo:table-cell width="150pt">
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
                                <xsl:choose>
                                    <xsl:when test="title[persName]">
                                        <fo:block text-align="justify">
                                            <xsl:apply-templates select="title"/>
                                        </fo:block>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <fo:block text-align="justify">
                                            <xsl:value-of select="author"/>
                                            <xsl:text>: </xsl:text>
                                            <xsl:apply-templates select="title"/>
                                        </fo:block>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="author and not(title)">
                                <xsl:choose>
                                    <xsl:when test="incipit[persName]"> </xsl:when>
                                    <xsl:otherwise>
                                        <fo:block text-align="justify">
                                            <xsl:value-of select="author"/>
                                        </fo:block>
                                        <fo:block/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="title and not(author)">
                                <fo:block text-align="justify">
                                    <xsl:apply-templates select="title"/>
                                </fo:block>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:if test="titlePart">
                            <xsl:for-each select="titlePart">
                                <fo:block>"<xsl:apply-templates select="."/>"</fo:block>
                            </xsl:for-each>
                        </xsl:if>
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
                                <fo:inline font-weight="bold"><xsl:value-of select="author"/>: </fo:inline>
                                <fo:inline font-style="italic"><xsl:value-of select="docTitle"/>. </fo:inline>
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
                                            <xsl:variable name="incipit" select="count(position())"/>
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
        <xsl:if test="msItem">
            <xsl:apply-templates select="msItem"/>
        </xsl:if>
        <xsl:if test="note">
            <fo:block font-family="TimesNewRoman" font-size="14" line-height="18pt"
                text-align="justify" margin-left="150pt">
                <xsl:apply-templates select="note"/>
            </fo:block>
        </xsl:if>
    </xsl:template>
    <xsl:template match="msItem/msItem">
        <fo:table space-after="10pt" space-before="10pt" margin-left="0pt">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body font-family="TimesNewRoman" font-size="18pt" line-height="25pt"
                text-align="left">
                <fo:table-row border-width="70pt">
                    <xsl:if test="locus">
                        <fo:table-cell width="150pt">
                            <fo:block>
                                <xsl:value-of select="locus"/>
                            </fo:block>
                        </fo:table-cell>
                    </xsl:if>
                    <fo:table-cell>
                        <xsl:choose>
                            <xsl:when test="title and author">
                                <xsl:choose>
                                    <xsl:when test="title[persName]">
                                        <fo:block text-align="justify">
                                            <xsl:apply-templates select="title"/>
                                        </fo:block>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <fo:block text-align="justify">
                                            <xsl:value-of select="author"/>
                                            <xsl:text>: </xsl:text>
                                            <xsl:apply-templates select="title"/>
                                        </fo:block>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="author and not(title)">
                                <xsl:choose>
                                    <xsl:when test="incipit[persName]">
                                        <fo:block>
                                            <xsl:apply-templates/>
                                        </fo:block>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <fo:block text-align="justify">
                                            <xsl:value-of select="author"/>
                                        </fo:block>
                                        <fo:block/>
                                    </xsl:otherwise>
                                </xsl:choose>
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
                            <xsl:when test="incipit and explicit">
                                <xsl:choose>
                                    <xsl:when test="incipit[@n]">
                                        <xsl:for-each select="incipit">
                                            <xsl:variable name="incipit" select="@n"/>
                                            <fo:block text-align="justify">
                                                <xsl:apply-templates select="."/>
                                                <xsl:text> x </xsl:text>
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
                        <fo:block text-align="justify">
                            <xsl:if test="incipit and not(explicit)">
                                <xsl:apply-templates select="incipit"/>
                            </xsl:if>
                            <xsl:if test="explicit and not(incipit)">
                                <xsl:apply-templates select="explicit"/>
                            </xsl:if>
                        </fo:block>
                        <xsl:if test="rubric">
                            <fo:block text-align="justify">
                                <xsl:apply-templates select="rubric"/>
                            </fo:block>
                        </xsl:if>
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
            <fo:block font-family="TimesNewRoman" font-size="14" line-height="18pt"
                text-align="justify" margin-left="150pt">
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
                    <xsl:when test="contains(., 'foliace')">
                        <xsl:choose>
                            <xsl:when test="preceding-sibling::p[contains(., 'foliace')]">
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="substring-before(., 'foliace')"/>
                                <fo:inline font-style="italic"> foliace </fo:inline>
                                <xsl:value-of select="substring-after(., 'foliace')"/>
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
                        >[<xsl:value-of select="translate(.,'FP','fp')"/>]</xsl:when>
                <xsl:when
                    test="parent::rubric or parent::incipit or parent::explicit or
                    parent::colophon or parent::titlePart or parent::title">
                    <xsl:text>[</xsl:text>
                    <xsl:apply-templates select="child::node()"/>
                    <xsl:text>]</xsl:text>
                </xsl:when>
                <xsl:otherwise> [<xsl:apply-templates select="child::node()"/>] </xsl:otherwise>
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
                    <xsl:when
                        test="not(preceding-sibling::title) and not(preceding-sibling::incipit)">
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
                                <fo:inline font-weight="bold">
                                    <xsl:apply-templates select="child::node()"/>
                                </fo:inline>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>"<xsl:apply-templates select="child::node()"/>"</xsl:otherwise>
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
                    <xsl:otherwise>
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="incipit/node()[last()]">
        <xsl:value-of select="."/>
        <fo:inline>"</fo:inline>
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
        <xsl:if test="p">
            <xsl:apply-templates select="p"/>
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
                    <xsl:otherwise>
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="handNote[position() &gt; 1]">
                <xsl:for-each select="handNote">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </xsl:when>
        </xsl:choose>
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
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="locus">
                        <xsl:for-each select="locus">
                            <xsl:text>Na </xsl:text>
                            <xsl:apply-templates select="."/>
                            <xsl:text>: </xsl:text>
                            <xsl:choose>
                                <xsl:when test="following-sibling::p/note">
                                    <xsl:apply-templates
                                        select="following-sibling::p/note/preceding-sibling::node()"/>
                                    <xsl:text>. </xsl:text>
                                    <xsl:apply-templates select="following-sibling::p/note"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:apply-templates select="following-sibling::node()"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="p/note">
                                <xsl:apply-templates select="p/note/preceding-sibling::node()"/>
                                <xsl:text>. </xsl:text>
                                <xsl:apply-templates select="p/note"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="title">
        <xsl:choose>
            <xsl:when test="parent::head">
                <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="18pt"
                    line-height="25pt" color="black" space-after="20pt" space-before="20pt"
                    margin-left="25mm" margin-right="25mm" page-break-after="avoid"
                    text-align="justify" text-align-last="center">
                    <xsl:choose>
                        <xsl:when test="note">
                            <xsl:if test="child::text()">"</xsl:if>
                            <xsl:apply-templates select="note/preceding-sibling::node()"/>
                            <xsl:if test="child::text()">"</xsl:if>
                            <fo:footnote>
                                <fo:inline font-weight="normal" font-size="10pt"
                                    vertical-align="super">
                                    <xsl:number/>
                                </fo:inline>
                                <fo:footnote-body>
                                    <fo:block font-weight="normal" font-size="10pt"
                                        margin-left="-25mm" text-align="left" text-align-last="left">
                                        <fo:inline vertical-align="super">
                                            <xsl:number/>
                                            <xsl:text> </xsl:text>
                                        </fo:inline>
                                        <xsl:apply-templates select="note"/>
                                    </fo:block>
                                </fo:footnote-body>
                            </fo:footnote>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:if test="child::text()">"</xsl:if>
                            <xsl:apply-templates select="child::node()"/>
                            <xsl:if test="child::text()">"</xsl:if>
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
                <fo:inline font-weight="bold">"<xsl:apply-templates select="child::node()"
                    />"</fo:inline>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>"</xsl:text>
                <xsl:apply-templates select="child::node()"/>
                <xsl:text>"</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="docTitle">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="gap">
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
    </xsl:template>
    <xsl:template match="choice">
        <!--   <xsl:apply-templates select="abbr"/>  -->
        <xsl:choose>
            <xsl:when test="expan[position()>1]">
                <xsl:for-each select="expan">
                    <xsl:apply-templates select="."/>
                    <xsl:if test="position() != last()">
                        <fo:inline>
                            <xsl:text>[nebo]</xsl:text>
                        </fo:inline>
                    </xsl:if>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="expan"/>
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
            <fo:table-body font-family="TimesNewRoman" font-size="18pt" line-height="25pt"
                text-align="left">
                <fo:table-row border-width="70pt">
                    <fo:table-cell width="150pt">
                        <fo:block>MS 2.</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <xsl:apply-templates select="head/title"/>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
        <xsl:apply-templates select="msContents/msItem"/>
        <xsl:if test="msContents/summary">
            <fo:block font-family="TimesNewRoman" font-size="14" line-height="18pt"
                text-align="justify" space-after="10pt" space-before="10pt">
                <xsl:apply-templates select="msContents/summary"/>
            </fo:block>
        </xsl:if>
    </xsl:template>
    <xsl:template match="msPart[physDesc/p/term[contains(., 'tisk')]]">
        <fo:table space-after="10pt" space-before="10pt">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body font-family="TimesNewRoman" font-size="14pt" line-height="18pt"
                text-align="left">
                <fo:table-row border-width="70pt">
                    <fo:table-cell width="150pt">
                        <fo:block> (<xsl:number format="1" count="msPart"/>) </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <xsl:choose>
                            <xsl:when test="msContents/titlePage">
                                <fo:block>
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
                                            select="physDesc/objectDesc/supportDesc/extent"/>
                                    </fo:inline>
                                    <xsl:if test="physDesc/objectDesc/supportDesc/extent/note">
                                        <fo:block> </fo:block>
                                        <fo:inline>
                                            <xsl:value-of
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
                        <xsl:apply-templates select="child::node()"/>
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
            <xsl:apply-templates select="objectDesc/supportDesc/foliation"/>
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
            <xsl:apply-templates select="objectDesc/supportDesc/collation"/>
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
            <fo:inline font-style="italic">— Výzdoba: </fo:inline>
            <xsl:apply-templates select="decoDesc"/>
        </xsl:if>
        <xsl:if test="//msDesc/history/provenance">
            <fo:inline font-style="italic">— Prov.: </fo:inline>
            <xsl:apply-templates select="//msDesc/history/provenance"/>
        </xsl:if>
        <xsl:if test="accMat">
            <xsl:apply-templates select="accMat"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="foliation">
        <xsl:variable name="prazdna" select="p[contains(., 'Pp.') or contains(., 'Ff.')]"/>
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:choose>
                    <xsl:when test="contains(., 'foliace') or contains(., 'paginace')">
                        <xsl:if test="contains(., 'foliace')">
                            <xsl:value-of select="text()[substring-before(., 'foliace')]"/>
                            <fo:inline font-style="italic"> foliace </fo:inline>
                            <xsl:value-of select="text()[substring-after(., 'foliace')]"/>
                        </xsl:if>
                        <xsl:if test="contains(., 'paginace')">
                            <xsl:value-of select="text()[substring-before(., 'paginace')]"/>
                            <fo:inline font-style="italic"> paginace </fo:inline>
                            <xsl:value-of select="text()[substring-after(., 'paginace')]"/>
                        </xsl:if>
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
            <xsl:when test="p">
                <xsl:if test="p[contains(., 'foliace') or contains(., 'paginace')]">
                    <xsl:choose>
                        <xsl:when test="p[contains(., 'foliace')]">
                            <xsl:value-of select="p[contains(., 'foliace')]"/>
                        </xsl:when>
                        <xsl:when test="p[contains(., 'paginace')]">
                            <xsl:value-of select="p[contains(., 'paginace')]"/>
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
                <xsl:if test="p[contains(., 'Ff.') or contains(., 'Pp.')]">
                    <xsl:choose>
                        <xsl:when test="string-length($prazdna)>200">
                            <xsl:text>Mnoho </xsl:text>
                            <xsl:if test="p[contains(., 'Ff.')]">folií </xsl:if>
                            <xsl:if test="p[contains(., 'Pp.')]">stran </xsl:if>
                            <xsl:text>prázdných. </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="$prazdna"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
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
                <xsl:for-each select="p">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
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
        <fo:block font-family="TimesNewRoman" font-size="18pt" line-height="25pt" space-after="5pt"
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
        <xsl:apply-templates select="child::node()"/>
        <!--<xsl:choose>
            <xsl:when test="contains(., 'ff. +')">
                <xsl:value-of select="substring-before(., 'ff. +')"/>
                <xsl:text>ff.</xsl:text>
            </xsl:when>
            <xsl:when test="contains(., 'pp. +')">
                <xsl:value-of select="substring-before(., 'pp. +')"/>
                <xsl:text>pp.</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>-->
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
</xsl:stylesheet>
