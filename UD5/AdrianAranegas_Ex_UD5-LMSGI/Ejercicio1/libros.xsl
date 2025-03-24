<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
    <head>
        <title>Lista de Libros</title>
    </head>
    <body>
        <h1>Adrián Aránegas Molina</h1>
        <ul>
        <xsl:apply-templates select="bib/book"/>
        </ul>
    </body>
    </html>
</xsl:template>
    <xsl:template match="book">
        <li>
    <xsl:value-of select="title"/>
    <xsl:if test="publisher">
    "<xsl:value-of select="publisher"/>"
    </xsl:if>
    (<xsl:value-of select="year"/>)
        </li>
</xsl:template>
</xsl:stylesheet>