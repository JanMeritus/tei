<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:variable name="idno" select="replace(//msDesc/msIdentifier/idno, ' ', '')"/>
    <xsl:variable name="soubor" select="concat($idno,
        '.html')"/>
    <xsl:variable name="digital" select="concat($idno, '.digital',
        '.html')"/>
    <xsl:variable name="frame_a" select="concat($idno,
        '.img', '.html')"/>
    <xsl:variable name="frame_b" select="concat($idno, '.gallery', '.html')"/>
    <xsl:template match="/">
        <xsl:variable name="base_url" select="//facsimile/@xml:base"/>
        <xsl:result-document href="{$frame_a}">
            <html>
                <head>
                    
                    <title>
                        <xsl:value-of select="//msDesc/msIdentifier/idno"/>
                    </title>
                </head>
                <body>
                    <xsl:for-each select="//surface[1][graphic/@url[contains(., 'low')]]">
                        <xsl:variable name="low" select="graphic/@url[contains(., 'low')]"/>
                        <img src="{concat($base_url, $low)}" alt="{@xml:id}"/>
                    </xsl:for-each>
                    <xsl:for-each select="//surface[1][graphic/@url[contains(., 'EX/')]]">
                        <img src="{concat($base_url, 'N3/',
                            replace(substring-after(graphic/@url, 'EX/'), 'EX', 'N3'))}"
                            alt="{@xml:id}"/>
                    </xsl:for-each>
                    <xsl:for-each
                        select="//surface[1][graphic/@url[contains(., 'ImageProperties.xml')]]">
                        <img src="{concat($base_url, substring-before(graphic/@url,
                            '/ImageProperties.xml'), '.jp2')}"
                            alt="{@xml:id}"/>
                    </xsl:for-each>
                </body>
            </html>
        </xsl:result-document>
        <xsl:choose>
            <xsl:when test="//facsimile/surface/graphic/@url">
                <xsl:result-document href="{$digital}">
                    <html>
                        <head>
                            <title>
                                <xsl:value-of select="//msDesc/msIdentifier/idno"/>
                            </title>
                        </head>
                        <frameset rows="*,20%">
                            <frame name="image" src="{$frame_a}"/>
                            <frame name="gallery" src="{$frame_b}"/>
                        </frameset>
                    </html>
                </xsl:result-document>
            </xsl:when>
        </xsl:choose>
        <xsl:result-document href="{$soubor}">
            <html>
                <head>
                    <link type="text/css" rel="stylesheet" href="enrich2html.css"/>
                    <title>
                        <xsl:value-of select="TEI/teiHeader/fileDesc/sourceDesc/msDesc/head/title"/>
                        <xsl:value-of
                            select="TEI/teiHeader/fileDesc/sourceDesc/msDesc/head/origDate"/>
                    </title>
                </head>
                <body bgcolor="white">
                    <div class="header">
                        <h6>Moravská zemská knihovna - Oddělení rukopisů a starých tisků</h6>
                    </div>
                    <h2>
                        <xsl:apply-templates
                            select="TEI/teiHeader/fileDesc/sourceDesc/msDesc/head/title[child::node()]"
                        />
                    </h2>
                    <xsl:if test="//facsimile/surface/graphic/@url">
                        <div CLASS="msDesc">
                            <b>
                                <a href="{$digital}" target="_blank">Digitální kopie dokumentu</a>
                            </b>
                        </div>
                    </xsl:if>
                    <xsl:apply-templates select="TEI/teiHeader/fileDesc/sourceDesc/msDesc"/>
                </body>
            </html>
        </xsl:result-document>
        <xsl:result-document href="{$frame_b}">
            <xsl:variable name="base_url" select="//facsimile/@xml:base"/>
            <html>
                <head>
                    <link type="text/css" rel="stylesheet" href="enrich2html.css"/>
                    <title>
                        <xsl:value-of select="//msDesc/msIdentifier/idno"/>
                    </title>
                </head>
                <body bgcolor="white">
                    <div class="gallery">
                        <xsl:apply-templates select="//facsimile"/>
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="msDesc">
        <div CLASS="msDesc">
            <xsl:apply-templates select="msIdentifier"/>
            <xsl:if test="head/title">
                <xsl:apply-templates select="head"/>
            </xsl:if>
            <xsl:apply-templates select="msContents"/>
            <br/>
            <xsl:apply-templates select="physDesc"/>
            <xsl:apply-templates select="history"/>
            <xsl:if test="msPart">
                <h2>Konvolut obsahuje následující přívazky:</h2>
                <xsl:apply-templates select="msPart"/>
            </xsl:if>
            <br/>
            <h4>Další informace</h4>
            <xsl:apply-templates select="additional/listBibl"/>
            <xsl:apply-templates select="//sourceDesc/listBibl"/>
            <xsl:apply-templates select="additional"/>
        </div>
    </xsl:template>
    <xsl:template match="head">
        <div CLASS="head">
            <h4>Záhlaví</h4>
            <table>
                <xsl:if test="title">
                    <tr>
                        <th>Titul</th>
                        <td>
                            <xsl:apply-templates select="title"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="bibl/author">
                    <tr>
                        <th>Autor</th>
                        <td>
                            <xsl:value-of select="bibl/author"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="persName[@type='author']">
                    <tr>
                        <th>Autor</th>
                        <td>
                            <xsl:value-of select="persName[@type='author']"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="title/persName[@type='author']">
                    <tr>
                        <th>Autor</th>
                        <td>
                            <xsl:value-of select="title/persName[@type='author']"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="origDate">
                    <tr>
                        <th>Datum vzniku</th>
                        <td>
                            <xsl:value-of select="origDate"/>
                            <xsl:text> </xsl:text>
                            <xsl:choose>
                                <xsl:when test="origDate/@notAfter and origDate/@notBefore"
                                        >(<xsl:value-of select="origDate/@notBefore"/>-<xsl:value-of
                                        select="origDate/@notAfter"/>)</xsl:when>
                                <xsl:otherwise>
                                    <xsl:if test="origDate/@notAfter">(ante quam <xsl:value-of
                                            select="origDate/@notAfter"/>)</xsl:if>
                                    <xsl:if test="origDate/@notBefore">(post quam <xsl:value-of
                                            select="origDate/@notBefore"/>)</xsl:if>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="//msDesc/msContents/textLang">
                    <tr>
                        <th>Jazyk originálu</th>
                        <td>
                            <xsl:value-of select="//msDesc/msContents/textLang"/>
                            <xsl:text> </xsl:text>
                            <xsl:if test="//msDesc/msContents/textLang/@mainLang"> (<xsl:value-of
                                    select="//msDesc/msContents/textLang/@mainLang"/>) </xsl:if>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="origPlace">
                    <tr>
                        <th>Místo vzniku</th>
                        <td>
                            <xsl:value-of select="origPlace"/>
                        </td>
                    </tr>
                </xsl:if>
            </table>
            <!--<xsl:if test="origPlace"><xsl:value-of select="origPlace"/><xsl:text>, </xsl:text></xsl:if>
    <xsl:if test="textLang"><xsl:value-of select="textLang"/><xsl:text>.</xsl:text></xsl:if>-->
        </div>
    </xsl:template>
    <xsl:template match="msIdentifier">
        <div CLASS="msIdentifier">
            <h4>Současné uložení dokumentu</h4>
            <table>
                <xsl:if test="country">
                    <tr>
                        <th>Země</th>
                        <td>
                            <xsl:value-of select="country"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="region">
                    <tr>
                        <th>Oblast</th>
                        <td>
                            <xsl:value-of select="region"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="settlement">
                    <tr>
                        <th>Místo</th>
                        <td>
                            <xsl:value-of select="settlement"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="repository">
                    <tr>
                        <th>Místo uložení</th>
                        <td>
                            <xsl:value-of select="repository"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="idno">
                    <tr>
                        <th>Signatura</th>
                        <td>
                            <xsl:value-of select="idno"/>
                        </td>
                    </tr>
                </xsl:if>
            </table>
        </div>
        <xsl:if test="altIdentifier">
            <xsl:apply-templates select="altIdentifier"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="msContents">
        <h4>Rozpis obsahu</h4>
        <div CLASS="msContents">
            <xsl:apply-templates select="summary"/>
            <xsl:if test="titlePage">
                <h6>Titulní strana</h6>
                <xsl:apply-templates select="titlePage"/>
            </xsl:if>
            <xsl:if test="msItem">
                <h6>Části rukopisu</h6>
                <xsl:choose>
                    <xsl:when test="msItem[not(locus) and not(incipit)]">
                        <xsl:apply-templates select="msItem/msItem"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="msItem"/>
                        <xsl:if test="msItem/msItem">
                            <xsl:apply-templates select="msItem/msItem"/>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
                
            </xsl:if>
        </div>
    </xsl:template>
    <xsl:template match="summary">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <div CLASS="summary">
            <xsl:choose>
                <xsl:when test="not(note)">
                    <xsl:apply-templates select="child::node()"/>
                    <xsl:choose>
                        <xsl:when test="contains($tecka, '.')">
                            <br/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>. </xsl:text>
                            <br/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when test="note[not(p)]">
                    <xsl:apply-templates select="note"/>
                    <xsl:choose>
                        <xsl:when test="contains($tecka, '.')">
                            <br/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>. </xsl:text>
                            <br/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when test="note/p">
                    <xsl:apply-templates select="note/p"/>
                </xsl:when>
            </xsl:choose>
        </div>
    </xsl:template>
    <xsl:template match="physDesc">
        <div CLASS="physDesc">
            <h4>Dochování</h4>
            <table>
                <xsl:if test="form or p/term">
                    <tr>
                        <th>Forma</th>
                        <td>
                            <xsl:value-of select="form"/>
                            <xsl:value-of select="p/term"/>
                        </td>
                    </tr>
                </xsl:if>
                <!--<xsl:if test="support"><b>Support: </b><xsl:value-of select="support"/><br/></xsl:if>-->
                <xsl:if test="objectDesc/supportDesc">
                    <xsl:apply-templates select="objectDesc/supportDesc"/>
                </xsl:if>
                <!--<xsl:if test="msWriting"><b>Script: </b><xsl:value-of select="msWriting"/><br/></xsl:if>-->
                <xsl:if test="objectDesc/layoutDesc">
                    <tr>
                        <th>Textové zrcadlo</th>
                        <td>
                            <xsl:apply-templates select="objectDesc/layoutDesc"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="decoDesc">
                    <tr>
                        <th>Výzdoba</th>
                        <td>
                            <xsl:apply-templates select="decoDesc"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="condition">
                    <tr>
                        <th>Stav dochování</th>
                        <td>
                            <xsl:value-of select="condition"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="bindingDesc">
                    <tr>
                        <th>Vazba</th>
                        <td>
                            <xsl:apply-templates select="bindingDesc"/>
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="handDesc">
                    <xsl:apply-templates select="handDesc"/>
                </xsl:if>
                <!--<xsl:if test="foliation"><b>Foliation: </b><xsl:value-of select="foliation"/><br/></xsl:if>-->
            </table>
        </div>
    </xsl:template>
    <xsl:template match="layoutDesc">
        <xsl:if test="p">
            <xsl:for-each select="p">
                <xsl:apply-templates select="."/>
            </xsl:for-each>
        </xsl:if>
        <xsl:if test="layout">
            <xsl:for-each select="layout">
                <xsl:apply-templates select="./child::node()"/>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>
    <xsl:template match="decoDesc">
        <xsl:if test="p">
            <xsl:for-each select="p">
                <xsl:apply-templates select="."/>
            </xsl:for-each>
        </xsl:if>
        <xsl:if test="decoNote">
            <xsl:apply-templates select="decoNote"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="decoNote">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:apply-templates select="child::node()"/>
        <xsl:choose>
            <xsl:when test="contains($tecka, '.')">
                <br/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>. </xsl:text>
                <br/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="bindingDesc">
        <xsl:if test="p">
            <xsl:for-each select="p">
                <xsl:apply-templates select="."/>
            </xsl:for-each>
        </xsl:if>
        <xsl:if test="condition">
            <sup>Stav vazby: </sup>
            <xsl:apply-templates select="condition/child::node()"/>
        </xsl:if>
        <xsl:if test="binding">
            <xsl:apply-templates select="binding"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="supportDesc">
        <xsl:if test="support">
            <xsl:apply-templates select="support"/>
        </xsl:if>
        <xsl:if test="extent">
            <tr>
                <th>Rozsah</th>
                <td>
                    <xsl:apply-templates select="extent/child::node()"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test="foliation">
            <tr>
                <th>Foliace</th>
                <td>
                    <xsl:apply-templates select="foliation"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test="collation">
            <tr>
                <th>Kolace</th>
                <td>
                    <xsl:apply-templates select="collation"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test="condition">
            <tr>
                <th>Fyzický stav</th>
                <td>
                    <xsl:apply-templates select="condition"/>
                </td>
            </tr>
        </xsl:if>
    </xsl:template>
    <xsl:template match="support">
        <xsl:if test=".//material">
            <tr>
                <th>Materiál</th>
                <td>
                    <xsl:value-of select=".//material"/>
                    <xsl:text> </xsl:text>
                    <xsl:if test="@material">(<xsl:value-of select="@material"/>)</xsl:if>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test=".//dimensions">
            <xsl:choose>
                <xsl:when test=".//dimensions/@type">
                    <xsl:if test=".//dimensions/@type='binding'">
                        <tr>
                            <th>Rozměry vazby</th>
                            <td>
                                <xsl:value-of select=".//dimensions[@type='binding']/height"/>
                                <xsl:text> x </xsl:text>
                                <xsl:value-of select=".//dimensions[@type='binding']/width"/>
                            </td>
                        </tr>
                    </xsl:if>
                    <xsl:if test=".//dimensions/@type='leaf'">
                        <tr>
                            <th>Rozměry složek</th>
                            <td>
                                <xsl:value-of select=".//dimensions[@type='leaf']/height"/>
                                <xsl:text> x </xsl:text>
                                <xsl:value-of select=".//dimensions[@type='leaf']/width"/>
                            </td>
                        </tr>
                    </xsl:if>
                </xsl:when>
                <xsl:otherwise>
                    <tr>
                        <th>Rozměry</th>
                        <td>
                            <xsl:value-of select=".//dimensions/height"/>
                            <xsl:text> x </xsl:text>
                            <xsl:value-of select=".//dimensions/width"/>
                            <xsl:if test="p[not(material)]">
                                <xsl:text>. </xsl:text>
                                <sup>Pozn.: </sup>
                                <xsl:apply-templates select="p[not(material)]"/>
                                <xsl:text/>
                            </xsl:if>
                        </td>
                    </tr>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="watermark">
            <tr>
                <th>Filigrán</th>
                <td>
                    <xsl:apply-templates select="watermark"/>
                </td>
            </tr>
        </xsl:if>
    </xsl:template>
    <xsl:template match="foliation">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="collation">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="watermark">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="condition">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="damage">
        <xsl:apply-templates select="child::node()"/>
        <xsl:text>. </xsl:text>
    </xsl:template>
    <xsl:template match="handDesc">
        <table>
            <tr>
                <th>Písmo</th>
                <xsl:if test="summary[not(p)]">
                    <td>
                        <xsl:apply-templates select="summary"/>
                    </td>
                </xsl:if>
                <xsl:if test="summary/p">
                    <td>
                        <xsl:apply-templates select="summary/p"/>
                    </td>
                </xsl:if>
                <xsl:if test="p">
                    <td>
                        <xsl:apply-templates select="p"/>
                    </td>
                </xsl:if>
                <xsl:if test="not(summary)">
                    <xsl:if test="handNote[1]">
                        <td>
                            <xsl:if test="handNote[position()>1]">(<xsl:number format="A"
                                />)<xsl:text> </xsl:text></xsl:if>
                            <xsl:apply-templates select="handNote[1]"/>
                        </td>
                    </xsl:if>
                </xsl:if>
            </tr>
            <xsl:if test="summary">
                <xsl:if test="handNote[1]">
                    <tr>
                        <th/>
                        <td>
                            <xsl:if test="handNote[position()>1]">(<xsl:number format="A"
                                />)<xsl:text> </xsl:text></xsl:if>
                            <xsl:apply-templates select="handNote[1]"/>
                        </td>
                    </tr>
                </xsl:if>
            </xsl:if>
            <xsl:if test="handNote[position()>1]">
                <xsl:for-each select="handNote[position()>1]">
                    <tr>
                        <th/>
                        <td> (<xsl:number format="A"/>)<xsl:text> </xsl:text>
                            <xsl:apply-templates select="."/>
                        </td>
                    </tr>
                </xsl:for-each>
            </xsl:if>
        </table>
    </xsl:template>
    <xsl:template match="handNote">
        <xsl:if test="not(p)">
            <xsl:apply-templates select="child::node()"/>
        </xsl:if>
        <xsl:if test="p">
            <xsl:apply-templates select="p"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="history">
        <div CLASS="history">
            <h4>Historie</h4>
            <table>
                <xsl:if test="origin">
                    <xsl:apply-templates select="origin"/>
                </xsl:if>
                <xsl:if test="provenance">
                    <xsl:apply-templates select="provenance"/>
                </xsl:if>
                <xsl:if test="acquisition">
                    <xsl:apply-templates select="acquisition"/>
                </xsl:if>
            </table>
        </div>
    </xsl:template>
    <xsl:template match="origin">
        <xsl:if test="not(p)">
            <tr>
                <th>Původ</th>
                <td>
                    <xsl:apply-templates select="child::node()"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test="p">
            <xsl:for-each select="p[1]">
                <tr>
                    <th>Původ</th>
                    <td>
                        <xsl:apply-templates select="child::node()"/>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="p[position() > 1]">
                <tr>
                    <th/>
                    <td>
                        <xsl:apply-templates select="child::node()"/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>
    <xsl:template match="provenance">
        <xsl:if test="not(p)">
            <tr>
                <th>Provenience</th>
                <td>
                    <xsl:apply-templates select="child::node()"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test="p">
            <tr>
                <th>Provenience</th>
                <td>
                    <xsl:apply-templates select="p"/>
                </td>
            </tr>
        </xsl:if>
    </xsl:template>
    <xsl:template match="acquisition">
        <xsl:if test="not(p)">
            <tr>
                <th>Akvizice</th>
                <td>
                    <xsl:apply-templates select="child::node()"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test="p">
            <xsl:for-each select="p[1]">
                <tr>
                    <th>Akvizice</th>
                    <td>
                        <xsl:apply-templates select="child::node()"/>
                    </td>
                </tr>
            </xsl:for-each>
            <xsl:for-each select="p[position() > 1]">
                <tr>
                    <th/>
                    <td>
                        <xsl:apply-templates select="child::node()"/>
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>
    <xsl:template match="listBibl">
        <h5>Bibliografie</h5>
        <table>
            <xsl:for-each select="listBibl">
                <xsl:apply-templates select="."/>
            </xsl:for-each>
        </table>
        <xsl:if test="not(listBibl)">
            <xsl:apply-templates select="bibl"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="listBibl/listBibl">
        <xsl:if test="head">
            <tr>
                <th>
                    <xsl:value-of select="head"/>
                </th>
                <td>
                    <xsl:apply-templates select="bibl[1]"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:for-each select="bibl[position()>1]">
            <xsl:sort/>
            <tr>
                <th/>
                <td>
                    <xsl:apply-templates select="."/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="additional">
        <div CLASS="recordHist">
            <xsl:if test="adminInfo/recordHist/source">
                <table>
                    <h5>Historie záznamu</h5>
                    <xsl:if
                        test="adminInfo/recordHist/source//date or
                        adminInfo/recordHist/source//orgName or adminInfo/recordHist/source//persName">
                        <tr>
                            <th>Datum</th>
                            <td>
                                <xsl:apply-templates
                                    select="adminInfo/recordHist/source/*[1]/date[1]"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Instituce</th>
                            <td>
                                <xsl:apply-templates select="adminInfo/recordHist/source//orgName"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Autor záznamu</th>
                            <td>
                                <xsl:for-each
                                    select="adminInfo/recordHist/source//persName[1][last()]">
                                    <xsl:apply-templates select="."/>
                                </xsl:for-each>
                                <xsl:for-each
                                    select="adminInfo/recordHist/source/persName[position()
                                &gt;=
                                1][not(last())]">
                                    <xsl:apply-templates select="."/>, </xsl:for-each>
                                <xsl:if test="adminInfo/recordHist/source/p[position()>1]">
                                    <xsl:if
                                        test="adminInfo/recordHist/source//persName[1][last()]
                                        != adminInfo/recordHist/source/p[last()]/*">
                                        <br/>
                                        <sup>Pozn.: </sup>
                                        <xsl:apply-templates
                                            select="adminInfo/recordHist/source/p[last()]"/>
                                    </xsl:if>
                                </xsl:if>
                            </td>
                        </tr>
                    </xsl:if>
                    <xsl:if test="//teiHeader/revisionDesc">
                        <tr>
                            <th>Poslední změna</th>
                            <td>
                                <xsl:apply-templates
                                    select="//teiHeader/revisionDesc/change[last()]/persName"/>
                                    (<xsl:value-of
                                    select="//teiHeader/revisionDesc/change[last()]/@when"/>)
                                    <xsl:if test="//teiHeader/revisionDesc/change[last()]/note">
                                    <br/>
                                    <sup>Pozn.: </sup>
                                    <xsl:apply-templates
                                        select="//teiHeader/revisionDesc/change[last()]/note"/>
                                </xsl:if>
                            </td>
                        </tr>
                    </xsl:if>
                </table>
            </xsl:if>
        </div>
    </xsl:template>
    <xsl:template match="msItem">
        <xsl:choose>
            <xsl:when test="parent::msItem">
                <h5>Část <xsl:choose>
                        <xsl:when test="parent::msItem/parent::msContents/parent::msDesc">
                            <xsl:number count="//msDesc/msContents/msItem/msItem"/>
                        </xsl:when>
                        <xsl:when test="parent::msItem/parent::msContents/parent::msPart">
                            <xsl:number count="//msDesc/msPart/msContents/msItem/msItem"/>
                        </xsl:when>
                    </xsl:choose>.</h5>
            </xsl:when>
            <xsl:otherwise>
                <h5>Textová jednotka (n: <xsl:choose>
                        <xsl:when test="parent::msContents/parent::msDesc">
                            <xsl:number count="//msDesc/msContents/msItem"/>
                        </xsl:when>
                        <xsl:when test="parent::msContents/parent::msPart">
                            <xsl:number count="//msDesc/msPart/msContents/msItem"/>
                        </xsl:when>
                    </xsl:choose>)</h5>
            </xsl:otherwise>
        </xsl:choose>
        <table>
            <xsl:if test="locus">
                <tr>
                    <th>Rozsah</th>
                    <td>
                        <xsl:apply-templates select="locus"/>
                    </td>
                </tr>
            </xsl:if>
            <xsl:if test="textLang">
                <xsl:apply-templates select="textLang"/>
            </xsl:if>
            <xsl:if test="author">
                <xsl:apply-templates select="author"/>
            </xsl:if>
            <xsl:if test="title">
                <xsl:apply-templates select="title"/>
            </xsl:if>
            <xsl:if test="rubric">
                <xsl:apply-templates select="rubric"/>
            </xsl:if>
            <xsl:for-each select="incipit">
                <xsl:variable name="incipit" select="count(position())"/>
                <xsl:apply-templates select="."/>
                <xsl:apply-templates select="following-sibling::explicit[position() = $incipit]"/>
            </xsl:for-each>
            <xsl:if test="colophon">
                <xsl:apply-templates select="colophon"/>
            </xsl:if>
            <xsl:if test="respStmt/resp">
                <tr>
                    <th>Údaje o odpovědnosti</th>
                    <td>
                        <xsl:value-of select="respStmt/resp"/>
                        <xsl:text> </xsl:text>
                        <xsl:if test="respStmt/resp//date[@value]">[<xsl:value-of
                                select="respStmt/resp//date/@value"/>]</xsl:if>
                    </td>
                </tr>
            </xsl:if>
            <xsl:if test="docTitle">
                <tr>
                    <th>Titulní strana</th>
                    <td>
                        <xsl:if test="docTitle/preceding-sibling::docAuthor">
                            <xsl:apply-templates select="docAuthor[following-sibling::docTitle]"/>
                            <xsl:text> </xsl:text>
                            <xsl:apply-templates select="docTitle[preceding-sibling::docAuthor]"/>
                        </xsl:if>
                        <xsl:if test="docTitle[following-sibling::docAuthor]">
                            <xsl:apply-templates select="docTitle[following-sibling::docAuthor]"/>
                            <xsl:if test="docAuthor">
                                <xsl:text> / </xsl:text>
                                <xsl:apply-templates select="docAuthor"/>
                            </xsl:if>
                        </xsl:if>
                        <xsl:if test="not(docAuthor)">
                            <xsl:apply-templates select="docTitle"/>
                        </xsl:if>
                        <xsl:if test="docImprint">
                            <xsl:text>. </xsl:text>
                            <xsl:apply-templates select="docImprint"/>
                        </xsl:if>
                    </td>
                </tr>
            </xsl:if>
            <xsl:if test="note">
                <tr>
                    <th>Poznámka</th>
                    <td>
                        <xsl:apply-templates select="note"/>
                    </td>
                </tr>
            </xsl:if>
            <xsl:if test="bibl">
                <xsl:apply-templates select="bibl"/>
            </xsl:if>
            <xsl:if test="listBibl/bibl">
                <xsl:apply-templates select="listBibl/bibl"/>
            </xsl:if>
            <xsl:if test="listBibl/listBibl/bibl">
                <xsl:apply-templates select="listBibl/listBibl/bibl"/>
            </xsl:if>
        </table>
    </xsl:template>
    <xsl:template match="author[parent::msItem]">
        <tr>
            <th>Autor</th>
            <td>
                <xsl:value-of select="."/>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="title">
        <xsl:choose>
            <xsl:when test="parent::msItem">
                <tr>
                    <th>Titul</th>
                    <td>
                        <xsl:apply-templates select="child::node()"/>
                    </td>
                </tr>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="rubric">
        <tr>
            <th>Rubrika</th>
            <td>
                <xsl:apply-templates select="child::node()"/>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="incipit">
        <tr>
            <th>Incipit<xsl:if test="@xml:lang"><sup style="normal"><xsl:value-of select="@xml:lang"
                        /></sup></xsl:if></th>
            <td>
                <xsl:apply-templates select="child::node()"/>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="explicit">
        <tr>
            <th>Explicit</th>
            <td>
                <xsl:apply-templates select="child::node()"/>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="colophon">
        <tr>
            <th>Kolofon</th>
            <td>
                <i>
                    <xsl:value-of select="child::node()"/>
                </i>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="textLang">
        <tr>
            <th>Jazyk originálu</th>
            <td>
                <xsl:value-of select="child::node()"/>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="note">
        <xsl:variable name="note" select="."/>
        <xsl:choose>
            <xsl:when test="parent::p">
                <script type="text/javascript">
function OpenNewWindow(message)
{ 
    var OpenWindow = window.open("", "note", "height=250, width=250,toolbar=no,scrollbars=yes,menubar=no");
    OpenWindow.document.write("<html>");
    OpenWindow.document.write("<title>Poznámka</title>");
    OpenWindow.document.write("<body>");
    OpenWindow.document.write("<p><xsl:value-of select="normalize-space($note)"/></p>");
    OpenWindow.document.write("</body>");
    OpenWindow.document.write("</html>");
}
</script>
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:text>#</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="onclick">
                        <xsl:text>OpenNewWindow()</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="normalize-space($note)"/>
                    </xsl:attribute>
                    <sup>[note]</sup>
                </xsl:element>
            </xsl:when>
            <xsl:when test="parent::titlePage">
                <br/>
                <b>
                    <xsl:text>Pozn.: </xsl:text>
                </b>
                <xsl:apply-templates select="child::node()"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="bibl">
        <xsl:choose>
            <xsl:when test="parent::msItem">
                <tr>
                    <th>Literatura</th>
                    <td>
                        <xsl:value-of select="child::node()"/>
                    </td>
                </tr>
            </xsl:when>
            <xsl:when test="parent::listBibl/parent::msItem">
                <tr>
                    <th>Literatura</th>
                    <td>
                        <xsl:value-of select="child::node()"/>
                    </td>
                </tr>
            </xsl:when>
            <xsl:when test="parent::listBibl/parent::listBibl/parent::msItem">
                <tr>
                    <th>Literatura</th>
                    <td>
                        <xsl:value-of select="child::node()"/>
                    </td>
                </tr>
            </xsl:when>
            <xsl:when test="parent::p">
                <xsl:apply-templates select="child::node()"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="child::node()"/>
                <br/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="bibl[@xml:base]">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="@xml:base"/>
            </xsl:attribute>
            <xsl:attribute name="target">
                <xsl:text>_blank</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates select="child::node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="supplied">
        <span class="supplied">[<xsl:apply-templates select="child::node()"/>]</span>
    </xsl:template>
    <xsl:template match="msItem/locus">
        <xsl:value-of select="."/>
        <xsl:if test="@from"> (from: <xsl:apply-templates select="@from"/>
        </xsl:if>
        <xsl:text> </xsl:text>
        <xsl:if test="@to">to: <xsl:apply-templates select="@to"/>) </xsl:if>
    </xsl:template>
    <xsl:template match="locus">
        <!-- Tatáž šablona se týká locus/@from and locus/@to -->
        <xsl:variable name="base_url" select="//facsimile/@xml:base"/>
        <xsl:variable name="locus" select="."/>
        <xsl:variable name="label" select="//facsimile/surface/desc/label"/>
        <xsl:variable name="url">
            <xsl:apply-templates
                select="//facsimile/surface[contains(desc/label, $locus) and
                string-length($locus) = string-length(desc/label)]"
            />
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="//facsimile[@xml:base]">
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:value-of select="concat($base_url, $url)"/>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:text>_blank</xsl:text>
                    </xsl:attribute>
                    <xsl:value-of select="."/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="locus/@from">
        <xsl:variable name="base_url" select="//facsimile/@xml:base"/>
        <xsl:variable name="locus" select="."/>
        <xsl:variable name="label" select="//facsimile/surface/desc/label"/>
        <xsl:variable name="url">
            <xsl:apply-templates
                select="//facsimile/surface[contains(desc/label, $locus) and
                string-length($locus) = string-length(desc/label)]"
            />
        </xsl:variable>
        <xsl:if test="//facsimile[@xml:base]">
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:value-of select="concat($base_url, $url)"/>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:text>_blank</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </xsl:element>
        </xsl:if>
    </xsl:template>
    <xsl:template match="locus/@to">
        <xsl:variable name="base_url" select="//facsimile/@xml:base"/>
        <xsl:variable name="locus" select="."/>
        <xsl:variable name="label" select="//facsimile/surface/desc/label"/>
        <xsl:variable name="url">
            <xsl:apply-templates
                select="//facsimile/surface[contains(desc/label, $locus) and
                string-length($locus) = string-length(desc/label)]"
            />
        </xsl:variable>
        <xsl:if test="//facsimile[@xml:base]">
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:value-of select="concat($base_url, $url)"/>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:text>_blank</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </xsl:element>
        </xsl:if>
    </xsl:template>
    <xsl:template match="surface">
        <xsl:if test="graphic/@url[contains(., '.jpg')]">
            <xsl:value-of select="graphic/@url[contains(., 'excellent')]"/>
        </xsl:if>
        <xsl:if test="graphic/@url[contains(., 'ImageProperties.xml')]">
            <xsl:value-of
                select="concat(substring-before(graphic/@url, '/ImageProperties.xml'),
                '.jp2')"
            />
        </xsl:if>
        <xsl:if test="graphic/@url[contains(., 'EX/')]">
            <xsl:value-of select="concat('N3/', replace(substring-after(graphic/@url, 'EX/'), 'EX', 'N3'))"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="titlePage">
        <div align="center">
            <xsl:apply-templates select="child::node()"/>
        </div>
    </xsl:template>
    <xsl:template match="docAuthor">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="docTitle[1]">
        <b>
            <xsl:apply-templates select="titlePart[1]"/>
        </b>
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
        <br/>
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
    <xsl:template match="origDate">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="msPart">
        <h2>Přívazek (n: <xsl:number count="//msDesc/msPart"/>)</h2>
        <div CLASS="msPart">
            <xsl:apply-templates select="altIdentifier"/>
            <xsl:if test="head/title">
                <xsl:apply-templates select="head"/>
            </xsl:if>
            <xsl:apply-templates select="msContents"/>
            <br/>
            <xsl:apply-templates select="physDesc"/>
            <xsl:apply-templates select="history"/>
            <xsl:apply-templates select="additional/listBibl"/>
            <xsl:apply-templates select="additional"/>
        </div>
    </xsl:template>
    <xsl:template match="altIdentifier">
        <xsl:choose>
            <xsl:when test="parent::msPart">
                <div CLASS="altIdentifier">
                    <h4>Uložení dokumentu</h4>
                    <table>
                        <xsl:if test="country">
                            <tr>
                                <th>Země</th>
                                <td>
                                    <xsl:value-of select="country"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="region">
                            <tr>
                                <th>Oblast</th>
                                <td>
                                    <xsl:value-of select="region"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="settlement">
                            <tr>
                                <th>Místo</th>
                                <td>
                                    <xsl:value-of select="settlement"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="repository">
                            <tr>
                                <th>Místo uložení</th>
                                <td>
                                    <xsl:value-of select="repository"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="idno">
                            <tr>
                                <th>Signatura</th>
                                <td>
                                    <xsl:value-of select="idno"/>
                                    <xsl:if test="note">
                                        <br/>
                                        <sup>Pozn.: </sup>
                                        <xsl:apply-templates select="note"/>
                                    </xsl:if>
                                </td>
                            </tr>
                        </xsl:if>
                    </table>
                </div>
            </xsl:when>
            <xsl:when test="parent::msIdentifier">
                <div CLASS="altIdentifier">
                    <h4>Historické uložení dokumentu</h4>
                    <table>
                        <xsl:if test="country">
                            <tr>
                                <th>Země</th>
                                <td>
                                    <xsl:value-of select="country"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="region">
                            <tr>
                                <th>Oblast</th>
                                <td>
                                    <xsl:value-of select="region"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="settlement">
                            <tr>
                                <th>Místo</th>
                                <td>
                                    <xsl:value-of select="settlement"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="repository">
                            <tr>
                                <th>Místo uložení</th>
                                <td>
                                    <xsl:value-of select="repository"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="institution">
                            <tr>
                                <th>Místo uložení</th>
                                <td>
                                    <xsl:value-of select="institution"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="idno">
                            <tr>
                                <th>Signatura</th>
                                <td>
                                    <xsl:value-of select="idno"/>
                                    <xsl:if test="idno/@type"> (type: <xsl:value-of
                                            select="idno/@type"/>)</xsl:if>
                                    <xsl:if test="note">
                                        <br/>
                                        <sup>Pozn.: </sup>
                                        <xsl:apply-templates select="note"/>
                                    </xsl:if>
                                </td>
                            </tr>
                        </xsl:if>
                    </table>
                </div>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="q">
        <i>
            <xsl:apply-templates select="child::node()"/>
        </i>
    </xsl:template>
    <xsl:template match="p">
        <xsl:variable name="pocet_znaku" select="string-length(.)"/>
        <xsl:variable name="tecka" select="substring(., $pocet_znaku, 1)"/>
        <xsl:apply-templates select="child::node()"/>
        <xsl:choose>
            <xsl:when test="contains($tecka, '.')">
                <br/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>. </xsl:text>
                <br/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="abb">
        <xsl:apply-templates select="child::node()"/>
    </xsl:template>
    <xsl:template match="ex">
        <span class="ex">
            <xsl:text>[</xsl:text>
            <xsl:apply-templates select="child::node()"/>
            <xsl:text>]</xsl:text>
        </span>
    </xsl:template>
    <xsl:template match="title[parent::summary or parent::note or parent::p or parent::bibl]">
        <i>
            <xsl:apply-templates select="child::node()"/>
        </i>
    </xsl:template>
    <xsl:template match="dim">
        <xsl:if test="contains(., '°')">
            <sup>Formát: </sup>
            <xsl:value-of select="."/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="facsimile">
        <xsl:variable name="base_url" select="@xml:base"/>
        <xsl:if test="surface/graphic/@url[contains(., '.jpg')]">
            <table border="1">
                <xsl:choose>
                    <xsl:when test="surface/graphic/@url[contains(., 'gallery')]">
                        <tr>
                            <xsl:for-each select="surface">
                                <xsl:variable name="gallery"
                                    select="graphic/@url[contains(., 'gallery')]"/>
                                <xsl:variable name="low" select="graphic/@url[contains(., 'low')]"/>
                                <td>
                                    <div class="img">
                                        <a href="{concat($base_url, $low)}" target="image">
                                            <img src="{concat($base_url, $gallery)}" alt="{@xml:id}"
                                            />
                                        </a>
                                    </div>
                                </td>
                            </xsl:for-each>
                        </tr>
                    </xsl:when>
                </xsl:choose>
                <tr>
                    <xsl:for-each select="surface">
                        <xsl:variable name="low" select="graphic/@url[contains(., 'low')]"/>
                        <td>
                            <a href="{concat($base_url, $low)}" target="image">
                                <xsl:value-of select="desc/label"/>
                            </a>
                        </td>
                    </xsl:for-each>
                </tr>
            </table>
        </xsl:if>
        <xsl:if test="surface/graphic/@url[contains(., 'ImageProperties.xml')]">
            <table border="1">
                <tr>
                    <xsl:for-each select="surface">
                        <xsl:variable name="low"
                            select="substring-before(graphic/@url, '/ImageProperties.xml')"/>
                        <td>
                            <a href="{concat($base_url, $low, '.jp2')}" target="image">
                                <xsl:value-of select="desc/label"/>
                            </a>
                        </td>
                    </xsl:for-each>
                </tr>
            </table>
        </xsl:if>
        <xsl:if test="surface/graphic/@url[contains(., 'EX/')]">
            <table border="1">
                <tr>
                    <xsl:for-each select="surface">
                        <td>
                            <div class="img">
                                <a
                                    href="{concat($base_url, 'N3/', replace(substring-after(graphic/@url,
                                    'EX/'), 'EX', 'N3'))}"
                                    target="image">
                                    <img
                                        src="{concat($base_url, 'G0/', replace(substring-after(graphic/@url,
                                        'EX/'), 'EX', 'G0'))}"
                                        alt="{@xml:id}"/>
                                </a>
                            </div>
                        </td>
                    </xsl:for-each>
                </tr>
                <tr>
                    <xsl:for-each select="surface">
                        <td>
                            <a
                                href="{concat($base_url, 'N3/', replace(substring-after(graphic/@url,
                                'EX/'), 'EX', 'N3'))}"
                                target="image">
                                <xsl:value-of select="desc/label"/>
                            </a>
                        </td>
                    </xsl:for-each>
                </tr>
            </table>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
