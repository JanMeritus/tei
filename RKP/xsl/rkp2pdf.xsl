<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:strip-space
        elements="publicationStmt msIdentifier head summary textLang msItem support extent layoutDesc accMat additions bindingDesc decoDesc handDesc musicNotation sealDesc typeDesc history additional bibl list listBibl listEvent listOrg listPerson listPlace revisionDesc dimensions msPart altIdentifier locus"/>
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:variable name="uc">ABCDEFGHIJKLMNOPQRSTUVWXYZĚŠČŘŽÝÁÍÉÚŮŇ</xsl:variable>
    <xsl:variable name="lc">abcdefghijklmnopqrstuvwxyzěščřžýáíéúůň</xsl:variable>

    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="page" page-height="270mm" page-width="200mm"
                    margin-top="25mm" margin-bottom="25mm" margin-left="25mm" margin-right="25mm">
                    <fo:region-body margin-top="0mm" margin-bottom="0mm" margin-left="0mm"
                        margin-right="0mm"/>
                    <fo:region-before extent="10mm"/>
                    <fo:region-after extent="10mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="page">
                <fo:flow font-family="TimesNewRoman" flow-name="xsl-region-body">

                    <!--<xsl:apply-templates  select="document('RKP-0002.928.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0046.283.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.983.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.984.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.985.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.986.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.987.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.988.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.989.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.991.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.992.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.993.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.994.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.995.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.996.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.997.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.998.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.999,1.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0047.999,2.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.000.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.001.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.002.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.003.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.004.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.005.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.006.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.007.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.008.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.009.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.010.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.011.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.012.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.013.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.014,1.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.014,2.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.014,3.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.015,1.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.015,2.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.016.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.017.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.018.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.019.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.020.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.021,1.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.021,2.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.021,3.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.022.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.023.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.024.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.025.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.026.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.027.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.028.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.029.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.030.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.031.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.032.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.033.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.034.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.035.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.036.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.037.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.038.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.039.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.040.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.041.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.042.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.043.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.044.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.045.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.046.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.047,1-5.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.048.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.049.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.050.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.051,1.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.051,3.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.052.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.053.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.054.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.055.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.056.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.057.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.058.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.059.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.060.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.061.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.062.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.063.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.064.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.065.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.066.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.067.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.068.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.069.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.070.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.071.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.072.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.073.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.074.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.075.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.076.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.077.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.078.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.079.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.080.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.081.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.082.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.083.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.084.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.085.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.086.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0048.088.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.294.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.363.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.635.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.651.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.658.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.666.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.673.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.689.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.704a.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.704b.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.704c.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0050.704d.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0084.875.tei.xml')/TEI/teiHeader"/>
                    <xsl:apply-templates  select="document('RKP-0089.848.tei.xml')/TEI/teiHeader"/>-->
  
  
  <xsl:apply-templates select="document('RKP-0111.777.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0150.117,1.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0150.117,2.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0150.117,2.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0264.722,1.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0264.722,2.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0264.722,3.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0264.722,4.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0264.722,5.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0292.510.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0292.511.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0300.228.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0323.187.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0340.914.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0381.299.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0382.269.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0383.764.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0383.771.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0385.238.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0385.239.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0422.849.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0426.050.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0426.051.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0432.481.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0444.223.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0444.793.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0452.639.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0453.008.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0456.309.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0483.661.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0494.818.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0495.705.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0500.631.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0505.508.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0505.509.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0534.963.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0535.657.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0549.455.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0553.983.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0553.984.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0561.115.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0581.063.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0581.507.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0582.160.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0586.776.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0603.680.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0614.382.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0614.544.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0659.140.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0660.649.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0660.650.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0660.651.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0669.469.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0674.520.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0675.509.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0678.102.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0684.738.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0700.300.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0712.869.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0712.870.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0716.845.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0718.427.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0728.379.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0737.808.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0755.199.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0755.207.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0757.421.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0758.377.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0761.021.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0762.520.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0762.859.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0763.259.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0763.627.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0767.523.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0776.930.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0777.362.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0777.363.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0777.364.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0777.365.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0777.496.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0782.061.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0783.266.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0786.758.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0791.210.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0791.211.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0792.524.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0797.996.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0800.605.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0810.072.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0810.775.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0811.128.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0811.132.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0815.016.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0820.800.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0822.891.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0823.103.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0823.104.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0823.450.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0824.415.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0824.416.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0824.836.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0824.843.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0824.844.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0825.431.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0827.192.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0827.195.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0833.293.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0833.699.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0838.458.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0840.280.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0841.230.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0841.833.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0842.838.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0843.422.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0843.625.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0845.211.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0847.032.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0847.215.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0847.777.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0848.692.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0849.766.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0851.777.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0852.376.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0856.841.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0862.351.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0862.753.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0862.967.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0862.968.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0862.969.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0863.188.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0865.210.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0865.885.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0866.433.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0866.615.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0868.493.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0872.188.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0873.228.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0874.666.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0874.667.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0875.747.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0876.568.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0879.386.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0879.737.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0881.572.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0883.508.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0887.380.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0889.410.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0889.746.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0890.203.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0890.293.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0891.250.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0891.251.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0891.252.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0891.253.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0891.254.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0891.255.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0892.625.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0892.631.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0892.795.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0892.855.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0892.856.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0892.858.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0893.351.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0893.367.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0893.612.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0893.632.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0893.887.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0894.204.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0894.205.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0894.214.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0894.215,2.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0894.215,3.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0894.762.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0894.889.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0894.890.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0895.604.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0895.606.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0896.378.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0896.384.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0896.548.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0897.118.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0897.435.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0897.818.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0897.819.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0899.592.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0899.593.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0899.594.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0899.938.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0899.939.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0899.944.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0899.951.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0900.252.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0900.258.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0900.962.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0902.023.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0905.151.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0906.666.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0906.692.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0907.191.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0908.008.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0909.901.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0912.751.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0913.566.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0915.750.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0915.790.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0916.696.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0916.697.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0917.955.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0917.956.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0919.190.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0919.959.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0919.960.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0921.152.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0921.155.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0921.494.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0922.730.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0924.793.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0928.540.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0930.311.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0930.312.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0931.411.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0931.723.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0932.913.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0933.335.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0935.171.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0938.756.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0939.396.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0940.370.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0941.363.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0943.713.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0943.740.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0943.843.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0948.390.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0955.437.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0956.031.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0956.034.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0956.035.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0959.051.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0959.953.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0972.764.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-0972.765.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.265.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.266.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.267.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.268.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.269.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.270.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.271.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.272.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.273.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.274.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.275.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.276.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.277.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.278.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.279.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.280.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.281.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.282.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.283.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.284.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.285.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.286.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.287.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.288.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.289.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.290.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.291.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.292.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.293.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.294.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.295.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.296.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.297.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.298.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.299.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.300.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.301.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.302.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.303.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.304.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.305.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.306.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.307.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.308.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.309.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.310.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.311.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.312.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.313.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.314.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.315.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1149.316.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.017.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.018.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.019.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.258.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.459.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.460.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.461.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.462.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.463.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.464.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.465.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.466.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.467.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.468.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1156.469.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.467.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.468.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.469.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.470.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.471.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.472.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.473.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.474.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.475.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.476.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.477.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.478.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.479.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.480.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.481.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.482.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.483,1.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.483,2.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.484.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.485.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.486.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1166.487.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.411.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.412.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.413.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.414.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.415.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.416.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.417.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.418.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.419.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.420.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.421.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.422.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1169.423.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1171.424,1.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1171.424,2.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1171.425.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1171.426.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1171.427.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1171.428.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1171.429.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1171.430.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1171.431.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1171.433.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.954.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.955.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.956.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.957.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.958.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.959.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.960.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.961.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.962.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.963.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.965.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.967.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.968.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1173.969.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1210.180.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1210.181.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1216.788.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1220.599.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1245.573.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.215.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.216.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.217.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.994.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.995,H.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.995,L-O.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.995,P.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.995,S.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.995,T-W.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.996.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.997.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.998.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1253.999.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1255.522.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1255.523.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1255.524.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1255.525.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1257.893.tei.xml')/TEI/teiHeader"/>
  <xsl:apply-templates select="document('RKP-1257.894.tei.xml')/TEI/teiHeader"/>



                    
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <xsl:template match="teiHeader">
        <fo:block>
            <xsl:apply-templates select="node()"/>
        </fo:block>
    </xsl:template>
    <xsl:template match="fileDesc">
        <xsl:apply-templates select="node()"/>
    </xsl:template>
    <xsl:template match="sourceDesc">
        <xsl:apply-templates select="node()"/>
    </xsl:template>
    <xsl:template match="msDesc">
        <fo:block margin-left="5%">
        <xsl:call-template name="bold"/>
        <xsl:apply-templates select="node()"/>
        </fo:block>
    </xsl:template>
    
    <xsl:template match="msContents">
        <fo:block margin-left="5%">
        <xsl:call-template name="bold"/>
        
            <xsl:apply-templates select="node()"/>
        </fo:block>
    </xsl:template>
    <xsl:template match="physDesc">
        <fo:block margin-left="5%">
        <xsl:call-template name="bold"/>
        
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    <xsl:template match="publicationStmt">
        <fo:block text-align="center" space-after="20pt" space-before="20pt">* * *</fo:block>
        
        <xsl:for-each select="node()">
            <fo:block>
                <fo:inline font-style="italic"><xsl:value-of select="local-name()"/> <xsl:apply-templates select="@*"/>:</fo:inline>
                <xsl:text> </xsl:text>
                <xsl:apply-templates/>
            </fo:block>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="msIdentifier">
        <fo:block margin-left="5%">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
        </fo:block>
    </xsl:template>
    <xsl:template match="head">
        <fo:block margin-left="5%">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
        </fo:block>
    </xsl:template>

    <xsl:template match="summary">
        <fo:block margin-left="5%">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
        </fo:block>
    </xsl:template>
    <xsl:template match="textLang">
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="msItem">
        <fo:block margin-left="5%">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
        </fo:block>
    </xsl:template>
