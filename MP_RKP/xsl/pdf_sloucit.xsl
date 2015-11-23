<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:preserve-space elements="p title"/>
    
    <xsl:output method="xml" indent="no" encoding="UTF-8"/>
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="page" page-height="400mm" page-width="300mm"
                    margin-top="10mm" margin-bottom="10mm" margin-left="20mm" margin-right="20mm">
                    <fo:region-body margin-top="0mm" margin-bottom="10mm" margin-left="0mm"
                        margin-right="0mm"/>
                    <fo:region-before extent="10mm"/>
                    <fo:region-after extent="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="page">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-weight="bold" font-size="36pt" line-height="48pt"
                        font-family="TimesNewRoman" color="black" text-align="center"> </fo:block>
                    
                    <xsl:apply-templates select="document('MP-RKP-0000.002.xml')//msDesc"/>
                        
                    
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
    <xsl:template match="msDesc">
        <xsl:apply-templates select="msIdentifier"/>
        <xsl:apply-templates select="msContents"/>
    </xsl:template>
    
    <xsl:template match="msIdentifier">
        
        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="18pt" line-height="25pt"
            color="black" space-after="25pt" space-before="25pt" text-align="center"
            page-break-after="avoid">
            
            <fo:inline text-align="center"> 
                
                <xsl:value-of
                    select="document('MP-RKP-0000.002.xml')//altIdentifier[@type='other']/idno"/><xsl:text>
                        - </xsl:text>
                <xsl:value-of
                    select="document('MP-RKP-0000.008.xml')//altIdentifier[@type='other']/idno"/>
                
            </fo:inline>
             
        </fo:block>
        
        <fo:block font-family="TimesNewRoman" font-size="14pt" line-height="25pt" color="black"
            space-after="20pt" text-align="justify" page-break-after="avoid">
            <fo:inline>
                <xsl:choose>
                    <xsl:when test="//head/origDate[@notAfter='1550' and @notBefore='1501']">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super">1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[@notAfter='1600' and @notBefore='1551']">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super">2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[@notAfter='1650' and @notBefore='1601']">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super">1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[@notAfter='1700' and @notBefore='1651']">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super">2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[@notAfter='1750' and @notBefore='1701']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super">1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[@notAfter='1800' and @notBefore='1751']">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super">2</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[@notAfter='1850' and @notBefore='1801']">
                        <fo:inline>XIX<fo:inline font-size="10pt" vertical-align="super">1</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[contains(., 'Polovina 16.')]">
                        <fo:inline>XVI<fo:inline font-size="10pt" vertical-align="super">med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[contains(., 'Polovina 17.')]">
                        <fo:inline>XVII<fo:inline font-size="10pt" vertical-align="super">med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[contains(., 'Polovina 18.')]">
                        <fo:inline>XVIII<fo:inline font-size="10pt" vertical-align="super">med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[contains(., 'Polovina 19.')]">
                        <fo:inline>XIX<fo:inline font-size="10pt" vertical-align="super">med.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[contains(., 'Přelom 16. a 17.')]">
                        <fo:inline>XVI<fo:inline
                            vertical-align="super">ex.</fo:inline>/XVII<fo:inline
                                vertical-align="super">in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[contains(., 'Přelom 17. a 18.')]">
                        <fo:inline>XVII<fo:inline
                            vertical-align="super">ex.</fo:inline>/XVIII<fo:inline
                                vertical-align="super">in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:when test="//head/origDate[contains(., 'Přelom 18. a 19.')]">
                        <fo:inline>XVIII<fo:inline
                            vertical-align="super">ex.</fo:inline>/XIX<fo:inline
                                vertical-align="super">in.</fo:inline></fo:inline>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="//head/origDate"/>
                    </xsl:otherwise>
                </xsl:choose>
                
                
            </fo:inline>
            
            <xsl:if test="//head[not(origPlace='Česko')] and //head[not(origPlace='Morava')] and
                //head[not(origPlace='Německo')]">
                <fo:leader leader-length="30pt" leader-pattern="space"/>
                <fo:inline>
                    <xsl:for-each select="//head/origPlace">
                        <xsl:value-of select="//head/origPlace"/>
                    </xsl:for-each>
                </fo:inline>
            </xsl:if>
            
            <fo:leader leader-length="30pt" leader-pattern="space"/>
            <xsl:if test="//supportDesc/support/p/material[contains(., 'Papír')]">
                <fo:inline>
                    <xsl:text>pap.</xsl:text>
                </fo:inline>
            </xsl:if>
            <xsl:if test="//supportDesc/support/p/material[contains(., 'Pergamen')]">
                <fo:inline>
                    <xsl:text>perg.</xsl:text>
                </fo:inline>
            </xsl:if>
            
            <fo:leader leader-length="30pt" leader-pattern="space"/>
            <fo:inline>
                7 sv.
            </fo:inline>
            <fo:leader leader-length="30pt" leader-pattern="space"/>
            
            <fo:inline>
                <xsl:choose>
                    <xsl:when test="//dimensions[@type='leaf']">
                        <xsl:value-of
                            select="//dimensions[@type='leaf']/height"/>
                        <xsl:text> x </xsl:text>
                        <xsl:value-of
                            select="//dimensions[@type='leaf']/width"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of
                            select="//dimensions/height"/>
                        <xsl:text> x </xsl:text>
                        <xsl:value-of select="//dimensions/width"/>
                    </xsl:otherwise>
                </xsl:choose>
                
                
            </fo:inline>
            <fo:leader leader-length="30pt" leader-pattern="space"/>
            <fo:inline>
                <xsl:choose>
                    <xsl:when test="//physDesc/bindingDesc/p[contains(., 'Chybí desky')] or //physDesc/bindingDesc/p[contains(.,
                        'Chybí desky')]">
                        <xsl:text>bez vaz.</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        
                        <xsl:text>vaz. </xsl:text>
                        <xsl:if test="//physDesc/bindingDesc/p[contains(., 'vepř')] or //physDesc/bindingDesc/p[contains(.,
                            'Vepř')]">
                            <xsl:text>kož.,
                    vepř.</xsl:text>
                        </xsl:if>
                        <xsl:if test="//physDesc/bindingDesc/p[contains(., 'Polokož')] or
                            //physDesc/bindingDesc/p[contains(., 'polokož')]">
                            <xsl:text>polokož.</xsl:text>
                        </xsl:if>
                        <xsl:if test="//physDesc/bindingDesc/p[not(contains(., 'Polo'))] and
                            //physDesc/bindingDesc/p[not(contains(., 'polo'))] and
                            //physDesc/bindingDesc/p[contains(., 'kož')] or
                            //physDesc/bindingDesc/p[contains(., 'Kož')]">
                            <xsl:text>kož.</xsl:text>
                        </xsl:if>
                        
                        <xsl:if
                            test="//physDesc/bindingDesc/p[contains(.,
                            'lepenková')] or //physDesc/bindingDesc/p[contains(.,
                            'Lepenková')]">
                            <xsl:text>lepenk.</xsl:text>
                        </xsl:if>
                        <xsl:if test="//physDesc/bindingDesc/p[contains(.,
                            'pergamen')] or //physDesc/bindingDesc/p[contains(.,
                            'Pergamen')]">
                            <xsl:text>perg.</xsl:text>
                        </xsl:if>
                        <xsl:if test="//physDesc/bindingDesc/p[contains(.,
                            'brož')] or //physDesc/bindingDesc/p[contains(.,
                            'Brož')]">
                            <xsl:text>brož.</xsl:text>
                        </xsl:if>
                        <xsl:if test="//physDesc/bindingDesc/p[contains(.,
                            'plátě')] or //physDesc/bindingDesc/p[contains(.,
                            'Plátě')]">
                            <xsl:text>plát.</xsl:text>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
            </fo:inline>
       
        </fo:block>
        
        <fo:block font-family="TimesNewRoman" font-weight="bold" font-size="18pt" line-height="25pt" 
            color="black" margin-left="150pt" space-after="20pt" text-align="justify">
            
            <xsl:if test="//head/bibl/author">
                <xsl:value-of select="//head/bibl/author"/><xsl:text>: </xsl:text>
            </xsl:if>
            <xsl:if test="//head/title[@type='edition']">
                <xsl:apply-templates select="//head/title[@type='edition']/child::node()"/>
            </xsl:if>
            
        </fo:block>
        
    </xsl:template>
    
    <xsl:template match="msContents">
        <fo:table space-after="10pt" space-before="10pt">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body font-family="TimesNewRoman" font-size="18pt" line-height="25pt"
                text-align="left">
                <fo:table-row border-width="70pt">
                    <fo:table-cell width="150pt">
                        <fo:block> <xsl:text>T. </xsl:text><xsl:number format="1"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <xsl:value-of select="document('MP-RKP-0000.002')"></xsl:value-of>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
            
    </xsl:template>
    
    <xsl:template match="supplied">
        <fo:block>  <fo:inline font-style="normal">[<xsl:value-of select="."/>]</fo:inline></fo:block>
    </xsl:template>
    
   </xsl:stylesheet>
