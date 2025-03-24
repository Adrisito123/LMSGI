<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">
    <html>
    <head>
        <title>Ejercicio2.5</title>
    <style>
    .red { color: red;
    }
    .blue { color: blue;
    } 
    .green { color: green;
    } 
     </style>
    </head>
    <body>
        <h1>
        <xsl:value-of select="ies/@nombre"/>
        </h1>
    <table border="1">
        <tr>
            <th>Nombre</th>
            <th>Año</th>
        </tr>
    <xsl:apply-templates select="ies/ciclos/ciclo"/>
    </table>
    </body>
    </html>
</xsl:template>
<xsl:template match="ciclo">
    <tr>
        <td>
        <xsl:value-of select="nombre"/>
        </td>
    <td>
        <xsl:variable name="anio" select="decretoTitulo/@año"/>
        <span>
        <xsl:attribute name="class">
        <xsl:choose>
        <xsl:when test="$anio > 2009">green</xsl:when>
        <xsl:when test="$anio = 2009">blue</xsl:when>
        <xsl:when test="$anio">red</xsl:when>
    </xsl:choose>
    </xsl:attribute>
    <xsl:value-of select="$anio"/>
    </span>
    </td>
    </tr>
</xsl:template>
</xsl:stylesheet>