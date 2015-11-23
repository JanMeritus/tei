<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="tei" version="2.0">
    <xsl:output doctype-system="enrich.dtd" indent="yes"/>

    <xsl:template match="/">

        <TEI>
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title/>
                    </titleStmt>
                    <publicationStmt>
                        <idno type="control_number" xml:base="MZK03">001082736</idno>
                        <idno type="shelf_mark" xml:base="MZK03">A-0000.135</idno>
                        <publisher>Moravská zemská knihovna</publisher>
                    </publicationStmt>
                    <sourceDesc>
                        <!-- Deponát - rukopis nemá čárový kód -->
                        <msDesc xml:id="CZ_BOA001_">
                            <msIdentifier>
                                <country>Česko</country>
                                <region>Morava</region>
                                <settlement>Brno</settlement>
                                <repository>Moravská zemská knihovna v Brně</repository>
                                <idno>A-0000.135</idno>
                                <altIdentifier>
                                    <country>Česko</country>
                                    <region>Morava</region>
                                    <settlement>Brno</settlement>
                                    <institution nymRef="kn20010710515" xml:lang="lat">Monasterium
                                        eremitarum S. Augustini Vetero-Brunae</institution>
                                    <repository nymRef="kn20010710515" xml:lang="lat">Bibliotheca
                                        Monasterii Eremitarum S. Augustini
                                        Vetero-Brunae</repository>
                                    <idno/>
                                </altIdentifier>
                            </msIdentifier>
                            <head>
                                <title>
                                    <supplied>Svazek fragmentů, sňatých většinou z vazeb různých
                                        rukopisů archivní povahy</supplied>
                                </title>
                                <origDate notAfter="1400" notBefore="1201">1201-1400</origDate>
                            </head>
                            <msContents/>

                            <physDesc/>
                            <additional/>

                            <xsl:apply-templates select="document('A135-1.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-2.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-3.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-4.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-5.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-6.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-7.tei.xml')//tei:msDesc"/>
                            
                            <xsl:apply-templates select="document('A135-8.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-9.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-10.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-11.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-12.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-13.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-14.tei.xml')//tei:msDesc"/>
                            
                            <xsl:apply-templates select="document('A135-15.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-16.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-17.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-18.tei.xml')//tei:msDesc"/>
                            <xsl:apply-templates select="document('A135-19.tei.xml')//tei:msDesc"/>


                        </msDesc>
                        <xsl:apply-templates
                            select="document('A135-1.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates
                            select="document('A135-2.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates
                            select="document('A135-3.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates
                            select="document('A135-4.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates
                            select="document('A135-5.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates
                            select="document('A135-6.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates
                            select="document('A135-7.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        
                        <xsl:apply-templates select="document('A135-8.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates select="document('A135-9.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates select="document('A135-10.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates select="document('A135-11.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates select="document('A135-12.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates select="document('A135-13.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates select="document('A135-14.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        
                        <xsl:apply-templates select="document('A135-15.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates select="document('A135-16.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates select="document('A135-17.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates select="document('A135-18.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        <xsl:apply-templates select="document('A135-19.tei.xml')//tei:msDesc/following-sibling::node()"/>
                        

                    </sourceDesc>
                </fileDesc>
                <revisionDesc>
                    <xsl:apply-templates
                        select="document('A135-1.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates
                        select="document('A135-2.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates
                        select="document('A135-3.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates
                        select="document('A135-4.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates
                        select="document('A135-5.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates
                        select="document('A135-6.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates
                        select="document('A135-7.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"
                    />
                    <xsl:apply-templates select="document('A135-8.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates select="document('A135-9.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates select="document('A135-10.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates select="document('A135-11.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates select="document('A135-12.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates select="document('A135-13.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates select="document('A135-14.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    
                    <xsl:apply-templates select="document('A135-15.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates select="document('A135-16.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates select="document('A135-17.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates select="document('A135-18.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    <xsl:apply-templates select="document('A135-19.tei.xml')//tei:teiHeader/tei:revisionDesc/tei:change"/>
                    
                    
                    <change when="2012-02-24">
                        <persName>Přemysl Bar</persName>
                        <note>Sloučení dokumentů TEI A135-1.tei.xml až A135-19.tei.xml do jednoho dokumentu A-0000.135.tei.xml</note>
                    </change>
                </revisionDesc>
            </teiHeader>
            <xsl:element name="facsimile">
                <xsl:attribute name="xml:base">
                    <xsl:text>http://imageserver.mzk.cz/mzk03/001/082/736/</xsl:text>
                </xsl:attribute>
                <front>
                    <head>Digitální dokument rukopisu <bibl>
                            <idno>A-0000.135</idno>
                        </bibl>
                    </head>
                    <note>Dokument byl digitalizován v rámci projektu VISK6 v roce 2010 firmou
                            <orgName>Microna</orgName> (Jungmannova 950, 664 34 Kuřim) </note>
                </front>
                <xsl:apply-templates select="document('A135-1.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-2.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-3.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-4.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-5.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-6.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-7.tei.xml')//tei:facsimile/node()"/>
                
                <xsl:apply-templates select="document('A135-8.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-9.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-10.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-11.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-12.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-13.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-14.tei.xml')//tei:facsimile/node()"/>
                
                <xsl:apply-templates select="document('A135-15.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-16.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-17.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-18.tei.xml')//tei:facsimile/node()"/>
                <xsl:apply-templates select="document('A135-19.tei.xml')//tei:facsimile/node()"/>
                
                
            </xsl:element>
        </TEI>
    </xsl:template>
    <xsl:template match="tei:msDesc">
        <msPart n="{substring-after(tei:msIdentifier[1]/tei:idno[1], '/')}">
            <altIdentifier>
                <idno>
                    <xsl:value-of select="tei:msIdentifier[1]/tei:idno[1]"/>
                </idno>
            </altIdentifier>
            <xsl:apply-templates select="tei:head"/>
            <xsl:apply-templates select="tei:msContents"/>
            <xsl:apply-templates select="tei:physDesc"/>
            <xsl:apply-templates select="tei:history"/>
            <xsl:apply-templates select="tei:additional"/>
        </msPart>
    </xsl:template>
    <xsl:template match="node()|@*">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="tei:locus/@from">
        <xsl:variable name="id" select="substring-before(., '_')"/>
        <xsl:variable name="folio" select="substring-after(., '_')"/>
        <xsl:variable name="cislo_zlomku"
            select="substring-after(preceding::tei:msIdentifier[1]/tei:idno[1], '/')"/>
        <xsl:attribute name="from">

            <xsl:value-of select="concat('id_', 'part', $cislo_zlomku, '_', $folio)"/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="tei:locus/@to">
        <xsl:variable name="id" select="substring-before(., '_')"/>
        <xsl:variable name="folio" select="substring-after(., '_')"/>
        <xsl:variable name="cislo_zlomku"
            select="substring-after(preceding::tei:msIdentifier[1]/tei:idno[1], '/')"/>
        <xsl:attribute name="to">

            <xsl:value-of select="concat('id_', 'part', $cislo_zlomku, '_', $folio)"/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="tei:surface/@xml:id">
        <xsl:variable name="id" select="substring-before(., '_')"/>
        <xsl:variable name="folio" select="substring-after(., '_')"/>
        <xsl:variable name="cislo_zlomku"
            select="substring-after(preceding::tei:msIdentifier[1]/tei:idno[1], '/')"/>
        <xsl:attribute name="xml:id">
            
            <xsl:value-of select="concat('id_', 'part', $cislo_zlomku, '_', $folio)"/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="tei:facsimile/tei:front"/>


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
    <xsl:template match="@type">
        <xsl:choose>
            <xsl:when test=". = 'unknown'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@unit">
        <xsl:choose>
            <xsl:when test=". = 'mm'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@defective">
        <xsl:choose>
            <xsl:when test=". = 'false'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@full">
        <xsl:choose>
            <xsl:when test=". = 'yes'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@material">
        <xsl:choose>
            <xsl:when test=". = 'unknown'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="@anchored">
        <xsl:choose>
            <xsl:when test=". = 'true'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="@reason">
        <xsl:choose>
            <xsl:when test=". = 'unknown'"/>
            <xsl:otherwise>
                <xsl:attribute name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
