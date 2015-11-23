<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/body[1]/spreadsheet[1]/table[4]">
            <xsl:sort select="table-row/table-cell[1]"/>
        </xsl:apply-templates>




    </xsl:template>
    <xsl:template match="table[4]">
        <seznam type="grafiky">
            <xsl:for-each select="table-row[table-cell[2] and table-cell[1]/node()]">
                <xsl:variable name="cislo_zaznamu">
                    
                    <xsl:number count="table-row[table-cell[2] and table-cell[1]/node()]"/>
                    
                    
                </xsl:variable>
                <xsl:variable name="sysno"
                    select="normalize-space(translate(table-cell[1], ' /:', ''))"/>
                <record n="{$cislo_zaznamu}">
                    <sysno>
                        <xsl:value-of select="normalize-space(translate(table-cell[1], ' /:', ''))"
                        />
                    </sysno>
                    <soubor>
                        <xsl:value-of select="normalize-space(table-cell[2])"/>

                    </soubor>
                    <xsl:choose>
                        <xsl:when test="following-sibling::table-row[1][not(table-cell[1]/node())] and following-sibling::table-row[7][not(table-cell[1]/node())]">
                            
                            <soubor>
                                <xsl:value-of select="normalize-space(following-sibling::table-row[1][not(table-cell[1]/node())]/table-cell[2])"/>
                            </soubor>
                            <soubor>
                                <xsl:value-of select="normalize-space(following-sibling::table-row[2][not(table-cell[1]/node())]/table-cell[2])"/>
                            </soubor>
                            <soubor>
                                <xsl:value-of select="normalize-space(following-sibling::table-row[3][not(table-cell[1]/node())]/table-cell[2])"/>
                            </soubor>
                            <soubor>
                                <xsl:value-of select="normalize-space(following-sibling::table-row[4][not(table-cell[1]/node())]/table-cell[2])"/>
                            </soubor>
                            <soubor>
                                <xsl:value-of select="normalize-space(following-sibling::table-row[5][not(table-cell[1]/node())]/table-cell[2])"/>
                            </soubor>
                            <soubor>
                                <xsl:value-of select="normalize-space(following-sibling::table-row[6][not(table-cell[1]/node())]/table-cell[2])"/>
                            </soubor>
                            <soubor>
                                <xsl:value-of select="normalize-space(following-sibling::table-row[7][not(table-cell[1]/node())]/table-cell[2])"/>
                            </soubor>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:choose>
                            <xsl:when test="following-sibling::table-row[1][not(table-cell[1]/node())]">
                                
                                <soubor>
                                    <xsl:value-of select="normalize-space(following-sibling::table-row[not(table-cell[1]/node())]/table-cell[2])"/>
                                    
                                </soubor>
                                
                            </xsl:when>
                            </xsl:choose>
                        </xsl:otherwise>
                    </xsl:choose>
                        
                        
                    
                    <url type="hades">
                        <xsl:value-of
                            select="concat('http://hades.mzk.cz/media/mzk03/', substring($sysno, 1, 3), '/', substring($sysno, 4, 3), '/', substring($sysno, 7, 3))"
                        />
                    </url>
                </record>
            </xsl:for-each>
        </seznam>
    </xsl:template>
</xsl:stylesheet>
