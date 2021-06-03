<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <output>
            <xsl:apply-templates select="input/data" />
        </output>
    </xsl:template>
    <xsl:template match="data">
        <data>
            <xsl:call-template name="sliceword">
                <xsl:with-param name="str" select="normalize-space(text())" />
            </xsl:call-template>
        </data>
    </xsl:template>
    <xsl:template name="sliceword">
        <xsl:param name="str" select="''" />
        <xsl:if test="string-length($str) &gt; 0">
            <word>
                <xsl:value-of select="substring-before($str, ' ')" />
            </word>
            <xsl:call-template name="sliceword">
                <xsl:with-param name="str" select="substring-after($str, ' ')" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>