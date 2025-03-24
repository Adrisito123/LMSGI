<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    <html>
    <head>
        <title>Ejercicio2.4</title>
    </head>
    <body>
        <h1>Adrián Aránegas Molina</h1>
        <ol>
        <xsl:for-each select="ies/ciclos/ciclo">
        <xsl:sort select="nombre" order="descending"/>
            <li>
        "<xsl:value-of select="nombre"/>" (<xsl:value-of select="grado"/>)
            </li>
            </xsl:for-each>
        </ol>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>