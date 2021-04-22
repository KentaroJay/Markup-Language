<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html lang="ja">
            <head>
                <title>
                    <xsl:value-of select="全体/題名" />
                </title>
            </head>
            <body>
                <xsl:apply-templates select="全体/本文" />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="全体/本文">
        <h1>
            <xsl:value-of select="見出し" />
        </h1>
        <xsl:for-each select="段落">
            <p>
                <xsl:value-of select="." />
            </p>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>