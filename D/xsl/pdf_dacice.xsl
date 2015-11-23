<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:strip-space elements="*"/>
    <xsl:preserve-space elements="author colophon date note p persName q rubric title"/>
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:variable name="uc">ABCDEFGHIJKLMNOPQRSTUVWXYZĚŠČŘŽÝÁÍÉÚŮŇ</xsl:variable>
    <xsl:variable name="lc">abcdefghijklmnopqrstuvwxyzěščřžýáíéúůň</xsl:variable>
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="page" page-height="270mm" page-width="200mm"
                    margin-top="10mm" margin-bottom="10mm" margin-left="20mm" margin-right="20mm">
                    <fo:region-body margin-top="10mm" margin-bottom="10mm" margin-left="0mm"
                        margin-right="0mm"/>
                    <fo:region-before extent="10mm"/>
                    <fo:region-after extent="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="page">
                <!--<fo:static-content flow-name="xsl-region-after">
                    <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="25pt"
                        color="black" text-align="center">
                        <fo:page-number/>
                    </fo:block>
                </fo:static-content>-->
                <fo:flow flow-name="xsl-region-body">
                    <!--<xsl:apply-templates select="document('D-001.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-002.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-003.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-004.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-005.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-006.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-007.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-008.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-009.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-010.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-011.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-012.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-013.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-014.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-015.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-016.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-017.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-018.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-019.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-020.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-021.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-022.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-023.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-024.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-025.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-026.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-027.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-028.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-029.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-030.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-031.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-032.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-033.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-034.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-035.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-036.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-037.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-038.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-039.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-040.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-041.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-042.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-043.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-044.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-045.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-046.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-047.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-048.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-049.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-050.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-051.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-052.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-053.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-054.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-055.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-056.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-057.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-058.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-059.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-060.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-061.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-062.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-063.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-064.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-065.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-066.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-067.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-068.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-069.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-070.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-071.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-072.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-073.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-074.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-075.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-076.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-077.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-078.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-079.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-080.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-081.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-082.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-083.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-084.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-085.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-086.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-087.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-088.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-089.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-090.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-091.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-092.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-093.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-094.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-095.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-096.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-097.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-098.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-099.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-100.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-101.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-102.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-103.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-104.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-105.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-106.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-107.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-108.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-109.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-110.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-111.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-112.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-113.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-114.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-115.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-116.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-117.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-118.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-119.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-120.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-121.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-122.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-123.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-124.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-125.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-126.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-127.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-128.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-129.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('D-130.tei.xml')//msDesc"/>
                    <fo:block font-family="TimesNewRoman" font-size="18" line-height="1.5"
                        text-align="center" font-weight="bold" text-indent="10" space-after="10pt"
                        break-before="page"> Rejstříky </fo:block>
                    <xsl:apply-templates select="document('rejstrik_jmena.xml')/rejstrik"/>
                    <xsl:apply-templates select="document('rejstrik_chron.xml')/rejstrik"/>
                    <xsl:apply-templates select="document('rejstrik_notace.xml')/rejstrik"/>
                    <xsl:apply-templates select="document('rejstrik_jazyk.xml')/rejstrik"/>
                    <xsl:apply-templates select="document('rejstrik_prov.xml')/rejstrik"/>-->
                    <xsl:apply-templates select="document('rejstrik_bibl.xml')/bibliografie"/>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <xsl:template match="msDesc">
        <xsl:apply-templates select="msIdentifier"/>
        <fo:block font-family="TimesNewRoman" font-size="12" line-height="1.5" text-align="justify"
            text-indent="10" space-after="10pt">
            <xsl:apply-templates select="physDesc"/>
        </fo:block>
        <xsl:if test="msContents/summary/note/listBibl">
            <fo:block font-family="TimesNewRoman" font-size="10pt" line-height="1.5"
                text-align="justify" text-indent="10pt" space-after="10pt" space-before="10pt">
                <xsl:apply-templates select="msContents/summary/note/listBibl"/>
            </fo:block>
        </xsl:if>
        <xsl:if test="head/title">
            <xsl:apply-templates select="head/title"/>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="msPart">
                <fo:block>
                    <fo:table space-after="10pt" space-before="10pt">
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1"
                            text-align="left">
                            <fo:table-row border-width="70pt">
                                <fo:table-cell width="50pt">
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
        <xsl:choose>
            <xsl:when
                test="msContents/msItem[1]/locus or msContents/msItem[1]/title or
                msContents/msItem[1]/incipit">
                <xsl:apply-templates select="msContents//msItem"/>
            </xsl:when>
            <xsl:when test="msContents/msItem/colophon">
                <xsl:apply-templates select="msContents//msItem"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="msContents/msItem/msItem"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:if test="msIdentifier/idno = 'MP-RKP-0000.014'">
            <fo:table space-after="10pt" space-before="10pt">
                <fo:table-column/>
                <fo:table-column/>
                <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1"
                    text-align="left">
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="80pt">
                            <fo:block>1. </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>"<xsl:apply-templates
                                    select="head/title/supplied/following-sibling::node()"
                                />"</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="80pt">
                            <fo:block/>
                        </fo:table-cell>
                        <fo:table-cell font-family="TimesNewRoman" font-size="10pt"
                            line-height="1.5" text-align="justify">
                            <fo:block>
                                <xsl:apply-templates select="msContents/summary/note/p[2]"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
            <fo:table space-after="10pt" space-before="10pt">
                <fo:table-column/>
                <fo:table-column/>
                <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1"
                    text-align="left">
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="80pt">
                            <fo:block>2. </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>"<xsl:apply-templates
                                    select="document('MP-RKP-0000.015.tei.xml')//msDesc/head/title/supplied/following-sibling::node()"
                                />"</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="80pt">
                            <fo:block/>
                        </fo:table-cell>
                        <fo:table-cell font-family="TimesNewRoman" font-size="10pt" line-height="1"
                            text-align="justify" space-after="10pt" space-before="10pt">
                            <fo:block>
                                <xsl:apply-templates
                                    select="document('MP-RKP-0000.015.tei.xml')//msDesc/msContents/summary/note/p[2]"
                                />
                            </fo:block>
                            <fo:block/>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
            <fo:table space-after="10pt" space-before="10pt">
                <fo:table-column/>
                <fo:table-column/>
                <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1"
                    text-align="left">
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="80pt">
                            <fo:block>3. </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>"<xsl:apply-templates
                                    select="document('MP-RKP-0000.016.tei.xml')//msDesc/head/title/supplied/following-sibling::node()"
                                />"</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="80pt">
                            <fo:block/>
                        </fo:table-cell>
                        <fo:table-cell font-family="TimesNewRoman" font-size="10pt" line-height="1"
                            text-align="justify" space-after="10pt" space-before="10pt">
                            <fo:block>
                                <xsl:apply-templates
                                    select="document('MP-RKP-0000.016.tei.xml')//msDesc/msContents/summary/note/p[2]"
                                />
                            </fo:block>
                            <fo:block/>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
            <fo:table space-after="10pt" space-before="10pt">
                <fo:table-column/>
                <fo:table-column/>
                <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1"
                    text-align="left">
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="80pt">
                            <fo:block>4. </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>"<xsl:apply-templates
                                    select="document('MP-RKP-0000.017.tei.xml')//msDesc/head/title/supplied/following-sibling::node()"
                                />"</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="80pt">
                            <fo:block/>
                        </fo:table-cell>
                        <fo:table-cell font-family="TimesNewRoman" font-size="10pt" line-height="1"
                            text-align="justify" space-after="10pt" space-before="10pt">
                            <fo:block>
                                <xsl:apply-templates
                                    select="document('MP-RKP-0000.017.tei.xml')//msDesc/msContents/summary/note/p[2]"
                                />
                            </fo:block>
                            <fo:block/>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
            <fo:table space-after="10pt" space-before="10pt">
                <fo:table-column/>
                <fo:table-column/>
                <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1"
                    text-align="left">
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="80pt">
                            <fo:block>5. </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>"<xsl:apply-templates
                                    select="document('MP-RKP-0000.018.tei.xml')//msDesc/head/title/supplied/following-sibling::node()"
                                />"</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row border-width="70pt">
                        <fo:table-cell width="80pt">
                            <fo:block/>
                        </fo:table-cell>
                        <fo:table-cell font-family="TimesNewRoman" font-size="10pt" line-height="1"
                            text-align="justify" space-after="10pt" space-before="10pt">
                            <fo:block>
                                <xsl:apply-templates
                                    select="document('MP-RKP-0000.018.tei.xml')//msDesc/msContents/summary/note/p[2]"
                                />
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </xsl:if>
        <xsl:if test="msContents/summary">
            <fo:block font-family="TimesNewRoman" font-size="10pt" line-height="1.5"
                text-align="justify" text-indent="10pt" space-after="10pt" space-before="10pt">
                <xsl:apply-templates select="msContents/summary"/>
            </fo:block>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="msPart[position() != 1]">
                <fo:block font-family="TimesNewRoman" font-size="12pt" font-style="italic"
                    >TISKY</fo:block>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="msPart">
                    <fo:block font-family="TimesNewRoman" font-size="12pt" font-style="italic"
                        >TISK</fo:block>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:for-each select="msPart">
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
        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="12pt" line-height="1.5"
            color="black" space-after="25pt" space-before="25pt" page-break-after="avoid"
            text-align-last="justify">
            <xsl:variable name="cislo" select="number(substring-after(idno, 'D '))"/>
            <fo:inline>
                <xsl:value-of select="$cislo"/>
            </fo:inline>
            <fo:leader/>
            <fo:inline>
                <xsl:value-of select="idno"/>
            </fo:inline>
        </fo:block>
        <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5" color="black"
            text-align="left" text-indent="10pt" page-break-after="avoid" space-after="20pt">
            <fo:inline>
                <xsl:choose>
                    <xsl:when test="idno = 'MP-RKP-0000.014'">
                        <xsl:value-of select="//msDesc/head/origDate/@notBefore"/>
                        <xsl:text>-</xsl:text>
                        <xsl:value-of
                            select="document('MP-RKP-0000.018.tei.xml')//msDesc/head/origDate"/>
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
                    <xsl:when test="//msDesc/head/origDate[contains(., 'polovina 16.')]">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'Polovina 17.')]">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'polovina 17.')]">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'Polovina 18.')]">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'polovina 18.')]">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'Polovina 19.')]">
                        <fo:inline>XIX<fo:inline font-size="10pt" vertical-align="super"
                                >med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//msDesc/head/origDate[contains(., 'polovina 19.')]">
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
                    <xsl:when test="contains(//msDesc/head/origDate, 'po ')">
                        <xsl:text>post </xsl:text>
                        <xsl:value-of select="substring-after(//msDesc/head/origDate, 'po ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head/origDate, 'Po ')">
                        <xsl:text>post </xsl:text>
                        <xsl:value-of select="substring-after(//msDesc/head/origDate, 'Po ')"/>
                    </xsl:when>
                    <xsl:when test="contains(//msDesc/head/origDate, 'Před ')">
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
            <xsl:text>, </xsl:text>
            <xsl:if test="//msDesc/head/origPlace">
                <fo:inline>
                    <xsl:for-each select="//msDesc/head/origPlace">
                        <xsl:value-of select="."/>
                    </xsl:for-each>
                    <xsl:text>, </xsl:text>
                </fo:inline>
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
            <xsl:text>, </xsl:text>
            <xsl:choose>
                <xsl:when test="idno = 'MP-RKP-0000.002'">
                    <fo:inline>7 svazků</fo:inline>
                </xsl:when>
                <xsl:when test="idno = 'MP-RKP-0000.014'">
                    <fo:inline>5 svazků</fo:inline>
                </xsl:when>
                <xsl:when test="idno = 'MP-RKP-0000.026'">
                    <xsl:text>6 svazků</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="//msDesc/msPart">
                            <xsl:text>MS </xsl:text>
                            <fo:inline>
                                <xsl:apply-templates
                                    select="//msDesc/physDesc/objectDesc/supportDesc/extent"/>
                            </fo:inline>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:inline>
                                <xsl:apply-templates
                                    select="//msDesc/physDesc/objectDesc/supportDesc/extent"/>
                            </fo:inline>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text>, </xsl:text>
            <!-- <xsl:choose>
                <xsl:when test="idno = 'MP-RKP-0000.014'">
                    <fo:inline>
                        <xsl:text>1. </xsl:text>
                        <xsl:value-of
                            select="substring-before(//msDesc/physDesc/objectDesc/supportDesc/extent,
                        ' ff.')"/>
                        <xsl:text>; </xsl:text>
                    </fo:inline>
                    <fo:inline>
                        <xsl:text>2. </xsl:text>
                        <xsl:value-of
                            select="substring-before(document('MP-RKP-0000.015.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent,
                        ' ff.')"/>
                        <xsl:text>; </xsl:text>
                    </fo:inline>
                    <fo:inline>
                        <xsl:text>3. </xsl:text>
                        <xsl:value-of
                            select="substring-before(document('MP-RKP-0000.016.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent,
                        ' ff.')"/>
                        <xsl:text>; </xsl:text>
                    </fo:inline>
                    <fo:inline>
                        <xsl:text>4. </xsl:text>
                        <xsl:value-of
                            select="substring-before(document('MP-RKP-0000.017.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent,
                        ' ff.')"/>
                        <xsl:text> ff.; </xsl:text>
                    </fo:inline>
                    <fo:inline>
                        <xsl:text>5. </xsl:text>
                        <xsl:value-of
                            select="substring-before(document('MP-RKP-0000.018.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent,
                        ' pp.')"/>
                        <xsl:text> pp.</xsl:text>
                    </fo:inline>
                </xsl:when>
                <xsl:when test="idno = 'MP-RKP-0000.026'">
                    <fo:inline>
                        <xsl:text>1. </xsl:text>
                        <xsl:value-of
                            select="substring-before(//msDesc/physDesc/objectDesc/supportDesc/extent,
                            ' pp.')"/>
                        <xsl:text>; </xsl:text>
                    </fo:inline>
                    <fo:inline>
                        <xsl:text>2. </xsl:text>
                        <xsl:value-of
                            select="substring-before(document('MP-RKP-0000.027.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent,
                            ' pp.')"/>
                        <xsl:text>; </xsl:text>
                    </fo:inline>
                    <fo:inline>
                        <xsl:text>3. </xsl:text>
                        <xsl:value-of
                            select="substring-before(document('MP-RKP-0000.028.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent,
                            ' pp.')"/>
                        <xsl:text>; </xsl:text>
                    </fo:inline>
                    <fo:inline>
                        <xsl:text>4. </xsl:text>
                        <xsl:value-of
                            select="substring-before(document('MP-RKP-0000.029.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent,
                            ' pp.')"/>
                        <xsl:text>; </xsl:text>
                    </fo:inline>
                    <fo:inline>
                        <xsl:text>5. </xsl:text>
                        <xsl:value-of
                            select="substring-before(document('MP-RKP-0000.030.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent,
                            ' pp.')"/>
                        <xsl:text>; </xsl:text>
                    </fo:inline>
                    <fo:inline>
                        <xsl:text>6. </xsl:text>
                        <xsl:value-of
                            select="document('MP-RKP-0000.031.tei.xml')//msDesc/physDesc/objectDesc/supportDesc/extent"
                        />
                    </fo:inline>
                </xsl:when>
            </xsl:choose>-->
            <fo:inline>
                <xsl:choose>
                    <xsl:when
                        test="//msDesc/physDesc/objectDesc/supportDesc/support/p/dimensions[@type='leaf']">
                        <xsl:apply-templates
                            select="//msDesc/physDesc/objectDesc/supportDesc/support/p/dimensions[@type='leaf']"
                        />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates
                            select="//msDesc/physDesc/objectDesc/supportDesc/support/p/dimensions"/>
                    </xsl:otherwise>
                </xsl:choose>
            </fo:inline>
            <xsl:choose>
                <xsl:when test="//msDesc/physDesc/musicNotation">
                    <xsl:text>, </xsl:text>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@contemporary='true']">
                    <xsl:text>, </xsl:text>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@contemporary='false']">
                    <xsl:text>, </xsl:text>
                </xsl:when>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="//msDesc/physDesc/musicNotation">
                    <fo:inline>notace, </fo:inline>
                </xsl:when>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@contemporary='true']">
                    <fo:inline>vazba soudobá</fo:inline>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@contemporary='false']">
                    <fo:inline>vazba mladší</fo:inline>
                </xsl:when>
                <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@period]">
                    <xsl:text>, </xsl:text>
                    <fo:inline>vazba </fo:inline>
                    <xsl:value-of select="//msDesc/physDesc/bindingDesc/binding/@period"/>
                </xsl:when>
                <xsl:when
                    test="contains(//msDesc/physDesc/bindingDesc/binding, 'Brožováno') or
                    contains(//msDesc/physDesc/bindingDesc/p, 'sešit') or
                    contains(//msDesc/physDesc/bindingDesc/p, 'Nevázáno')">
                    <xsl:text>, </xsl:text>
                    <fo:inline>sešit</fo:inline>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="//msDesc/physDesc/bindingDesc/binding"/>
                </xsl:otherwise>
            </xsl:choose>
        </fo:block>
    </xsl:template>
    <xsl:template match="msItem">
        <xsl:variable name="pocet1" select="count(following-sibling::msItem)"/>
        <xsl:variable name="pocet2" select="count(preceding-sibling::msItem)"/>
        <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
            text-align="justify" text-indent="10" space-after="10pt">
            <xsl:if test="parent::msContents">
                <xsl:choose>
                    <xsl:when test="$pocet1 >= 1">(<xsl:number format="a"/>) </xsl:when>
                    <xsl:when test="$pocet2 >= 1">(<xsl:number format="a"/>) </xsl:when>
                </xsl:choose>
            </xsl:if>
            <xsl:if test="locus">
                <xsl:apply-templates select="locus"/>
                <xsl:text>: </xsl:text>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="author and title">
                    <fo:inline font-weight="bold">
                        <xsl:apply-templates select="author"/>
                        <xsl:text>: </xsl:text>
                        <xsl:apply-templates select="title"/>
                    </fo:inline>
                </xsl:when>
                <xsl:when test="not(author) and title">
                    <fo:inline font-weight="bold">
                        <xsl:apply-templates select="title"/>
                    </fo:inline>
                </xsl:when>
                <xsl:when test="not(title) and rubric">
                    <xsl:for-each select="rubric">
                        <xsl:apply-templates select="."/>
                        <xsl:text>. </xsl:text>
                    </xsl:for-each>
                </xsl:when>
            </xsl:choose>
            <xsl:choose>
                <xsl:when test="not(title) and not(rubric)">
                    <xsl:apply-templates select="incipit[1]"/>
                    <xsl:choose>
                        <xsl:when test="explicit[1]">
                            <xsl:apply-templates select="explicit[1]"/>
                            <xsl:if test="explicit[2]">
                                <xsl:apply-templates select="explicit[2]"/>
                            </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:block/>
                            <xsl:apply-templates select="incipit[2]"/>
                            <xsl:choose>
                                <xsl:when test="incipit[position() &gt; 2]">
                                    <xsl:for-each select="incipit[position() &gt; 2]">
                                        <fo:block/>
                                        <xsl:apply-templates select="."/>
                                    </xsl:for-each>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="incipit[position() &gt; 1] and explicit[1]">
                            <xsl:for-each
                                select="incipit[position() &gt; 1 and position() != last()]">
                                <xsl:apply-templates select="."/>
                            </xsl:for-each>
                            <xsl:apply-templates select="incipit[position() = last()]"/>
                            <xsl:apply-templates select="explicit[1]"/>
                        </xsl:when>
                    </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
                    <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                        text-align="left" text-indent="10">
                        <xsl:choose>
                            <xsl:when test="incipit">
                                <xsl:apply-templates select="incipit[1]"/>
                                <xsl:choose>
                                    <xsl:when test="explicit[1]">
                                        <xsl:apply-templates select="explicit[1]"/>
                                        <xsl:if test="explicit[2]">
                                            <xsl:apply-templates select="explicit[2]"/>
                                        </xsl:if>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <fo:block/>
                                        <xsl:apply-templates select="incipit[2]"/>
                                        <xsl:choose>
                                            <xsl:when test="incipit[position() &gt; 2]">
                                                <xsl:for-each select="incipit[position() &gt; 2]">
                                                  <fo:block/>
                                                  <xsl:apply-templates select="."/>
                                                </xsl:for-each>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="incipit[position() &gt; 1] and explicit[1]">
                                        <xsl:for-each
                                            select="incipit[position() &gt; 1 and position() != last()]">
                                            <xsl:apply-templates select="."/>
                                        </xsl:for-each>
                                        <xsl:apply-templates select="incipit[position() = last()]"/>
                                        <xsl:apply-templates select="explicit[1]"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>
                    </fo:block>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:if test="colophon">
                <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                    text-align="justify" text-indent="10">
                    <!--<xsl:text>&lt;Colophon&gt; </xsl:text>-->
                    <xsl:apply-templates select="colophon"/>
                </fo:block>
            </xsl:if>
            <xsl:if test="note">
                <fo:block font-family="TimesNewRoman" font-size="10pt" line-height="1.5"
                    text-align="justify" text-indent="10">
                    <xsl:apply-templates select="note"/>
                </fo:block>
            </xsl:if>
        </fo:block>
        <!-- <fo:table space-after="10pt" space-before="10pt">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1"
                text-align="left">
                <fo:table-row border-width="70pt">
                    <xsl:if test="locus">
                        <fo:table-cell width="80pt">
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
                        <xsl:choose>
                            <xsl:when test="$pocet1 >= 1">
                                <fo:table-cell width="80pt">
                                    <fo:block>(<xsl:number format="a"/>) </fo:block>
                                </fo:table-cell>
                            </xsl:when>
                            <xsl:when test="$pocet2 >= 1">
                                <fo:table-cell width="80pt">
                                    <fo:block> (<xsl:number format="a"/>) </fo:block>
                                </fo:table-cell>
                            </xsl:when>
                            <xsl:otherwise>
                                <fo:table-cell font-weight="bold" width="80pt">
                                    <xsl:choose>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.002'">
                                            <fo:block>T. 1.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.003'">
                                            <fo:block>T. 2.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.004'">
                                            <fo:block>T. 3.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.005'">
                                            <fo:block>T. 4.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.006'">
                                            <fo:block>T. 5.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.007'">
                                            <fo:block>T. 6.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.008'">
                                            <fo:block>T. 7.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.026'">
                                            <fo:block font-weight="normal">1.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.027'">
                                            <fo:block font-weight="normal">2.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.028'">
                                            <fo:block font-weight="normal">3.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.029'">
                                            <fo:block font-weight="normal">4.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.030'">
                                            <fo:block font-weight="normal">5.</fo:block>
                                        </xsl:when>
                                        <xsl:when
                                            test="//msDesc/msIdentifier/idno =
                                            'MP-RKP-0000.031'">
                                            <fo:block font-weight="normal">6.</fo:block>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <fo:block> </fo:block>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </fo:table-cell>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:if>
                    <xsl:if test="locusGrp">
                        <fo:table-cell width="80pt">
                            <fo:block>
                                <xsl:choose>
                                    <xsl:when test="$pocet1 >= 1"> (<xsl:number format="a"/>) </xsl:when>
                                    <xsl:when test="$pocet2 >= 1"> (<xsl:number format="a"/>)
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:text> </xsl:text>
                                <xsl:choose>
                                    <xsl:when
                                        test="contains(locusGrp/locus[position() = last()]/@to,
                                                'r') or contains(locusGrp/locus[position() = last()]/@to,
                                                'v')">
                                        <xsl:text> f. </xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text> p. </xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:value-of select="locusGrp/locus[1]/@from"/>
                                <xsl:text>-</xsl:text>
                                <xsl:value-of
                                    select="locusGrp/locus[position() =
                                            last()]/@to"
                                />
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
                        <xsl:if test="title">
                            <fo:block text-align="justify">
                                <xsl:apply-templates select="title"/>
                            </fo:block>
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
                                            <xsl:value-of select="."/>
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
        <xsl:if test="note">
            <fo:block font-family="TimesNewRoman" font-size="10" line-height="1"
                text-align="justify">
                <xsl:choose>
                    <xsl:when
                        test="//msDesc/msIdentifier/idno =
                        'MP-RKP-0000.002'">
                        <xsl:apply-templates select="//msDesc/msContents/summary/note/p[2]"/>
                    </xsl:when>
                    <xsl:when
                        test="//msDesc/msIdentifier/idno =
                        'MP-RKP-0000.003'">
                        <xsl:apply-templates select="//msDesc/msContents/summary/note/p[2]"/>
                    </xsl:when>
                    <xsl:when
                        test="//msDesc/msIdentifier/idno =
                        'MP-RKP-0000.004'">
                        <xsl:apply-templates select="//msDesc/msContents/summary/note/p[2]"/>
                    </xsl:when>
                    <xsl:when test="//msDesc/msIdentifier/idno = 'MP-RKP-0000.005'">
                        <xsl:apply-templates select="//msDesc/msContents/summary/note/p[2]"/>
                    </xsl:when>
                    <xsl:when
                        test="//msDesc/msIdentifier/idno =
                        'MP-RKP-0000.006'">
                        <xsl:apply-templates select="//msDesc/msContents/summary/note/p[2]"/>
                    </xsl:when>
                    <xsl:when test="//msDesc/msIdentifier/idno = 'MP-RKP-0000.007'">
                        <xsl:apply-templates select="//msDesc/msContents/summary/note/p[2]"/>
                    </xsl:when>
                    <xsl:when test="//msDesc/msIdentifier/idno = 'MP-RKP-0000.008'">
                        <xsl:apply-templates select="//msDesc/msContents/summary/note/p[2]"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="note"/>
                    </xsl:otherwise>
                </xsl:choose>
            </fo:block>
        </xsl:if>
        <xsl:apply-templates select="msItem"/>-->
    </xsl:template>
    <!--<xsl:template match="msItem/msItem">
        <fo:table space-after="10pt" space-before="10pt" margin-left="0pt">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body font-family="TimesNewRoman" font-size="12pt" line-height="1"
                text-align="left">
                <fo:table-row border-width="70pt">
                    <xsl:if test="locus">
                        <fo:table-cell width="80pt">
                            <fo:block>
                                <xsl:value-of select="locus"/>
                            </fo:block>
                        </fo:table-cell>
                    </xsl:if>
                    <xsl:if test="not(locus)">
                        <fo:table-cell width="80pt">
                            <fo:block> </fo:block>
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
                                <fo:inline><xsl:value-of select="author"/>: </fo:inline>
                                <fo:inline font-style="italic"><xsl:value-of select="docTitle"/>. </fo:inline>
                                <fo:inline>
                                    <xsl:value-of select="docImprint"/>
                                </fo:inline>
                            </fo:block>
                        </xsl:if>
                        <xsl:if test="rubric">
                            <fo:block text-align="justify">
                                <xsl:apply-templates select="rubric"/>
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
            <fo:block font-family="TimesNewRoman" font-size="10pt" line-height="1"
                text-align="justify">
                <xsl:apply-templates select="note"/>
            </fo:block>
        </xsl:if>
    </xsl:template>-->
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
        <xsl:apply-templates select="child::node()"/>
        <xsl:choose>
            <xsl:when test="contains($tecka, '.')">
                <xsl:text> </xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>. </xsl:text>
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
                <xsl:when test="contains(., 'recte')"> (<xsl:apply-templates select="child::node()"
                    />) </xsl:when>
                <xsl:otherwise> [<xsl:if test="parent::expan"
                        ><xsl:text>= </xsl:text></xsl:if><xsl:apply-templates select="child::node()"
                    />] </xsl:otherwise>
            </xsl:choose>
        </fo:inline>
    </xsl:template>
    <xsl:template match="incipit">
        <xsl:choose>
            <xsl:when test="text()[not(preceding-sibling::node())]">
                <xsl:text>"</xsl:text>
                <xsl:apply-templates select="child::node()"/>
                <xsl:text> ...</xsl:text>
            </xsl:when>
            <xsl:when
                test="name(child::node()[1]) = 'supplied' and
                child::node()[1][not(preceding-sibling::node())]">
                <xsl:apply-templates select="child::node()[1]"/>
                <xsl:text>"</xsl:text>
                <xsl:apply-templates select="child::node()[position()>1]"/>
                <xsl:text> ...</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
                <xsl:text> ...</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="following-sibling::explicit"/>
            <xsl:otherwise>
                <xsl:text>"</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!--<xsl:template match="incipit/node()[last()]">
        <xsl:value-of select="."/>
        <fo:inline> ...</fo:inline> 
        
    </xsl:template>-->
    <xsl:template match="explicit">
        <xsl:if test=".[1]">
            <xsl:text> x </xsl:text>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="text()[not(preceding-sibling::node())]">
                <fo:inline vertical-align="text-bottom">... </fo:inline>
                <xsl:apply-templates select="child::node()"/>
            </xsl:when>
            <xsl:when test="text()[1 and name(preceding-sibling::node()) = 'supplied']">
                <xsl:apply-templates select="text()[1]/preceding-sibling::node()"/>
                <xsl:text>"</xsl:text>
                <xsl:apply-templates select="text()[1]"/>
                <xsl:apply-templates select="text()[1]/following-sibling::node()"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>... </xsl:text>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="following-sibling::explicit"/>
            <xsl:otherwise>
                <xsl:text>"</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!--<xsl:template match="explicit/node()[last()]">
        <xsl:value-of select="."/>
        <xsl:text>"</xsl:text>
    </xsl:template>-->
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
    <xsl:template match="title[not(supplied)]">
        <xsl:choose>
            <xsl:when test="parent::p or parent::note">
                <fo:inline font-style="italic">
                    <xsl:apply-templates select="child::node()"/>
                </fo:inline>
            </xsl:when>
            <xsl:when test="parent::q">
                <xsl:apply-templates select="child::node()"/>
            </xsl:when>
            <xsl:when test="parent::bibl">
                <fo:inline font-style="italic">
                    <xsl:apply-templates select="child::node()"/>
                </fo:inline>
            </xsl:when>
            <xsl:when test="parent::msItem/parent::msContents">
                <xsl:choose>
                    <xsl:when
                        test="//msDesc/msIdentifier/idno = 'MP-RKP-0000.026' or
                        'MP-RKP-0000.027' or 'MP-RKP-0000.028' or 'MP-RKP-0000.029' or
                        'MP-RKP-0000.030' or 'MP-RKP-0000.031'">
                        <xsl:text>"</xsl:text>
                        <xsl:apply-templates select="child::node()"/>
                        <xsl:text>"</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <fo:inline font-weight="bold">
                            <xsl:text>"</xsl:text>
                            <xsl:apply-templates select="child::node()"/>
                            <xsl:text>"</xsl:text>
                        </fo:inline>
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
    <xsl:template match="title[supplied]">
        <fo:inline>
            <xsl:choose>
                <xsl:when
                    test="name(child::node()[1]) = 'supplied' and
                name(child::node()[last()]) = 'supplied'">
                    <xsl:choose>
                        <xsl:when test="parent::msItem/parent::msContents">
                            <xsl:apply-templates select="child::node()"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="child::node()"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when
                    test="name(child::node()[1]) = 'supplied' and not(preceding-sibling::node())">
                    <xsl:apply-templates select="child::node()[1]"/>
                    <fo:inline>"</fo:inline>
                    <xsl:apply-templates select="child::node()[position()>1]"/>
                </xsl:when>
                <xsl:when test="name(child::node()[last()]) = 'supplied'"> "<xsl:apply-templates
                        select="child::node()[position()&lt;last()]"/>" <xsl:apply-templates
                        select="child::node()[last()]"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="child::node()"/>
                </xsl:otherwise>
            </xsl:choose>
        </fo:inline>
    </xsl:template>
    <xsl:template match="head/title">
        <xsl:variable name="head_title" select="."/>
        <xsl:variable name="msItem_title" select="//msDesc/msContents/msItem[1]/title[1]"/>
        <xsl:variable name="msItem_msItem_title"
            select="//msDesc/msContents/msItem[1]/msItem[1]/title[1]"/>
        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="12pt" line-height="1.5"
            color="black" space-after="20pt" space-before="20pt" page-break-after="avoid"
            page-break-inside="avoid" text-align="justify" text-indent="10">
            <xsl:if test="supplied">
                <xsl:choose>
                    <xsl:when
                        test="$head_title = $msItem_title and not(//msDesc/msContents/titlePage)"> </xsl:when>
                    <xsl:when
                        test="$head_title = $msItem_msItem_title and
                        not(//msDesc/msContents/titlePage)"> </xsl:when>
                    <xsl:when
                        test="//msDesc/head/title and //msDesc/msContents/msItem[msItem]/author">
                        <xsl:value-of select="//msDesc/msContents/msItem[msItem]/author"/>
                        <xsl:text>: </xsl:text>
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:when>
                    <xsl:when test="//msDesc/msContents/titlePage">
                        <xsl:apply-templates select="//msDesc/msContents/titlePage"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:if test="preceding-sibling::persName[@type='author']">
                            <xsl:apply-templates select="preceding-sibling::persName"/>
                            <xsl:text>: </xsl:text>
                        </xsl:if>
                        <xsl:choose>
                            <xsl:when
                                test="name(child::node()[1]) = 'supplied' and
                                name(child::node()[last()]) = 'supplied'">
                                <xsl:choose>
                                    <xsl:when test="//msDesc/msIdentifier/idno = 'MP-RKP-0000.002'">
                                        <xsl:text>[</xsl:text>
                                        <xsl:value-of select="substring-before(., '. Tomus')"/>
                                        <xsl:text>]</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="child::node()"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                            <xsl:when
                                test="name(child::node()[1]) = 'supplied' and not(preceding-sibling::node())">
                                <xsl:choose>
                                    <xsl:when test="//msDesc/msIdentifier/idno = 'MP-RKP-0000.014'">
                                        <xsl:text>[</xsl:text>
                                        <xsl:value-of select="substring-before(., ' Tomulus')"/>
                                        <xsl:text>]</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:apply-templates select="child::node()[1]"/>
                                        <fo:inline>"</fo:inline>
                                        <xsl:apply-templates select="child::node()[position()>1]"/>
                                        <fo:inline>"</fo:inline>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                            <xsl:when test="name(child::node()[last()]) = 'supplied'">
                                    "<xsl:apply-templates
                                    select="child::node()[position()&lt;last()]"/>"
                                    <xsl:apply-templates select="child::node()[last()]"/>
                            </xsl:when>
                            <xsl:when
                                test="name(child::node()[1]) != 'supplied' and name(child::node()[last()]) != 'supplied'"
                                > "<xsl:apply-templates select="child::node()"/>" </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
            <xsl:if test="not(supplied)">
                <xsl:if test="preceding-sibling::persName[@type='author']">
                    <xsl:apply-templates select="preceding-sibling::persName"/>
                    <xsl:text>: </xsl:text>
                </xsl:if>
                <xsl:choose>
                    <xsl:when
                        test="$head_title = $msItem_title and not(//msDesc/msContents/titlePage)"> </xsl:when>
                    <xsl:when
                        test="$head_title = $msItem_msItem_title and
                        not(//msDesc/msContents/titlePage)"> </xsl:when>
                    <xsl:when
                        test="//msDesc/head/title and //msDesc/msContents/msItem[msItem]/author">
                        <xsl:value-of select="//msDesc/msContents/msItem[msItem]/author"/>
                        <xsl:text>: </xsl:text>
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:when>
                    <xsl:when test="//msDesc/msContents/titlePage"> "<xsl:apply-templates
                            select="//msDesc/msContents/titlePage"/>" </xsl:when>
                    <xsl:otherwise> "<xsl:apply-templates select="child::node()"/>" </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </fo:block>
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
            <xsl:when test="abbr and expan">
                <fo:inline font-style="italic">
                    <xsl:apply-templates select="abbr"/>
                </fo:inline>
                <xsl:apply-templates select="expan"/>
            </xsl:when>
            <xsl:when test="sic and corr">
                <xsl:apply-templates select="sic"/>
                <fo:inline font-style="normal">
                    <xsl:text>(recte: </xsl:text>
                    <xsl:apply-templates select="corr"/>
                    <xsl:text>)</xsl:text>
                </fo:inline>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
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
                <xsl:apply-templates select="child::node()"/>
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
    <xsl:template match="msPart[physDesc/p/term[contains(., 'tisk')]]">
        <!--<fo:table space-after="10pt" space-before="10pt">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body font-family="TimesNewRoman" font-size="10pt" line-height="1"
                text-align="left">
                <fo:table-row border-width="70pt">
                    <fo:table-cell width="80pt">
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
                                <!-\-  <fo:block>
                                    <fo:inline font-weight="bold"><xsl:value-of select="author"/>: </fo:inline>
                                    <fo:inline font-style="italic"><xsl:value-of select="docTitle"/>. </fo:inline>
                                    <fo:inline>
                                    <xsl:value-of select="docImprint"/>
                                    </fo:inline>
                                    </fo:block> -\->
                            </xsl:when>
                            <xsl:otherwise>
                                <fo:block font-family="TimesNewRoman" font-size="10pt" line-height="1"
                                    text-align="left">
                                    <xsl:apply-templates select="head/title"/>
                                </fo:block>
                            </xsl:otherwise>
                        </xsl:choose>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
            </fo:table>-->
        <fo:block font-family="TimesNewRoman" font-size="10pt" line-height="1.5" text-align="left"
            space-after="10pt" space-before="10pt">
            <fo:inline>(<xsl:number format="1" count="msPart"/>) </fo:inline>
            <fo:inline><xsl:value-of select="head/title"/>. </fo:inline>
            <fo:inline><xsl:value-of select="head/origDate"/>. </fo:inline>
            <fo:inline>
                <xsl:apply-templates select="physDesc/objectDesc/supportDesc/extent"/>
            </fo:inline>
            <xsl:if test="physDesc/objectDesc/supportDesc/extent/note">
                <fo:block space-before="5pt"/>
                <fo:inline>
                    <xsl:value-of select="physDesc/objectDesc/supportDesc/extent/note"/>
                </fo:inline>
            </xsl:if>
            <xsl:if test="physDesc/objectDesc/supportDesc/condition">
                <fo:block space-before="5pt"/>
                <fo:inline>
                    <xsl:value-of select="physDesc/objectDesc/supportDesc/condition"/>
                </fo:inline>
            </xsl:if>
        </fo:block>
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
                <xsl:when
                    test="objectDesc/supportDesc/collation/preceding-sibling::foliation or
                    objectDesc/supportDesc/collation/preceding-sibling::condition">
                    <fo:inline font-style="italic"> - Skladba: </fo:inline>
                </xsl:when>
                <xsl:otherwise>
                    <fo:inline font-style="italic">Skladba: </fo:inline>
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
        <xsl:if test="objectDesc/supportDesc/support/watermark">
            <xsl:choose>
                <xsl:when
                    test="objectDesc/supportDesc/foliation or
                    objectDesc/supportDesc/condition or
                    objectDesc/supportDesc/collation or objectDesc/layoutDesc">
                    <fo:inline font-style="italic"> - Filigrán: </fo:inline>
                    <xsl:apply-templates select="objectDesc/supportDesc/support/watermark"/>
                </xsl:when>
                <xsl:otherwise>
                    <fo:inline font-style="italic">Filigrán: </fo:inline>
                    <xsl:apply-templates select="objectDesc/supportDesc/support/watermark"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="handDesc">
            <xsl:choose>
                <xsl:when
                    test="objectDesc/supportDesc/foliation or
                    objectDesc/supportDesc/condition or
                    objectDesc/supportDesc/collation or objectDesc/layoutDesc">
                    <fo:inline font-style="italic"> - Písmo: </fo:inline>
                    <xsl:apply-templates select="handDesc"/>
                </xsl:when>
                <xsl:otherwise>
                    <fo:inline font-style="italic">Písmo: </fo:inline>
                    <xsl:apply-templates select="handDesc"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="bindingDesc">
            <xsl:choose>
                <xsl:when
                    test="objectDesc/supportDesc/foliation or
                    objectDesc/supportDesc/condition or
                    objectDesc/supportDesc/collation or objectDesc/layoutDesc or handDesc">
                    <fo:inline font-style="italic"> - </fo:inline>
                    <xsl:apply-templates select="bindingDesc"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="bindingDesc"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="decoDesc">
            <xsl:choose>
                <xsl:when
                    test="objectDesc/supportDesc/foliation or
                    objectDesc/supportDesc/condition or
                    objectDesc/supportDesc/collation or objectDesc/layoutDesc or handDesc">
                    <fo:inline font-style="italic"> - Výzdoba: </fo:inline>
                    <xsl:apply-templates select="decoDesc"/>
                </xsl:when>
                <xsl:otherwise>
                    <fo:inline font-style="italic">Výzdoba: </fo:inline>
                    <xsl:apply-templates select="decoDesc"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="musicNotation">
            <fo:inline font-style="italic"> - </fo:inline>
            <xsl:apply-templates select="musicNotation"/>
        </xsl:if>
        <xsl:if test="additions">
            <xsl:text> - </xsl:text>
            <xsl:apply-templates select="additions"/>
        </xsl:if>
        <xsl:if test="//msDesc/history/origin">
            <fo:inline font-style="italic"> - Původ rukopisu: </fo:inline>
            <xsl:apply-templates select="//msDesc/history/origin"/>
        </xsl:if>
        <xsl:if test="//msDesc/history/p">
            <fo:inline font-style="italic"> - Původ rukopisu: </fo:inline>
            <xsl:apply-templates select="//msDesc/history/p"/>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="//msDesc/history/provenance[position() &gt; 1]">
                <fo:inline font-style="italic"> - Provenienční poznámky: </fo:inline>
                <xsl:apply-templates select="//msDesc/history/provenance"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="//msDesc/history/provenance">
                    <fo:inline font-style="italic"> - Provenienční poznámka: </fo:inline>
                    <xsl:apply-templates select="//msDesc/history/provenance"/>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:if test="accMat">
            <fo:inline> - </fo:inline>
            <xsl:apply-templates select="accMat"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="origin">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="watermark">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:apply-templates select="child::node()"/>
        <xsl:choose>
            <xsl:when test="contains($tecka, '.')">
                <xsl:text> </xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>. </xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="foliation">
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:apply-templates select="child::node()"/>
                <xsl:text>. </xsl:text>
            </xsl:when>
            <xsl:when test="p">
                <xsl:for-each select="p">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
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
        <xsl:if test="parent::binding">
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
            <xsl:when test="not(p)">
                <xsl:choose>
                    <xsl:when test="binding[not(p)]">
                        <xsl:for-each select="binding">
                            <xsl:apply-templates select="child::node()"/>
                            <xsl:choose>
                                <xsl:when test="contains($tecka, '.')">
                                    <xsl:text> </xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>. </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="binding/p">
                        <xsl:for-each select="binding/p">
                            <xsl:apply-templates select="."/>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="child::node()"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="p">
                <xsl:choose>
                    <xsl:when test="binding[not(p)]">
                        <xsl:for-each select="binding">
                            <xsl:apply-templates select="child::node()"/>
                            <xsl:choose>
                                <xsl:when test="contains($tecka, '.')">
                                    <xsl:text> </xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>. </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="binding/p">
                        <xsl:for-each select="binding/p">
                            <xsl:apply-templates select="."/>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:for-each select="p">
                            <xsl:apply-templates select="."/>
                        </xsl:for-each>
                    </xsl:otherwise>
                </xsl:choose>
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
    <xsl:template match="bibl">
        <!--<xsl:choose>
            <xsl:when test="title/preceding-sibling::text()">
                <fo:inline font-weight="bold">
                    <xsl:value-of select="title/preceding-sibling::text()"/>
                </fo:inline>
                <fo:inline>
                    <xsl:apply-templates select="child::node()[position()>1]"/>
                </fo:inline>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
            </xsl:choose>-->
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="bibliografie">
        <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1" space-after="5pt"
            space-before="5pt">
            <fo:block font-weight="bold" text-align="center">Literatura</fo:block>
            <fo:block> </fo:block>
            <xsl:for-each select="bibl">
                <fo:block margin-left="40pt">
                    <fo:block text-indent="-20pt">
                        <fo:inline>
                            <xsl:apply-templates select="child::node()"/>
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
        <fo:inline font-weight="bold">
            <xsl:apply-templates select="titlePart[1]"/>
        </fo:inline>
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
                    <xsl:when test="contains(., 'MP')">
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
    <xsl:template match="rubric[supplied]">
        <xsl:choose>
            <xsl:when
                test="text()[not(preceding-sibling::node())] and not(name(child::node()[last()]) = 'supplied')">
                <xsl:text>"</xsl:text>
                <xsl:apply-templates select="child::node()"/>
                <xsl:text>"</xsl:text>
            </xsl:when>
            <xsl:when
                test="name(child::node()[1]) = 'supplied' and
                name(child::node()[last()]) = 'supplied' and not(preceding-sibling::node())">
                <xsl:apply-templates select="child::node()"/>
            </xsl:when>
            <xsl:when test="name(child::node()[1]) = 'supplied' and not(preceding-sibling::node())">
                <xsl:apply-templates select="child::node()[1]"/>
                <fo:inline vertical-align="text-bottom">"</fo:inline>
                <xsl:apply-templates select="child::node()[position()>1]"/>
            </xsl:when>
            <xsl:when test="name(child::node()[last()]) = 'supplied'"> "<xsl:apply-templates
                    select="child::node()[position()&lt;last()]"/>" <xsl:apply-templates
                    select="child::node()[last()]"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="rubric[not(supplied)]">
        <xsl:if test=".[1]">
            <xsl:text>"</xsl:text>
        </xsl:if>
        <xsl:apply-templates select="child::node()"/>
        <xsl:if test=".[last()]">
            <xsl:text>"</xsl:text>
        </xsl:if>
    </xsl:template>
    <xsl:template match="msItem/locus">
        <xsl:choose>
            <xsl:when test="contains(., 'pp. ')">
                <xsl:value-of select="substring-after(., 'pp.')"/>
            </xsl:when>
            <xsl:when test="contains(., 'p. ')">
                <xsl:value-of select="substring-after(., 'p.')"/>
            </xsl:when>
            <xsl:when test="contains(., 'ff. ')">
                <xsl:value-of select="substring-after(., 'ff.')"/>
            </xsl:when>
            <xsl:when test="contains(., 'f. ')">
                <xsl:value-of select="substring-after(., 'f.')"/>
            </xsl:when>
            <xsl:when test="contains(., 'pag. ')">
                <xsl:value-of select="substring-after(., 'pag.')"/>
            </xsl:when>
            <xsl:when test="contains(., 'fol. ')">
                <xsl:value-of select="substring-after(., 'fol.')"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="lb">
        <xsl:text>/</xsl:text>
    </xsl:template>
    <xsl:template match="date[@type='chronogram']">
        <xsl:apply-templates select="child::node()"/>
        <xsl:text> (chron. </xsl:text>
        <xsl:value-of select="@when"/>
        <xsl:text>)</xsl:text>
    </xsl:template>
    <xsl:template match="hi[@rend='sup']">
        <fo:inline font-size="10pt" vertical-align="super">
            <xsl:value-of select="."/>
        </fo:inline>
    </xsl:template>
    <xsl:template match="listBibl[parent::note/parent::summary]">
        <xsl:text>Lit.: </xsl:text>
        <xsl:for-each select="bibl">
            <xsl:sort select="node()[1]" order="ascending" data-type="text"/>
            <xsl:apply-templates select="."/>
            <xsl:choose>
                <xsl:when test="position() != last()">
                    <xsl:text>; </xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>.</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="additions">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="add">
        <xsl:choose>
            <xsl:when test="@place='above'">
                <fo:inline vertical-align="super">
                    <xsl:apply-templates select="child::node()"/>
                </fo:inline>
            </xsl:when>
            <xsl:when test="@place='inline'">
                <fo:inline>
                    <xsl:apply-templates select="child::node()"/>
                </fo:inline>
                <fo:inline font-style="normal"> (dopsáno později) </fo:inline>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="list">
        <xsl:for-each select="item[position() != last()]">
            <xsl:apply-templates select="child::node()"/>
            <xsl:text>; </xsl:text>
        </xsl:for-each>
        <xsl:for-each select="item[position() = last()]">
            <xsl:apply-templates select="child::node()"/>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="musicNotation">
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
    <xsl:template match="sic[not(parent::choice)]">
        <xsl:apply-templates select="child::node()"/>
        <xsl:text>(!)</xsl:text>
    </xsl:template>
    <xsl:template match="del">
        <xsl:choose>
            <xsl:when test="@rend='overstrike'">
                <fo:inline text-decoration="line-through">
                    <xsl:apply-templates select="child::node()"/>
                </fo:inline>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="author[parent::bibl and not(parent::bibl/title)]">
        <fo:inline font-style="italic">
            <xsl:apply-templates select="child::node()"/>
        </fo:inline>
    </xsl:template>
    <xsl:template match="rejstrik">
        <xsl:if test="osoba">
            <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="12pt"
                line-height="1.5" space-after="10pt" space-before="10pt" text-align="center">Jmenný
                a věcný rejstřík</fo:block>
            <xsl:apply-templates select="osoba"/>
        </xsl:if>
        <xsl:if test="datum">
            <fo:block font-family="TimesNewRoman" font-size="12pt" font-weight="bold"
                text-align="center" line-height="1.5" space-after="10pt" space-before="10pt">
                <xsl:text>Datované rukopisy</xsl:text>
            </fo:block>
            <xsl:for-each select="datum/origDate[string-length(.) = 4]">
                <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                    text-align="left" space-after="10pt" space-before="10pt">
                    <xsl:value-of select="."/>
                    <xsl:text> - </xsl:text>
                    <xsl:value-of select="following-sibling::idno"/>
                </fo:block>
            </xsl:for-each>
            <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="12pt"
                line-height="1.5" space-after="10pt" space-before="10pt" text-align="center"
                >Chronologický rejstřík</fo:block>
            <xsl:for-each-group select="datum[string-length(origDate) != 4]" group-by="origDate">
                <xsl:sort select="current-grouping-key()"/>
                <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                    text-align="left" space-after="10pt" space-before="10pt">
                    <xsl:value-of select="current-grouping-key()"/>
                    <xsl:text> - </xsl:text>
                    <xsl:for-each select="current-group()">
                        <xsl:sort select="number(substring-after(idno, 'D '))"/>
                        <xsl:value-of select="idno"/>
                        <xsl:text>, </xsl:text>
                    </xsl:for-each>
                </fo:block>
            </xsl:for-each-group>
        </xsl:if>
        <xsl:if test="jazyk">
            <fo:block font-family="TimesNewRoman" font-size="12pt" font-weight="bold"
                text-align="center" line-height="1.5" space-after="10pt" space-before="10pt">
                <xsl:text>Jazykový rejstřík</xsl:text>
            </fo:block>
            <xsl:for-each-group select="jazyk" group-by="textLang/@mainLang">
                <xsl:sort select="current-grouping-key()"/>
                <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                    text-align="left" space-after="10pt" space-before="10pt">
                    <xsl:choose>
                        <xsl:when test="current-grouping-key()='cze'">
                            <xsl:text>české</xsl:text>
                        </xsl:when>
                        <xsl:when test="current-grouping-key()='fre'">
                            <xsl:text>francouzské</xsl:text>
                        </xsl:when>
                        <xsl:when test="current-grouping-key()='ger'">
                            <xsl:text>německé</xsl:text>
                        </xsl:when>
                        <xsl:when test="current-grouping-key()='lat'">
                            <xsl:text>latinské</xsl:text>
                        </xsl:when>
                        <xsl:when test="current-grouping-key()='ita'">
                            <xsl:text>italské</xsl:text>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:text> - </xsl:text>
                    <xsl:for-each select="current-group()">
                        <xsl:sort select="number(substring-after(idno, 'D '))"/>
                        <xsl:value-of select="idno"/>
                        <xsl:text>, </xsl:text>
                    </xsl:for-each>
                </fo:block>
            </xsl:for-each-group>
            <xsl:for-each-group select="jazyk[textLang/@otherLangs]" group-by="textLang/@otherLangs">
                <xsl:sort select="current-grouping-key()"/>
                <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                    text-align="left" space-after="10pt" space-before="10pt">
                    <xsl:value-of select="current-grouping-key()"/>
                    <xsl:text> - </xsl:text>
                    <xsl:for-each select="current-group()">
                        <xsl:sort select="number(substring-after(idno, 'D '))"/>
                        <xsl:text> (část) </xsl:text>
                        <xsl:value-of select="idno"/>
                        <xsl:text>, </xsl:text>
                    </xsl:for-each>
                </fo:block>
            </xsl:for-each-group>
        </xsl:if>
        <xsl:if test="prov">
            <fo:block font-family="TimesNewRoman" font-size="12pt" font-weight="bold"
                text-align="center" line-height="1.5" space-after="10pt" space-before="10pt">
                <xsl:text>Provenienční rejstřík</xsl:text>
            </fo:block>
            <xsl:for-each-group select="prov" group-by="persName">
                <xsl:sort select="current-grouping-key()"/>
                <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                    text-align="left" space-after="10pt" space-before="10pt">
                    <xsl:value-of select="current-grouping-key()"/>
                    <xsl:text> - </xsl:text>
                    <xsl:for-each select="current-group()">
                        <xsl:sort select="number(substring-after(idno, 'D '))"/>
                        <xsl:value-of select="idno"/>
                        <xsl:text>, </xsl:text>
                    </xsl:for-each>
                </fo:block>
            </xsl:for-each-group>
        </xsl:if>
        <xsl:if test="notace">
            <fo:block font-family="TimesNewRoman" font-size="12pt" font-weight="bold"
                text-align="center" line-height="1.5" space-after="10pt" space-before="10pt">
                <xsl:text>Notované rukopisy</xsl:text>
            </fo:block>
            <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5"
                text-align="left" space-after="10pt" space-before="10pt">
                <xsl:for-each select="notace/idno">
                    <xsl:sort select="number(substring-after(., 'D '))"/>
                    <xsl:value-of select="."/>
                    <xsl:choose>
                        <xsl:when test="position() = last()"/>
                        <xsl:otherwise>
                            <xsl:text>, </xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    
                </xsl:for-each>
            </fo:block>
        </xsl:if>
    </xsl:template>
    <xsl:template match="osoba">
        
           
                <fo:block font-family="TimesNewRoman" font-size="12pt" line-height="1.5" text-align="left"
                    space-after="10pt" space-before="10pt">
                    <xsl:apply-templates select="person">
                        <xsl:sort select="persName[1]/surname[1] or persName[1]/forename[1]"/>
                    </xsl:apply-templates>
            <xsl:text> - </xsl:text>
            
             
                    <xsl:value-of select="idno"/>
                    
                </fo:block>
    </xsl:template>
    <xsl:template match="person">
        <xsl:apply-templates select="persName"/>
        <xsl:if test="occupation">
            <xsl:text>, </xsl:text>
            <xsl:choose>
                <xsl:when test="occupation='františkán'">
                    <xsl:text>OFM</xsl:text>
                </xsl:when>
                <xsl:when test="occupation='minorita'">
                    <xsl:text>OFMConv.</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="occupation"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="birth[date] or death[date]">
                <xsl:text> </xsl:text>
                <xsl:choose>
                    <xsl:when test="not(birth)">
                        <xsl:text> (zemř. </xsl:text>
                        <xsl:choose>
                            <xsl:when test="death/date/@when">
                                <xsl:value-of select="substring-before(death/date/@when, '-')"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="death/date"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>)</xsl:text>
                    </xsl:when>
                    <xsl:when test="not(death)">
                        <xsl:text> (nar. </xsl:text>
                        <xsl:choose>
                            <xsl:when test="birth/date/@when">
                                <xsl:value-of select="substring-before(birth/date/@when, '-')"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="birth/date"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>)</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text> (</xsl:text>
                        <xsl:choose>
                            <xsl:when test="birth/date/@when">
                                <xsl:value-of select="substring-before(birth/date/@when, '-')"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="birth/date"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>-</xsl:text>
                        <xsl:choose>
                            <xsl:when test="death/date/@when">
                                <xsl:value-of select="substring-before(death/date/@when, '-')"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="death/date"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>)</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:if test="floruit">
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="floruit"/>
                    <xsl:text>)</xsl:text>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="persName[parent::person]">
        <xsl:choose>
            <xsl:when test="not(surname) and forename">
                <xsl:value-of select="forename"/>
                <xsl:if test="genName">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="genName"/>
                </xsl:if>
                <xsl:if test="roleName">
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="roleName"/>
                </xsl:if>
            </xsl:when>
            <xsl:when test="surname">
                <xsl:value-of select="surname"/>
                <xsl:text>, </xsl:text>
                <xsl:for-each select="forename[position() != last()]">
                    <xsl:value-of select="."/>
                    <xsl:text> </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="forename[position() = last()]">
                    <xsl:value-of select="."/>
                </xsl:for-each>
                <xsl:if test="genName">
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="genName"/>
                </xsl:if>
                <xsl:if test="roleName">
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="roleName"/>
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
