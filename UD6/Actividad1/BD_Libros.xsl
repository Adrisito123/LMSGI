<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/Libros">
        <html>
            <head>
                <title>Lista de Libros</title>
                <style>
                    body{background-color:e6c5ff; font-family: "Courier New" }
                    h2{text-align:center}
                    table { border-collapse: collapse; width: 100%; font-family: "Courier New" }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: purple; }
                </style>
            </head>
            <body>
                <h2>Lista de Libros</h2>
                <table>
                    <tr>
                        <th>Código</th>
                        <th>Título</th>
                        <th>Editorial</th>
                        <th>Edición</th>
                        <th>ISBN</th>
                        <th>Páginas</th>
                        <th>Autor(es)</th>
                        <th>Nacionalidad</th>
                    </tr>
                    <xsl:for-each select="libro">
                        <tr>
                            <td><xsl:value-of select="Cod_Libro"/></td>
                            <td><xsl:value-of select="Titulo"/></td>
                            <td><xsl:value-of select="Editorial"/></td>
                            <td><xsl:value-of select="Edicion"/></td>
                            <td><xsl:value-of select="ISBN"/></td>
                            <td><xsl:value-of select="NumPaginas"/></td>
                            <td>
                                <xsl:for-each select="Autores/autor">
                                    <xsl:value-of select="Nombre"/> <xsl:value-of select="Apellidos"/> <br/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="Autores/autor">
                                    <xsl:value-of select="Nacionalidad"/> <br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
