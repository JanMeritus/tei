<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:default="http://www.loc.gov/MARC21/slim" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" exclude-result-prefixes="xd xsi default" version="1.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 14, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Bar</xd:p>
            <xd:p/>
        </xd:desc>
    </xd:doc>
    <xsl:output indent="yes"/>
    <xsl:variable name="uc">ABCDEFGHIJKLMNOPQRSTUVWXYZĚŠČŘŽÝÁÍÉÚŮŇ</xsl:variable>
    <xsl:variable name="lc">abcdefghijklmnopqrstuvwxyzěščřžýáíéúůň</xsl:variable>
    <xsl:template match="/">
        <TEI>
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title/>
                    </titleStmt>
                    <publicationStmt>
                        <idno><xsl:value-of select="/collection/record[1]/controlfield[3]"/></idno>
                        <p/>
                    </publicationStmt>
                    <sourceDesc>
                        <msDesc xml:id="CZ_BOA001_">
                            <msIdentifier/>
                            <head/>
                            <msContents/>
                            <physicDesc/>
                            <history/>
                            <additional/>
                            <xsl:apply-templates select="collection/record"/>
                        </msDesc>
                    </sourceDesc>
                </fileDesc>
            </teiHeader>
        </TEI>
    </xsl:template>
    
    <xsl:template match="record">
        <xsl:element name="msPart">
            <xsl:attribute name="n">
                <xsl:apply-templates select="datafield[@tag='910']"/>
            </xsl:attribute>
            <xsl:element name="altIdentifier">
                <xsl:element name="idno">
                    <xsl:value-of select="datafield[@tag='910']/subfield"/>
                </xsl:element>
                
            </xsl:element>
            <xsl:element name="head">
                <xsl:if test="datafield[@tag='100']">
                    <xsl:element name="persName">
                        <xsl:attribute name="type">
                            <xsl:text>author</xsl:text>
                        </xsl:attribute>
                        <xsl:value-of select="datafield[@tag='100']/subfield[@code='a']"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="datafield[@tag='100']/subfield[@code='b']"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="datafield[@tag='100']/subfield[@code='c']"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="datafield[@tag='100']/subfield[@code='d']"/>
                    </xsl:element>
                </xsl:if>
                <xsl:if test="datafield[@tag='700']">
                    <xsl:element name="persName">
                        <xsl:choose>
                            <xsl:when
                                test="datafield[@tag='700']/subfield[@code='4']/text()[contains(.,
                                'aut')]">
                                <xsl:attribute name="type">
                                    <xsl:text>author</xsl:text>
                                </xsl:attribute>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:attribute name="type">
                                    <xsl:value-of select="datafield[@tag='700']/subfield[@code='4']"
                                    />
                                </xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:value-of select="datafield[@tag='700']/subfield[@code='a']"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="datafield[@tag='700']/subfield[@code='b']"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="datafield[@tag='700']/subfield[@code='c']"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="datafield[@tag='700']/subfield[@code='d']"/>
                    </xsl:element>
                </xsl:if>
                <xsl:element name="title">
                    <xsl:value-of select="datafield[@tag='245']/subfield[@code='a']"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="datafield[@tag='245']/subfield[@code='b']"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="datafield[@tag='245']/subfield[@code='n']"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="datafield[@tag='245']/subfield[@code='p']"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="datafield[@tag='245']/subfield[@code='c']"/>
                </xsl:element>
                <xsl:element name="origDate">
                    <xsl:value-of select="datafield[@tag='978']/subfield[@code='f']"/>
                </xsl:element>
                <xsl:element name="origPlace">
                    <xsl:value-of select="datafield[@tag='978']/subfield[@code='c']"/>
                </xsl:element>
            </xsl:element>
        
        <xsl:element name="msContents">
            <xsl:if test="datafield[@tag='500']">
                <summary>
                    <note>
                    <xsl:apply-templates mode="p" select="datafield[@tag='500']"/>
                    </note>
                </summary>
            </xsl:if>
            <xsl:element name="textLang">
                <xsl:apply-templates select="controlfield[@tag='008']"/>
            </xsl:element>
        </xsl:element>
        <xsl:element name="physDesc">
            <xsl:element name="p">
                <xsl:choose>
                    <xsl:when test="datafield[@tag='245']/subfield[@code='h']">
                        <xsl:variable name="grafika">
                            <xsl:value-of select="datafield[@tag='245']/subfield[@code='h']"/>
                        </xsl:variable>
                        <xsl:variable name="Grafika">
                            <xsl:value-of select="normalize-space(translate($grafika, '[]:', ''))"/>
                        </xsl:variable>
                        <xsl:element name="term">
                            <xsl:value-of
                                select="concat(translate(substring($Grafika, 1, 1), $lc,
                               $uc), substring($Grafika, 2))"
                            />
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise>
                        <term>
                            <xsl:text>Starý tisk</xsl:text>
                        </term>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:if test="datafield[@tag='300']/subfield[@code='b']">
                    <xsl:variable name="mediryt">
                        <xsl:value-of select="datafield[@tag='300']/subfield[@code='b']"/>
                    </xsl:variable>
                    <xsl:variable name="Mediryt">
                        <xsl:value-of select="normalize-space(translate($mediryt, '[]:;', ''))"/>
                    </xsl:variable>
                    <term>
                        <xsl:value-of
                            select="concat(translate(substring($Mediryt, 1, 1), $lc,
                            $uc), substring($Mediryt, 2))"
                        />
                    </term>
                </xsl:if>
            </xsl:element>
            <objectDesc>
                <supportDesc>
                    <support>
                        <dimensions>
                            <dim>
                                <xsl:value-of select="datafield[@tag='300']/subfield[@code='c']"/>
                            </dim>
                        </dimensions>
                    </support>
                    <extent>
                        <xsl:variable name="extent"
                            select="datafield[@tag='300']/subfield[@code='a']"/>
                        <xsl:variable name="Extent"
                            select="normalize-space(translate($extent, ':;',
                            ''))"/>
                        <xsl:choose>
                            <xsl:when test="contains($Extent, '1 list')">
                                <xsl:text>[1] f.</xsl:text>
                            </xsl:when>
                            <xsl:when test="contains($Extent, 's.')">
                                <xsl:value-of
                                    select="normalize-space(translate($Extent, 's', 'pp'))"/>
                            </xsl:when>
                            <xsl:when test="contains($Extent, 'l.')">
                                <xsl:value-of
                                    select="normalize-space(translate($Extent, 'l', 'ff'))"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$Extent"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </extent>
                </supportDesc>
            </objectDesc>
            <xsl:apply-templates select="datafield[@tag='500'][contains(subfield, 'Výzdoba')]"
                mode="vyzdoba"/>
        </xsl:element>
        <history>
            <xsl:element name="origin">
                <xsl:attribute name="source">
                    <xsl:text>impresum</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="datafield[@tag='260']/subfield[@code='a']"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="datafield[@tag='260']/subfield[@code='b']"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="datafield[@tag='260']/subfield[@code='c']"/>
            </xsl:element>
            
        </history>
        </xsl:element>
    </xsl:template>
    <xsl:template match="controlfield">
        <xsl:choose>
            <xsl:when test="contains(., 'cze')">
                <xsl:attribute name="mainLang">
                    <xsl:text>cze</xsl:text>
                </xsl:attribute>
                <xsl:text>Česky</xsl:text>
            </xsl:when>
            <xsl:when test="contains(., 'ger')">
                <xsl:attribute name="mainLang">
                    <xsl:text>ger</xsl:text>
                </xsl:attribute>
                <xsl:text>Německy</xsl:text>
            </xsl:when>
            <xsl:when test="contains(., 'lat')">
                <xsl:attribute name="mainLang">
                    <xsl:text>lat</xsl:text>
                </xsl:attribute>
                <xsl:text>Latinsky</xsl:text>
            </xsl:when>
            <xsl:when test="contains(., 'fre')">
                <xsl:attribute name="mainLang">
                    <xsl:text>fre</xsl:text>
                </xsl:attribute>
                <xsl:text>Francouzsky</xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="datafield[@tag='910']">
        <xsl:value-of select="normalize-space(substring-after(., 'v.'))"/>
    </xsl:template>
    <xsl:template match="datafield[@tag='500']" mode="p">
        <xsl:for-each select="subfield[not(contains(., 'Výzdoba'))]">
            <p>
                <xsl:value-of select="normalize-space(.)"/>
            </p>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="datafield[@tag='500'][contains(subfield, 'Výzdoba')]" mode="vyzdoba">
        <xsl:variable name="vyzdoba">
            <xsl:value-of select="substring-after(subfield, 'Výzdoba: ')"/>
        </xsl:variable>
        <decoDesc>
            <p>
                <xsl:value-of
                    select="concat(translate(substring($vyzdoba,1,1),$lc,$uc), substring($vyzdoba,2))"
                />
            </p>
        </decoDesc>
    </xsl:template>
</xsl:stylesheet>
