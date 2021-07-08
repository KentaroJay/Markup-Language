<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8" indent="yes" />
    <xsl:template match="/">
    xsltproc -o 01.html 01.xsl data0419.xml
        <xsl:apply-templates select="books/item" />
    </xsl:template>
    <xsl:template match="item">
        xsltproc --param no "'<xsl:value-of select="@no" />'" -o <xsl:value-of select="@no" />.html detail.xsl data0419.xml
    </xsl:template>
</xsl:stylesheet>