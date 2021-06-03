<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>sample3</title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="concat(list/meta/shop, '商品一覧')" />
                </h1>
                <!-- (A) -->
                <h2>野菜</h2>
                <table border="1">
                    <xsl:apply-templates select="list/item[@category='野菜']" />
                </table>
                <h2>果物</h2>
                <table border="1">
                    <xsl:apply-templates select="list/item[@category='果物']" />
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="item[@category='野菜']">
        <tr>
            <th>
                <xsl:value-of select="name" />
(                <xsl:value-of select="pref" />
)
            </th>
            <th>
                <xsl:value-of select="price" />
            </th>
        </tr>
    </xsl:template>

    <xsl:template match="item[@category='果物']">
        <tr>
            <th>
                <xsl:value-of select="name" />
(                <xsl:value-of select="pref" />
)
            </th>
            <th>
                <xsl:value-of select="price" />
            </th>
        </tr>
    </xsl:template>

</xsl:stylesheet>
