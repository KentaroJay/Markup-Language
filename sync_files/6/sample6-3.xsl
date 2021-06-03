<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/rss">
        <html>
            <head>
                <title>
                    <xsl:value-of select="channel/title"/>
                </title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="channel/description" />
                </h1>
                <div>
                    <xsl:value-of select="channel/pubDate" />
                </div>

                <xsl:for-each select="channel/item">
                    <h2>
                        <xsl:value-of select="category" />
                    </h2>
                    <ul>
                        <li>
                            <xsl:value-of select="title" />
                        </li>
                    </ul>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>