<xsl:template match="msItem/locus">
    <xsl:choose>
        <xsl:when test="not(node())">
            <xsl:value-of select="@from"/>
            <xsl:text>-</xsl:text>
            <xsl:value-of select="@to"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:apply-templates/>
        </xsl:otherwise>
    </xsl:choose>
    
</xsl:template>
    <xsl:template match="support">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="support/p/dimensions">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="height">
        <xsl:text> </xsl:text>
        <fo:inline font-size="10pt" font-style="italic"><xsl:value-of select="name(.)"/></fo:inline>
        <xsl:text> </xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="width">
        <xsl:text> </xsl:text>
        <fo:inline font-size="10pt" font-style="italic"><xsl:value-of select="name(.)"/></fo:inline>
        <xsl:text> </xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="extent">
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="layoutDesc">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="accMat">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="additions">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="bindingDesc">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="decoDesc">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="handDesc">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="musicNotation">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="sealDesc">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="typeDesc">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="history">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="additional">
        <xsl:call-template name="bold"/>
        
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="msPart">
        <fo:block margin-left="5%">
            <xsl:call-template name="bold"/>
            <xsl:apply-templates select="node()"/>
        </fo:block>
    </xsl:template>
    <xsl:template match="msPart/altIdentifier">
        <fo:block margin-left="5%">
            <xsl:call-template name="bold"/>
            <xsl:call-template name="šablona"/>
        </fo:block>
    </xsl:template>
    
    
    <xsl:template match="listBibl/bibl">
        
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="sourceDesc/bibl">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="list">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="listBibl">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="listEvent">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="listPerson">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="listOrg">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="listPlace">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template match="revisionDesc">
        <xsl:call-template name="bold"/>
        <xsl:call-template name="šablona"/>
    </xsl:template>
    <xsl:template name="šablona">
        <xsl:choose>
            <xsl:when test="text()">
                
                <fo:block margin-left="5%">
                    <fo:inline font-style="italic"><xsl:value-of select="local-name()"/></fo:inline>
                    <xsl:if test="@*">
                        <xsl:text> </xsl:text> <xsl:apply-templates select="@*"/></xsl:if>
                    <xsl:text>: </xsl:text>
                    
                            <xsl:value-of select="."/>
                    
                </fo:block>
            </xsl:when>
            <xsl:when test="node()">
                
                <xsl:for-each select="node()">
                    <fo:block margin-left="5%">
                        <fo:inline font-style="italic">
                            <xsl:value-of select="local-name()"/>
                            <xsl:if test="@*">
                                <xsl:text> </xsl:text> <xsl:apply-templates select="@*"/> </xsl:if>
                        </fo:inline>
                        <xsl:text>: </xsl:text>
                        <xsl:choose>
                            <xsl:when test="not(node())">
                                <xsl:apply-templates select="."/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates/>
                            </xsl:otherwise>
                        </xsl:choose>
                        
                    </fo:block>
                </xsl:for-each>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="bold">
        <fo:block/>
        <fo:block font-weight="bold">
            <xsl:value-of select="local-name()"/>
            <xsl:if test="@*">
                <xsl:text> </xsl:text> <xsl:apply-templates select="@*"/> </xsl:if>
        </fo:block>
    </xsl:template>
    <xsl:template match="@*">
        <xsl:choose>
            <xsl:when test="name() = 'xml:lang'">
                (<xsl:value-of select="."/>)
            </xsl:when>
            <xsl:when test="name() = 'date'">
                (<xsl:value-of select="."/>)
            </xsl:when>
            <xsl:when test="name() = 'n'">
                (<xsl:value-of select="."/>)
            </xsl:when>
            <xsl:when test="name() = 'scribe'">
                (<xsl:value-of select="."/>)
            </xsl:when>
            <xsl:when test="name() = 'type'">
                (<xsl:value-of select="."/>)
            </xsl:when>
            
            <xsl:when test="name() = 'when'">
                (<xsl:value-of select="."/>)
            </xsl:when>
            <xsl:when test="name() = 'mainLang'">
                (<xsl:value-of select="."/>)
            </xsl:when>
        </xsl:choose>
        
    </xsl:template>
    
    
</xsl:stylesheet>
