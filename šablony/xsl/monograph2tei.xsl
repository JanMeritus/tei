<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" exclude-result-prefixes="xd" version="2.0">

    <xsl:output indent="yes"/>
    <xsl:variable name="sysno35ORcarak37"
        select="number(string-length(//MonographPage[1]//PageImage[1]/@href))"/>
    
    <xsl:variable name="carakORsysno">
        <xsl:choose>
            <xsl:when test="$sysno35ORcarak37 = 35">
                <xsl:value-of select="substring(//MonographPage[1]//PageImage[1]/@href, 8, 9)"/>
            </xsl:when>
            <xsl:when test="$sysno35ORcarak37 = 37">
                <xsl:value-of select="substring(//MonographPage[1]//PageImage[1]/@href, 8, 10)"
                />
            </xsl:when>
        </xsl:choose>
    </xsl:variable>
    
    <xsl:template match="/">
        

        <xsl:variable name="sysno"
            select="substring-after(//Monograph/UniqueIdentifier[1]/UniqueIdentifierURNType[1],
            'urn:sys:')"/>
        <xsl:variable name="knihovna"
            select="translate(//Monograph/MonographOwner/Library, ' ', '')"/>
        <xsl:variable name="sysno1" select="substring($sysno, 1, 3)"/>
        <xsl:variable name="sysno2" select="substring($sysno, 4, 3)"/>
        <xsl:variable name="sysno3" select="substring($sysno, 7, 3)"/>
        <xsl:variable name="signatura"
            select="translate(//Monograph/MonographOwner[1]/ShelfNumber[1]/text(), ' ', '')"/>
        <xsl:result-document href="{concat($signatura, '.tei.xml')}">
            <TEI xmlns="http://www.tei-c.org/ns/1.0">
                <teiHeader>
                    <fileDesc>
                        <titleStmt>
                            <title/>
                        </titleStmt>
                        <publicationStmt>
                            <date when="{current-date()}"/>

                            <idno type="Kramerius3">
                                <xsl:value-of
                                    select="Monograph/UniqueIdentifier[1]/UniqueIdentifierURNType[1]"
                                />
                            </idno>
                            <publisher>Moravská zemská knihovna</publisher>
                        </publicationStmt>
                        <sourceDesc>
                            <xsl:element name="msDesc">
                                <xsl:attribute name="xml:id"
                                    select="concat('CZ_', $knihovna, '_', $carakORsysno)"/>
                                <msIdentifier>
                                    <country>Česko</country>
                                    <region>Morava</region>
                                    <settlement>Brno</settlement>
                                    <repository>Moravská zemská knihovna v Brně</repository>
                                    <collection>MZK03</collection>
                                    <idno>
                                        <xsl:value-of select="Monograph/MonographOwner/ShelfNumber"
                                        />
                                    </idno>
                                </msIdentifier>
                                <head>
                                    <xsl:if
                                        test="Monograph/MonographBibliographicRecord[1]/Creator[1]">
                                        <persName type="author">
                                            <xsl:value-of
                                                select="Monograph/MonographBibliographicRecord[1]/Creator[1]/CreatorName"/>
                                            <xsl:text> </xsl:text>
                                            <xsl:value-of
                                                select="Monograph/MonographBibliographicRecord[1]/Creator[1]/CreatorSurname"
                                            />
                                        </persName>
                                    </xsl:if>
                                    <title>
                                        <xsl:value-of
                                            select="Monograph/MonographBibliographicRecord[1]/Title[1]/MainTitle[1]"
                                        />
                                    </title>
                                    <xsl:if
                                        test="Monograph/MonographBibliographicRecord[1]/Publisher[1]/PlaceOfPublication[1]">
                                        <placeName type="publisher">
                                            <xsl:value-of
                                                select="Monograph/MonographBibliographicRecord[1]/Publisher[1]/PlaceOfPublication[1]"
                                            />
                                        </placeName>
                                    </xsl:if>
                                    <xsl:if
                                        test="Monograph/MonographBibliographicRecord[1]/Publisher[1]/PublisherName[1]">
                                        <persName type="publisher">
                                            <xsl:value-of
                                                select="Monograph/MonographBibliographicRecord[1]/Publisher[1]/PublisherName[1]"
                                            />
                                        </persName>
                                    </xsl:if>
                                    <xsl:if
                                        test="Monograph/MonographBibliographicRecord[1]/Publisher[1]/DateOfPublication[1]">
                                        <origDate>
                                            <xsl:value-of
                                                select="Monograph/MonographBibliographicRecord[1]/Publisher[1]/DateOfPublication[1]"
                                            />
                                        </origDate>
                                    </xsl:if>
                                </head>
                                <xsl:if test="Monograph/MonographBibliographicRecord[1]/Language[1]">
                                    <msContents>
                                        <textLang>
                                            <xsl:attribute name="mainLang">
                                                <xsl:value-of
                                                  select="Monograph/MonographBibliographicRecord[1]/Language[1]"
                                                />
                                            </xsl:attribute>
                                        </textLang>
                                    </msContents>
                                </xsl:if>
                                <physDesc>
                                    <xsl:if
                                        test="Monograph/MonographBibliographicRecord[1]/Notes[1]">
                                        <p>
                                            <xsl:value-of
                                                select="Monograph/MonographBibliographicRecord[1]/Notes[1]"
                                            />
                                        </p>
                                    </xsl:if>
                                    <objectDesc>
                                        <supportDesc>
                                            <extent>
                                                <xsl:value-of
                                                  select="Monograph/MonographBibliographicRecord[1]/PhysicalDescription[1]/Extent[1]"
                                                />
                                            </extent>
                                        </supportDesc>
                                    </objectDesc>
                                </physDesc>
                            </xsl:element>
                        </sourceDesc>
                    </fileDesc>
                    <revisionDesc>
                        <change when="{current-date()}">
                            <persName>Přemysl Bar</persName>
                            <note>Transformace z monograph.dtd (Kramerius3) do TEI</note>
                        </change>
                    </revisionDesc>
                </teiHeader>
                <facsimile>

                    <xsl:attribute name="xml:base">
                        <xsl:value-of
                            select="concat('http://hades.mzk.cz/media/mzk03/', $sysno1,
                            '/', $sysno2, '/', $sysno3, '/', $carakORsysno, '/')"
                        />
                    </xsl:attribute>
                    <front>
                        <head>Digitální dokument rukopisu <bibl>
                                <idno><xsl:value-of select="Monograph/MonographOwner/ShelfNumber"
                                    /></idno>
                            </bibl>
                        </head>

                    </front>
                    <xsl:for-each select="Monograph/MonographPage">
                        <xsl:apply-templates select="."/>
                    </xsl:for-each>
                </facsimile>
            </TEI>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="MonographPage">
        <xsl:variable name="cislo_obrazku">
            <xsl:choose>
                <xsl:when test="$sysno35ORcarak37 = 35">
                    <xsl:value-of select="substring(PageRepresentation[1]/PageImage[1]/@href, 27, 5)"/>
                </xsl:when>
                <xsl:when test="$sysno35ORcarak37 = 37">
                    <xsl:value-of select="substring(PageRepresentation[1]/PageImage[1]/@href, 29, 5)"
                    />
                </xsl:when>
            </xsl:choose>
        </xsl:variable>
        <surface>
            <xsl:attribute name="xml:id" select="concat('id_', $cislo_obrazku)"/>
            <desc>
                <label>
                    <xsl:choose>
                        <xsl:when test="@Type='FrontCover'">
                            <xsl:text>FC</xsl:text>
                        </xsl:when>
                        <xsl:when test="@Type='FrontEndSheet'">
                            <xsl:text>FS</xsl:text>
                        </xsl:when>
                        <xsl:when test="@Type='BackCover'">
                            <xsl:text>BC</xsl:text>
                        </xsl:when>
                        <xsl:when test="@Type='BackEndSheet'">
                            <xsl:text>BS</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="PageNumber[1]"/>
                        </xsl:otherwise>
                    </xsl:choose>


                </label>
            </desc>
            <graphic>
                <xsl:attribute name="url" select="PageRepresentation[1]/PageImage[1]/@href"/>
            </graphic>
        </surface>
    </xsl:template>
</xsl:stylesheet>
