<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>libros.xsl</title>
            </head>
            <body>
                <h1>Llibreria seleccionada</h1>
                <table style="background-color:lightgrey">
                    <tr style="background-color:white">
                        <td>Autor</td> 
                        <td>Títol</td> 
                        <td>Características</td> 
                        <td>Pàgines</td> 
                    </tr>
                    <xsl:for-each select="llibreria/llibre">
                        <xsl:sort 
                            select="pagines" data-type="numbre" order="descending"/>
                        <tr>
                            <td>
                                <xsl:value-of select="autor"/>
                            </td>
                            <td>
                                <xsl:value-of select="titol"/>
                            </td>
                            <td>
                                <xsl:value-of select="@especial"/>
                            </td>
                            <td>
                                <xsl:value-of select="pagines"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
