<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rss="http://purl.org/rss/1.0/"
    xmlns:dc="http://purl.org/dc/elements/1.1/">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/rdf:RDF">
        <html>
            <head>
                <title>
                    <xsl:value-of select="rss:channel/rss:title"/>
                </title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="rss:channel/rss:description" />
                </h1>
                <div>
                    <xsl:value-of select="rss:channel/dc:date" />
                </div>

                <xsl:for-each select="rss:item/dc:subject">
                    <xsl:value-of select="text()" />
                </xsl:for-each>

                <h2>
                    社会
                </h2>
                <xsl:apply-templates select="rss:item[dc:subject='社会']" />
                <h2>
                    スポーツ
                </h2>
                <xsl:apply-templates select="rss:item[dc:subject='スポーツ']" />
                <h2>
                    ビジネス
                </h2>
                <xsl:apply-templates select="rss:item[dc:subject='ビジネス']" />
                <h2>
                    政治
                </h2>
                <xsl:apply-templates select="rss:item[dc:subject='政治']" />
                <h2>
                    国際
                </h2>
                <xsl:apply-templates select="rss:item[dc:subject='国際']" />
                <h2>
                    文化芸能
                </h2>
                <xsl:apply-templates select="rss:item[dc:subject='文化芸能']" />
                <h2>
                    サイエンス
                </h2>
                <xsl:apply-templates select="rss:item[dc:subject='サイエンス']" />
                <h2>
                    おくやみ
                </h2>
                <xsl:apply-templates select="rss:item[dc:subject='おくやみ']" />

            </body>
        </html>
    </xsl:template>

    <xsl:template match="rss:item[dc:subject='社会']">
        <ul>
            <xsl:call-template name="list">
                <xsl:with-param name="title" select="rss:title" />
                <xsl:with-param name="link" select="rss:link" />
            </xsl:call-template>
        </ul>
    </xsl:template>

    <xsl:template match="rss:item[dc:subject='スポーツ']">
        <ul>
            <xsl:call-template name="list">
                <xsl:with-param name="title" select="rss:title" />
                <xsl:with-param name="link" select="rss:link" />
            </xsl:call-template>
        </ul>
    </xsl:template>

    <xsl:template match="rss:item[dc:subject='ビジネス']">
        <ul>
            <xsl:call-template name="list">
                <xsl:with-param name="title" select="rss:title" />
                <xsl:with-param name="link" select="rss:link" />
            </xsl:call-template>
        </ul>
    </xsl:template>

    <xsl:template match="rss:item[dc:subject='政治']">
        <ul>
            <xsl:call-template name="list">
                <xsl:with-param name="title" select="rss:title" />
                <xsl:with-param name="link" select="rss:link" />
            </xsl:call-template>
        </ul>
    </xsl:template>

    <xsl:template match="rss:item[dc:subject='国際']">
        <ul>
            <xsl:call-template name="list">
                <xsl:with-param name="title" select="rss:title" />
                <xsl:with-param name="link" select="rss:link" />
            </xsl:call-template>
        </ul>
    </xsl:template>

    <xsl:template match="rss:item[dc:subject='文化芸能']">
        <ul>
            <xsl:call-template name="list">
                <xsl:with-param name="title" select="rss:title" />
                <xsl:with-param name="link" select="rss:link" />
            </xsl:call-template>
        </ul>
    </xsl:template>

    <xsl:template match="rss:item[dc:subject='サイエンス']">
        <ul>
            <xsl:call-template name="list">
                <xsl:with-param name="title" select="rss:title" />
                <xsl:with-param name="link" select="rss:link" />
            </xsl:call-template>
        </ul>
    </xsl:template>

    <xsl:template match="rss:item[dc:subject='おくやみ']">
        <ul>
            <xsl:call-template name="list">
                <xsl:with-param name="title" select="rss:title" />
                <xsl:with-param name="link" select="rss:link" />
            </xsl:call-template>
        </ul>
    </xsl:template>

    <xsl:template name="list">
        <xsl:param name="title" select="'タイトルを取得できませんでした'" />
        <xsl:param name="link" select="''" />

        <li>
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:value-of select="$link" />
                </xsl:attribute>
                <xsl:value-of select="$title" />
            </xsl:element>
        </li>
    </xsl:template>

</xsl:stylesheet>