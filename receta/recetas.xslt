<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Recetas</title>

      </head>
      <body>

        <xsl:apply-templates select="recetas/receta"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="receta">

    <div style="display: block; padding: 30px; margin: 30px; border: 5px dotted #7aba96; width: 60%;">
      <p style="margin-bottom: 15px; margin-top: 15px; display: block; font-size: 24px; font-weight: bold;">
        <xsl:value-of select="titulo"/>
      </p>
      <p style="margin-bottom: 18px; margin-top: 15px; display: block; font-weight: bold;">
        <xsl:value-of select="fecha"/>
      </p>
      <p style="margin-bottom: 15px; margin-top: 15px; display: block; font-family: 'Poppins', sans-serif; font-size: 16px; font-style: italic;">
        <xsl:value-of select="introduccion"/>
      </p>
      <ul style="display: block; margin-bottom: 15px; margin-top: 15px; display: block; font-family: 'Poppins', sans-serif; font-size: 16px;">
        <xsl:apply-templates select="ingredientes/ingrediente"/>
      </ul>
      <p style="margin-bottom: 15px; margin-top: 15px; display: block; font-family: 'Poppins', sans-serif; font-size: 16px;">
        <strong>Preparación:</strong>
        <br/>
        <xsl:value-of select="preparacion"/>
      </p>
    </div>
  </xsl:template>
  <xsl:template match="ingrediente">
    <li>
      <xsl:value-of select="."/>
    </li>
  </xsl:template>
</xsl:stylesheet>