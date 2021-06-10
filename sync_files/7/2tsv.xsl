<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8" />
    <xsl:template match="/">
        <xsl:apply-templates select="//item" />
    </xsl:template>

    <xsl:template match="item">
        <xsl:value-of select="normalize-space(title)" />
        <xsl:text>&#x9;</xsl:text>
        <xsl:value-of select="normalize-space(creator)" />
        <xsl:text>&#x9;</xsl:text>
        <xsl:value-of select="normalize-space(publisher)" />
        <xsl:text>&#x9;</xsl:text>
        <xsl:value-of select="normalize-space(price)" />
        <xsl:text>&#x9;</xsl:text>
        <xsl:value-of select="normalize-space(date/year)" />
        <xsl:text>-</xsl:text>
        <xsl:value-of select="normalize-space(date/month)" />
        <xsl:text>-</xsl:text>
        <xsl:value-of select="normalize-space(date/day)" />
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>
</xsl:stylesheet>