<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

    <html>
    <head>
        <title>Ejercicio3.2</title>
    </head>
    <body>
        <h1>Adrián Aránegas Molina</h1>
        <ol>
        <xsl:apply-templates select="libro[precio &lt; 100]"/>
        </ol>
    </body>
    </html>
    </xsl:template>
    <xsl:template match="bib">
    <xsl:for-each select="bib/libro">
    <li>
        <xsl:value-of select="titulo"/>
    </li>
    </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>