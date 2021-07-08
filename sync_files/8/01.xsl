<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" />
    <xsl:template match="/books">
        <html>
            <head>
                <title>
                    <xsl:value-of select="metadata/title"/>
                </title>
            </head>
            <body>
                <xsl:call-template name="metadata" />
                <ul>
                    <xsl:apply-templates select="item"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="metadata">
        <h1>
            <xsl:value-of select="metadata/title" />
        </h1>
        <p>
            <xsl:value-of select="metadata/description" />
        </p>
        <small>
            <xsl:value-of select="metadata/date_created" />
        </small>
        <hr />
    </xsl:template>

    <xsl:template match="item">
        <li>
            <xsl:value-of select="title"/>
        </li>
        <!-- 書影の利用 -->
        <img src="https://cover.openbd.jp/{isbn}.jpg" />
        <ul>
            <li>
                作者:
                <xsl:value-of select="creator"/>
            </li>
            <li>
                <!-- itemの詳細ページに飛ぶためのリンクを生成 -->
                <!-- ファイル名は"item@no.html" -->
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="@no" />
                        <xsl:text>.html</xsl:text>
                    </xsl:attribute>
                    詳細ページ
                </a>
            </li>
        </ul>
        <hr/>
    </xsl:template>

</xsl:stylesheet>