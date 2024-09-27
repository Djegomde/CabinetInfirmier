<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:inf="http://www.univ-grenoble-alpes.fr/l3miage/medical">
    <xsl:output method="html"/>
    
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Liste des infirmier</title>
                
            </head>
            <body>
                <h1>Liste des infirmier</h1>
                
                <table>
                    <tr>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Photo</th>
                        <xsl:apply-templates select="inf:nom"/>
                        <xsl:apply-templates select="inf:prenom"/>
                        <xsl:apply-templates select="inf:photo"/>
                    </tr>
                    
                </table>
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="inf:infirmier">
        <tr>
            <td><xsl:value-of select="inf:nom"/> </td>
            <td><xsl:value-of select="inf:prenom"/></td>
            <td><xsl:value-of select="inf:photo"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet> 
    