<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="year" select="'2008'" />
    <xsl:output method="xml" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <output>
            <memo>
                Publishe Year: <xsl:value-of select="$year" />
            </memo>
            <xsl:apply-templates select="books/item">
                <xsl:sort select="date/year" data-type="number" order="ascending" />
                <xsl:sort select="date/month" data-type="number" order="ascending" />
                <xsl:sort select="date/day" data-type="number" order="ascending" />
            </xsl:apply-templates>
        </output>
    </xsl:template>

    <xsl:template match="item">
        <xsl:if test="contains(date/year, $year)">
            <item>
                <isbn>
                    <xsl:value-of select="isbn" />
                </isbn>
                <title>
                    <xsl:value-of select="title" />
                </title>
                <date>
                    <xsl:value-of select="date/year" />
-                    <xsl:value-of select="date/month" />
-                    <xsl:value-of select="date/day" />
                </date>
                <creator>
                    <xsl:value-of select="creator" />
                </creator>
            </item>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>