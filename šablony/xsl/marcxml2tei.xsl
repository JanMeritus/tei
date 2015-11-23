<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:marc="http://www.loc.gov/MARC21/slim" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xd marc" version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 14, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Bar</xd:p>
            <xd:p/>
        </xd:desc>
    </xd:doc>
    <xsl:output doctype-system="enrich.dtd" indent="yes"/>
    <xsl:variable name="uc">ABCDEFGHIJKLMNOPQRSTUVWXYZĚŠČŘŽÝÁÍÉÚŮŇ</xsl:variable>
    <xsl:variable name="lc">abcdefghijklmnopqrstuvwxyzěščřžýáíéúůň</xsl:variable>
    <xsl:template match="/">
        <xsl:apply-templates select="marc:collection/marc:record"/>

    </xsl:template>

    <xsl:template
        match="marc:record[contains(marc:datafield[@tag='910']/marc:subfield[@code='b'], 'RKP2-')]">
        <xsl:variable name="sysno" select="marc:controlfield[@tag='001']"/>
        <xsl:variable name="carak" select="substring(document('Aleph10974.xml')/TEI/text[1]/body[1]/p[preceding-sibling::p[1][substring-after(., 'Sysno: ') = $sysno]], 1, 10)"/>
        <xsl:result-document
            href="{concat(marc:datafield[@tag='910']/marc:subfield[@code='b'], '.tei.xml')}">

            <TEI>
                <teiHeader>
                    <fileDesc>
                        <titleStmt>
                            <title/>
                        </titleStmt>
                        <publicationStmt>
                            <idno type="sysno" xml:base="MZK03">
                                <xsl:value-of select="marc:controlfield[@tag='001']"/>
                            </idno>
                            <idno type="signatura" xml:base="MZK03">
                                <xsl:value-of
                                    select="marc:datafield[@tag='910']/marc:subfield[@code='b']"/>
                            </idno>
                            <idno type="carovy_kod" xml:base="MZK03">
                                <xsl:value-of
                                    select="$carak"/>
                            </idno>
                            <publisher>Moravská zemská knihovna</publisher>
                        </publicationStmt>
                        <sourceDesc>
                            <msDesc xml:id="CZ_BOA001_{$carak}">
                                <msIdentifier>
                                    <country>Česko</country>
                                    <region>Morava</region>
                                    <settlement>Brno</settlement>
                                    <repository>Moravská zemská knihovna v Brně</repository>
                                    <idno>
                                        <xsl:value-of
                                            select="marc:datafield[@tag='910']/marc:subfield[@code='b']"
                                        />
                                    </idno>
                                </msIdentifier>
                                <head>
                                    <xsl:if
                                        test="marc:datafield[@tag='100'] or marc:datafield[@tag='700']">
                                        <xsl:call-template name="jmeno"/>
                                    </xsl:if>
                                    <xsl:if test="marc:datafield[@tag='245']">
                                        <title>
                                            <xsl:value-of select="marc:datafield[@tag='245']/*"/>
                                        </title>
                                    </xsl:if>
                                    <xsl:if
                                        test="marc:datafield[@tag='260']/marc:subfield[@code='c']">
                                        <origDate>
                                            <xsl:value-of
                                                select="marc:datafield[@tag='260']/marc:subfield[@code='c']"
                                            />
                                        </origDate>
                                    </xsl:if>
                                    <xsl:if
                                        test="marc:datafield[@tag='260']/marc:subfield[@code='b']">
                                        <origPlace>
                                            <xsl:value-of
                                                select="marc:datafield[@tag='260']/marc:subfield[@code='b']"
                                            />
                                        </origPlace>
                                    </xsl:if>
                                </head>
                                <msContents>

                                    <xsl:if
                                        test="marc:datafield[@tag='041']/marc:subfield[@code='a']">
                                        <xsl:element name="textLang">
                                            <xsl:attribute name="mainLang">
                                                <xsl:value-of
                                                  select="marc:datafield[@tag='041']/marc:subfield[@code='a'][1]"
                                                />
                                            </xsl:attribute>
                                            <xsl:if
                                                test="marc:datafield[@tag='041']/marc:subfield[@code='a'][position() &gt; 1]">
                                                <xsl:attribute name="otherLangs">
                                                  <xsl:for-each
                                                  select="marc:datafield[@tag='041']/marc:subfield[@code='a'][position() &gt; 1]">
                                                  <xsl:value-of select="."/>
                                                  <xsl:text> </xsl:text>
                                                  </xsl:for-each>

                                                </xsl:attribute>
                                            </xsl:if>
                                            <xsl:choose>
                                                <xsl:when
                                                  test="contains(marc:datafield[@tag='546']/marc:subfield[@code='a'], 'Psáno')"/>
                                                <xsl:otherwise>
                                                  <xsl:value-of
                                                  select="marc:datafield[@tag='546']/marc:subfield[@code='a']"
                                                  />
                                                </xsl:otherwise>
                                            </xsl:choose>

                                        </xsl:element>

                                    </xsl:if>

                                </msContents>
                                <physDesc>
                                    <p>
                                        <xsl:for-each
                                            select="marc:datafield[@tag='650']/marc:subfield[@code='a']">
                                            <term>
                                                <xsl:value-of select="."/>
                                            </term>
                                        </xsl:for-each>
                                        <xsl:for-each
                                            select="marc:datafield[@tag='655']/marc:subfield[@code='a']">
                                            <term>
                                                <xsl:value-of select="."/>
                                            </term>
                                        </xsl:for-each>
                                    </p>
                                    <objectDesc form="other">
                                        <supportDesc>
                                            <support>
                                                <material>Papír</material>
                                                <dimensions>
                                                  <dim>
                                                  <xsl:value-of
                                                  select="marc:datafield[@tag='300']/marc:subfield[@code='c']"
                                                  />
                                                  </dim>
                                                </dimensions>
                                            </support>
                                            <extent>
                                                <xsl:value-of
                                                  select="replace(marc:datafield[@tag='300']/marc:subfield[@code='a'], ' ;', '')"
                                                />
                                            </extent>


                                        </supportDesc>

                                    </objectDesc>
                                    <xsl:if
                                        test="contains(marc:datafield[@tag='546']/marc:subfield[@code='a'], 'Psáno')">
                                        <handDesc>
                                            <handNote>
                                                <xsl:value-of
                                                  select="marc:datafield[@tag='546']/marc:subfield[@code='a']"
                                                />
                                            </handNote>
                                        </handDesc>
                                    </xsl:if>
                                    <xsl:if
                                        test="marc:datafield[@tag='563']/marc:subfield[@code='a']">
                                        <bindingDesc>
                                            <p>
                                                <xsl:value-of
                                                  select="marc:datafield[@tag='563']/marc:subfield[@code='a']"
                                                />
                                            </p>
                                        </bindingDesc>
                                    </xsl:if>
                                </physDesc>
                                <history>
                                    <xsl:if
                                        test="marc:datafield[@tag='561']/marc:subfield[@code='a']">
                                        <xsl:for-each
                                            select="marc:datafield[@tag='561']/marc:subfield[@code='a']">
                                            <provenance>
                                                <xsl:value-of
                                                  select="substring-after(., 'Provenience: ')"/>
                                            </provenance>
                                        </xsl:for-each>
                                    </xsl:if>
                                </history>
                                <additional>
                                    <adminInfo>
                                        <recordHist>
                                            <source>
                                                <xsl:element name="date">
                                                  <xsl:attribute name="when">
                                                  <xsl:value-of
                                                  select="concat('20', substring(marc:datafield[@tag='PRU'][1]/marc:subfield[@code='a'], 5, 2), '-', substring(marc:datafield[@tag='PRU'][1]/marc:subfield[@code='a'], 7, 2), '-', substring(marc:datafield[@tag='PRU'][1]/marc:subfield[@code='a'], 9, 2))"
                                                  />
                                                  </xsl:attribute>
                                                </xsl:element>
                                                <orgName>Moravská zemská knihovna</orgName>
                                                <persName>
                                                  <xsl:if
                                                  test="contains(marc:datafield[@tag='PRU'][1]/marc:subfield[@code='a'], 'ER')">
                                                  <xsl:text>Eva Richtrová</xsl:text>
                                                  </xsl:if>
                                                  <xsl:if
                                                  test="contains(marc:datafield[@tag='PRU'][1]/marc:subfield[@code='a'], 'JP')">
                                                  <xsl:text>Jindra Pavelková</xsl:text>
                                                  </xsl:if>
                                                </persName>

                                            </source>
                                        </recordHist>
                                    </adminInfo>
                                </additional>

                            </msDesc>
                        </sourceDesc>
                    </fileDesc>
                    <revisionDesc>
                        <change when="2012-02-21">
                            <persName>Přemysl Bar</persName>
                            <note>Transformace z MARCXML do TEI</note>
                        </change>
                    </revisionDesc>
                </teiHeader>

                <facsimile>
                    <graphic/>
                </facsimile>
            </TEI>
        </xsl:result-document>
    </xsl:template>
    <xsl:template name="jmeno">
        <xsl:for-each select="marc:datafield[@tag='100']">
            <xsl:element name="persName">
                <xsl:attribute name="type">
                    <xsl:text>author</xsl:text>
                </xsl:attribute>
                <xsl:if test="marc:subfield[@code='7']">
                    <xsl:attribute name="xml:id">
                        <xsl:value-of select="marc:subfield[@code='7']"/>
                    </xsl:attribute>
                    <xsl:attribute name="xml:base">
                        <xsl:text>AUT10</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='a']">
                    <xsl:value-of select="marc:subfield[@code='a']"/>

                </xsl:if>
                <xsl:if test="marc:subfield[@code='b']">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="marc:subfield[@code='b']"/>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='c']">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="marc:subfield[@code='c']"/>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='d']">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="marc:subfield[@code='d']"/>
                </xsl:if>
            </xsl:element>
        </xsl:for-each>
        <xsl:for-each select="marc:datafield[@tag='700']">
            <xsl:element name="persName">
                <xsl:if test="marc:subfield[@code='4'] = 'aut'">
                    <xsl:attribute name="type">
                        <xsl:text>author</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='4'] = 'cmp'">
                    <xsl:attribute name="type">
                        <xsl:text>composer</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='4'] = 'trl'">
                    <xsl:attribute name="type">
                        <xsl:text>translator</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='4'] = 'pbl'">
                    <xsl:attribute name="type">
                        <xsl:text>publisher</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='4'] = 'lbt'">
                    <xsl:attribute name="type">
                        <xsl:text>librettist</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='4'] = 'dub'">
                    <xsl:attribute name="type">
                        <xsl:text>dubious_author</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='7']">
                    <xsl:attribute name="xml:id">
                        <xsl:value-of select="marc:subfield[@code='7']"/>
                    </xsl:attribute>
                    <xsl:attribute name="xml:base">
                        <xsl:text>AUT10</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='a']">
                    <xsl:value-of select="marc:subfield[@code='a']"/>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='b']">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="marc:subfield[@code='b']"/>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='c']">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="marc:subfield[@code='c']"/>
                </xsl:if>
                <xsl:if test="marc:subfield[@code='d']">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="marc:subfield[@code='d']"/>
                </xsl:if>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
