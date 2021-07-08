<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="no" />
    <!-- 引数を受け取る -->
    <xsl:output method="html" encoding="utf-8" />
    <xsl:template match="/books">
        <html>
            <head>
                <title>詳細ページ                    <xsl:value-of select="$no"/>
                </title>
            </head>
            <body>
                <!-- 引数=item@no な要素について処理を行う -->
                <xsl:apply-templates select="item[@no=$no]"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="item">
        <img src="https://cover.openbd.jp/{isbn}.jpg" />
        <!-- @noなitemのtitle -->
        <h1>
            <xsl:value-of select="title"/>
        </h1>
        <!-- itemのdescription -->
        <p>
            <xsl:value-of select="description"/>
        </p>
        <!-- itemのcreator -->
        <h2>
            <xsl:value-of select="creator"/>
        </h2>
        <!-- itemのpublisher -->
        <p>
            <xsl:value-of select="publisher"/>
        </p>
        <hr/>
        <!-- itemのprice -->
        <p>
            <xsl:value-of select="price"/>
            <xsl:text>円</xsl:text>
        </p>
        <!-- itemのdate -->
        <p>
            <xsl:value-of select="date/year"/>
            <xsl:text>年</xsl:text>
            <xsl:value-of select="date/month"/>
            <xsl:text>月</xsl:text>
            <xsl:value-of select="date/day"/>
            <xsl:text>日発売</xsl:text>
        </p>
        <!-- itemのisbn -->
        <p>
            <xsl:text>isbn:</xsl:text>
            <xsl:value-of select="isbn"/>
        </p>
        <!-- itemのkeywords -->
        <h5>キーワード</h5>
        <ul>
            <xsl:apply-templates select="keywords/keyword"/>
        </ul>
        <!-- itemのurl -->
        <h5>商品へのリンク</h5>
        <a href="{url/@resource}" target="_blank">ページへジャンプ</a>
    </xsl:template>

    <xsl:template match="keyword">
        <li>
            <xsl:value-of select="."/>
        </li>
    </xsl:template>
</xsl:stylesheet>