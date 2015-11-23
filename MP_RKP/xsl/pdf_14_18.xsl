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
                <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select="document('MP-RKP-0000.001.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.002.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.003.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.004.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.005.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.006.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.007.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.008.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.009.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.010.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.011.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.012.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.013.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.014.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.015.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.016.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.017.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.018.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.019.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.020.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.021.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.022.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.023.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.024.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.025.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.026.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.027.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.028.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.029.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.030.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.031.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.032.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.033.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.034.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.035.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.036.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.037.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.038.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.039.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.040.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.041.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.042.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.043.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.044.tei.xml')//msDesc"/>
                    <xsl:apply-templates select="document('MP-RKP-0000.045.tei.xml')//msDesc"/>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <xsl:template match="msDesc">
        <xsl:choose>
            <xsl:when
                test="msIdentifier/altIdentifier/idno = 'MP 14' or 'MP 15' or 'MP 16' or 'MP
                17' or 'MP 18'">
                <xsl:if test="msIdentifier/altIdentifier/idno = 'MP 14'">
                    <xsl:apply-templates select="msIdentifier"/>
                    <fo:block font-family="TimesNewRoman" font-size="14" line-height="18pt"
                        text-align="justify">
                        <xsl:apply-templates select="physDesc"/>
                    </fo:block>
                    <xsl:if test="head/title[@type='collection']">
                        <xsl:apply-templates select="head/title[@type='collection']"/>
                    </xsl:if>
                </xsl:if>
                <xsl:if test="msContents/msItem[//*/text()]">
                    <xsl:apply-templates select="msContents/msItem"/>
                </xsl:if>
                <xsl:if test="not(msContents/msItem[//*/text()])">
                    <fo:table space-after="10pt" space-before="10pt">
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-body font-family="TimesNewRoman" font-size="18pt"
                            line-height="25pt" text-align="left">
                            <fo:table-row border-width="70pt">
                                <fo:table-cell width="150pt">
                                    <fo:block>
                                        <xsl:choose>
                                            <xsl:when
                                                test="msIdentifier/altIdentifier/idno = 'MP 14'">
                                                <xsl:text>T. I.</xsl:text>
                                            </xsl:when>
                                            <xsl:when
                                                test="msIdentifier/altIdentifier/idno = 'MP 15'">
                                                <xsl:text>T. II.</xsl:text>
                                            </xsl:when>
                                            <xsl:when
                                                test="msIdentifier/altIdentifier/idno = 'MP 16'">
                                                <xsl:text>T. III.</xsl:text>
                                            </xsl:when>
                                            <xsl:when
                                                test="msIdentifier/altIdentifier/idno = 'MP 17'">
                                                <xsl:text>T. IV.</xsl:text>
                                            </xsl:when>
                                            <xsl:when
                                                test="msIdentifier/altIdentifier/idno = 'MP 18'">
                                                <xsl:text>T. V.</xsl:text>
                                            </xsl:when>
                                        </xsl:choose>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>"<xsl:apply-templates select="head/title[1]/text()"/>"
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell width="150pt">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>
                                        <xsl:apply-templates
                                            select="msContents/summary/note/p[position() >
                                        1]"
                                        />
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block font-family="TimesNewRoman" font-size="14" line-height="18pt"
                        text-align="justify" margin-left="150pt">
                        <xsl:apply-templates
                            select="document('MP-RKP-0000.014.tei.xml')//msDesc/msContents/summary/note/p[position() =
                            1]"
                        />
                    </fo:block>
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="msIdentifier"/>
                <fo:block font-family="TimesNewRoman" font-size="14" line-height="18pt"
                    text-align="justify">
                    <xsl:apply-templates select="physDesc"/>
                </fo:block>
                <xsl:if test="head/title">
                    <xsl:apply-templates select="head/title"/>
                </xsl:if>
                <xsl:if test="msContents/msItem[//*/text()]">
                    <xsl:apply-templates select="msContents/msItem"/>
                </xsl:if>
                <xsl:if test="msContents/summary">
                    <fo:block font-family="TimesNewRoman" font-size="14" line-height="18pt"
                        text-align="justify" space-after="10pt" space-before="10pt">
                        <xsl:apply-templates select="msContents/summary"/>
                    </fo:block>
                </xsl:if>
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
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="msIdentifier">
        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="18pt" line-height="25pt"
            color="black" space-after="25pt" space-before="25pt" page-break-after="avoid"
            text-align-last="right">
            <xsl:choose>
                <xsl:when test="altIdentifier/idno = 'MP 14'">
                    <xsl:value-of
                        select="altIdentifier[contains(note,
                       'Dokoupila')]/idno"/>
                    <xsl:text> - </xsl:text>
                    <xsl:value-of
                        select="substring-after(document('MP-RKP-0000.018.tei.xml')//msDesc/msIdentifier/altIdentifier[contains(note,
                       'Dokoupila')]/idno, 'MP ')"
                    />
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="altIdentifier[contains(note, 'Dokoupila')]/idno"/>
                </xsl:otherwise>
            </xsl:choose>
        </fo:block>
        <fo:block font-family="TimesNewRoman" font-size="14pt" line-height="25pt" color="black"
            text-align="justify" page-break-after="avoid" space-after="20pt">
            <xsl:choose>
                <xsl:when test="altIdentifier/idno = 'MP 14'">
                    <xsl:choose>
                        <xsl:when test="//msDesc/head/origDate/@notBefore">
                            <xsl:value-of select="//msDesc/head/origDate/@notBefore"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="//msDesc/head/origDate"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:text> - </xsl:text>
                    <xsl:choose>
                        <xsl:when
                            test="document('MP-RKP-0000.018.tei.xml')//msDesc/head/origDate/@notAfter">
                            <xsl:value-of
                                select="document('MP-RKP-0000.018.tei.xml')//msDesc/head/origDate/@notAfter"
                            />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of
                                select="document('MP-RKP-0000.018.tei.xml')//msDesc/head/origDate"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="//msDesc/head/origPlace = 'Česko'">
                            <fo:leader/>
                        </xsl:when>
                        <xsl:when test="//msDesc/head/origPlace = 'Česko?'">
                            <fo:leader/>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:leader/>
                            <fo:inline>
                                <xsl:for-each select="//msDesc/head/origPlace">
                                    <xsl:value-of select="//msDesc/head/origPlace"/>
                                </xsl:for-each>
                            </fo:inline>
                        </xsl:otherwise>
                    </xsl:choose>
                    <fo:leader/>
                    <xsl:text>5 sv.</xsl:text>
                    <fo:leader/>
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
                                    select="//msDesc/physDesc/objectDesc/supportDesc/support/p/dimensions"
                                />
                            </xsl:otherwise>
                        </xsl:choose>
                    </fo:inline>
                    <fo:leader/>
                    <xsl:choose>
                        <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@contemporary='true']">
                            <fo:inline>vaz. soudobá</fo:inline>
                        </xsl:when>
                        <xsl:when
                            test="//msDesc/physDesc/bindingDesc/binding[@contemporary='false']">
                            <fo:inline>vaz. mladší</fo:inline>
                        </xsl:when>
                    </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
                    <fo:inline>
                        <xsl:choose>
                            <xsl:when
                                test="//msDesc/head/origDate[@notAfter='1550' and @notBefore='1501']">
                                <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super"
                                        >1</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[@notAfter='1600' and @notBefore='1551']">
                                <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super"
                                        >2</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[@notAfter='1650' and @notBefore='1601']">
                                <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                        >1</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[@notAfter='1700' and @notBefore='1651']">
                                <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super"
                                        >2</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[@notAfter='1750' and @notBefore='1701']">
                                <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                        >1</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[@notAfter='1750' and @notBefore='1700']">
                                <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                        >1</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[@notAfter='1800' and @notBefore='1751']">
                                <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                        >2</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[@notAfter='1800' and @notBefore='1750']">
                                <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super"
                                        >2</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[@notAfter='1850' and @notBefore='1801']">
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
                                <fo:inline>XVI<fo:inline vertical-align="super"
                                        >ex.</fo:inline>/XVII<fo:inline vertical-align="super"
                                        >in.</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when test="//msDesc/head/origDate[contains(., 'Přelom 17. a 18.')]">
                                <fo:inline>XVII<fo:inline vertical-align="super"
                                        >ex.</fo:inline>/XVIII<fo:inline vertical-align="super"
                                        >in.</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when test="//msDesc/head/origDate[contains(., 'Přelom 18. a 19.')]">
                                <fo:inline>XVIII<fo:inline vertical-align="super"
                                        >ex.</fo:inline>/XIX<fo:inline vertical-align="super"
                                        >in.</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[@notAfter='1820' and @notBefore='1780']">
                                <fo:inline>XVIII<fo:inline vertical-align="super"
                                        >ex.</fo:inline>/XIX<fo:inline vertical-align="super"
                                        >in.</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[contains(., '2. polovina 18. století')]">
                                <fo:inline>XVIII<fo:inline vertical-align="super"
                                    >2</fo:inline></fo:inline>
                            </xsl:when>
                            <xsl:when
                                test="//msDesc/head/origDate[contains(., '1. polovina 18. století')]">
                                <fo:inline>XVIII<fo:inline vertical-align="super"
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
                                <xsl:value-of
                                    select="substring-after(//msDesc/head/origDate, 'po ')"/>
                            </xsl:when>
                            <xsl:when test="contains(//msDesc/head/origDate, 'Po')">
                                <xsl:text>post </xsl:text>
                                <xsl:value-of
                                    select="substring-after(//msDesc/head/origDate, 'Po ')"/>
                            </xsl:when>
                            <xsl:when test="contains(//msDesc/head/origDate, 'Před')">
                                <xsl:text>ante </xsl:text>
                                <xsl:value-of
                                    select="substring-after(//msDesc/head/origDate, 'Před ')"/>
                            </xsl:when>
                            <xsl:when test="contains(//msDesc/head/origDate, 'Ne po roce')">
                                <xsl:text>ante </xsl:text>
                                <xsl:value-of
                                    select="substring-after(//msDesc/head/origDate, 'Ne po roce ')"
                                />
                            </xsl:when>
                            <xsl:when test="contains(//msDesc/head/origDate, 'ca')">
                                <xsl:text>c. </xsl:text>
                                <xsl:value-of
                                    select="substring-after(//msDesc/head/origDate, 'ca ')"/>
                            </xsl:when>
                            <xsl:when test="contains(//msDesc/head/origDate, 'Kolem roku')">
                                <xsl:text>c. </xsl:text>
                                <xsl:value-of
                                    select="substring-after(//msDesc/head/origDate, 'Kolem roku ')"
                                />
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of
                                    select="concat(translate(substring(//msDesc/head/origDate, 1,
                                    1), $uc, $lc), substring(//msDesc/head/origDate, 2))"
                                />
                            </xsl:otherwise>
                        </xsl:choose>
                    </fo:inline>
                    <xsl:choose>
                        <xsl:when test="//msDesc/head/origPlace = 'Česko'">
                            <fo:leader/>
                        </xsl:when>
                        <xsl:when test="//msDesc/head/origPlace = 'Česko?'">
                            <fo:leader/>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:leader/>
                            <fo:inline>
                                <xsl:for-each select="//msDesc/head/origPlace">
                                    <xsl:value-of select="//msDesc/head/origPlace"/>
                                </xsl:for-each>
                            </fo:inline>
                        </xsl:otherwise>
                    </xsl:choose>
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
                        <xsl:value-of select="//msDesc/physDesc/objectDesc/supportDesc/extent"/>
                    </fo:inline>
                    <fo:leader/>
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
                                    select="//msDesc/physDesc/objectDesc/supportDesc/support/p/dimensions"
                                />
                            </xsl:otherwise>
                        </xsl:choose>
                    </fo:inline>
                    <fo:leader/>
                    <xsl:choose>
                        <xsl:when test="//msDesc/physDesc/bindingDesc/binding[@contemporary='true']">
                            <fo:inline>vaz. soudobá</fo:inline>
                        </xsl:when>
                        <xsl:when
                            test="//msDesc/physDesc/bindingDesc/binding[@contemporary='false']">
                            <fo:inline>vaz. mladší</fo:inline>
                        </xsl:when>
                    </xsl:choose>
                </xsl:otherwise>
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
                        <xsl:choose>
                            <xsl:when test="$pocet1 >= 1">
                                <fo:table-cell width="150pt">
                                    <fo:block>(<xsl:number format="a"/>) </fo:block>
                                </fo:table-cell>
                            </xsl:when>
                            <xsl:when test="$pocet2 >= 1">
                                <fo:table-cell width="150pt">
                                    <fo:block> (<xsl:number format="a"/>) </fo:block>
                                </fo:table-cell>
                            </xsl:when>
                            <xsl:otherwise>
                                <fo:table-cell width="150pt">
                                    <fo:block> </fo:block>
                                </fo:table-cell>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:if>
                    <xsl:if test="locusGrp">
                        <fo:table-cell width="150pt">
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
            <fo:block font-family="TimesNewRoman" font-size="14" line-height="18pt"
                text-align="justify" margin-left="150pt">
                <xsl:apply-templates select="note"/>
            </fo:block>
        </xsl:if>
        <xsl:apply-templates select="msItem"/>
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
                    <xsl:if test="not(locus)">
                        <fo:table-cell width="150pt">
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
                <xsl:otherwise> [<xsl:value-of select="."/>] </xsl:otherwise>
            </xsl:choose>
        </fo:inline>
    </xsl:template>
    <xsl:template match="incipit">
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
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
                <xsl:text> ..."</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="incipit/node()[last()]">
        <xsl:value-of select="."/>
        <fo:inline> ..."</fo:inline>
    </xsl:template>
    <xsl:template match="explicit">
        <xsl:choose>
            <xsl:when test="text()[not(preceding-sibling::node())]">
                <fo:inline vertical-align="text-bottom">"... </fo:inline>
                <xsl:apply-templates select="child::node()"/>
            </xsl:when>
            <xsl:when test="text()[1 and name(preceding-sibling::node()) = 'supplied']">
                <xsl:apply-templates select="text()[1]/preceding-sibling::node()"/>
                <fo:inline vertical-align="text-bottom">"</fo:inline>
                <xsl:apply-templates select="text()[1]"/>
                <xsl:apply-templates select="text()[1]/following-sibling::node()"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>"... </xsl:text>
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
            <xsl:when test="parent::bibl or parent::p or parent::note">
                <fo:inline font-style="italic">
                    <xsl:apply-templates select="child::node()"/>
                </fo:inline>
            </xsl:when>
            <xsl:when test="parent::q">
                <xsl:apply-templates select="child::node()"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>"</xsl:text>
                <xsl:apply-templates select="child::node()"/>
                <xsl:text>"</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="title[supplied]">
        <fo:block>
            <xsl:choose>
                <xsl:when
                    test="name(child::node()[1]) = 'supplied' and
                name(child::node()[last()]) = 'supplied'">
                    <xsl:apply-templates select="child::node()"/>
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
        </fo:block>
    </xsl:template>
    <xsl:template match="head/title">
        <xsl:variable name="head_title" select="."/>
        <xsl:variable name="msItem_title" select="//msDesc/msContents/msItem[1]/title[1]"/>
        <xsl:variable name="msItem_msItem_title"
            select="//msDesc/msContents/msItem[1]/msItem[1]/title[1]"/>
        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="18pt" line-height="25pt"
            color="black" space-after="20pt" space-before="20pt" margin-left="25mm"
            margin-right="25mm" page-break-after="avoid" page-break-inside="avoid"
            text-align="justify" text-align-last="center">
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
                        <xsl:choose>
                            <xsl:when
                                test="name(child::node()[1]) = 'supplied' and
                                name(child::node()[last()]) = 'supplied'">
                                <xsl:apply-templates select="child::node()"/>
                            </xsl:when>
                            <xsl:when
                                test="name(child::node()[1]) = 'supplied' and not(preceding-sibling::node())">
                                <xsl:apply-templates select="child::node()[1]"/>
                                <fo:inline>"</fo:inline>
                                <xsl:apply-templates select="child::node()[position()>1]"/>
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
    <xsl:template match="msPart">
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
                                        <xsl:value-of
                                            select="physDesc/objectDesc/supportDesc/extent/child::text()"
                                        />
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
                <xsl:when test="objectDesc/supportDesc/collation/preceding-sibling::foliation">
                    <fo:inline font-style="italic"> — Skladba: </fo:inline>
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
        <xsl:if test="handDesc">
            <fo:inline font-style="italic">— Písmo: </fo:inline>
            <xsl:apply-templates select="handDesc"/>
        </xsl:if>
        <xsl:if test="bindingDesc">
            <xsl:choose>
                <xsl:when test="preceding-sibling::objectDesc/supportDesc/foliation">
                    <fo:inline font-style="italic">— Vazba: </fo:inline>
                    <xsl:apply-templates select="bindingDesc"/>
                </xsl:when>
                <xsl:otherwise>
                    <fo:inline font-style="italic">Vazba: </fo:inline>
                    <xsl:apply-templates select="bindingDesc"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="decoDesc">
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
        <xsl:if test="condition">
            <xsl:apply-templates select="condition" mode="bindingDesc"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="bindingDesc/condition" mode="bindingDesc">
        <xsl:choose>
            <xsl:when test="not(p)">
                <xsl:apply-templates select="child::node()"/>
                <xsl:text>.</xsl:text>
            </xsl:when>
            <xsl:when test="p">
                <xsl:for-each select="p">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
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
        <fo:block/>
    </xsl:template>
    <xsl:template match="rubric[not(supplied)]">
        <xsl:text>"</xsl:text>
        <xsl:apply-templates select="child::node()"/>
        <xsl:text>"</xsl:text>
        <fo:block/>
    </xsl:template>
</xsl:stylesheet>
