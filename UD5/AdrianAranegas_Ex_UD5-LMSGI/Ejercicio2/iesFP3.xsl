<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

    <html>
    <head>
        <title>Ejercicio2.3</title>
    </head>
    <body>
        <h1>Adrián Aránegas Molina</h1>
        <ul>
        <xsl:apply-templates select="ies/ciclos"/>
        </ul>
    </body>
    </html>
    </xsl:template>
    <xsl:template match="ciclo">
        <li>
        "<xsl:value-of select="nombre"/>" (<xsl:value-of select="grado"/>)
        </li>
    </xsl:template>
</xsl:stylesheet>