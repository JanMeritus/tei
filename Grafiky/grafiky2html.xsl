<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    <xsl:template match="/">

        <html>
            <body>

                <h4>Seznam digitalizovaných grafik</h4>
                <table border="1">
                    <tr>
                        <td>Signatura</td>
                        <td>Sysno</td>
                        <td>Soubor</td>
                        <td>URL na hades</td>
                        <td>URL na imageserver</td>
                        
                    </tr>
                    <xsl:apply-templates select="/seznam/record">
                        <xsl:sort select="signatura"/>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="record"> 
        <xsl:variable name="url" select="url"/>
        <xsl:variable name="pole856u" select="pole856u"/>
            
        <tr>
            <td><xsl:value-of select="signatura"/></td>
            <td><xsl:value-of select="sysno"/></td>
            <td><xsl:value-of select="soubor"/></td>
            <td><a href="{$url}" target="_blank">hades</a></td>
            <td><xsl:if test="pole856u/text()"><a target="_blank" href="{$pole856u}">imageserver</a></xsl:if></td>
            
            
        </tr>
    
    </xsl:template>
</xsl:stylesheet>
