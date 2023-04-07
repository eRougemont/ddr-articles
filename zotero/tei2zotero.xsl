<xsl:transform version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.tei-c.org/ns/1.0">
  <xsl:output method="xml" encoding="UTF-8"/>
  <xsl:template match="/">
    <root>
      <xsl:apply-templates/>
    </root>
  </xsl:template>
  <xsl:template match="*">
      <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="text()"/>
  <xsl:template match="tei:div[@type = 'article']">
  {
      "URL": "https://www.unige.ch/rougemont/articles/<xsl:value-of select="/*/@xml:id"/>/<xsl:value-of select="@xml:id"/>",
      <xsl:apply-templates select="(.//tei:head)[1]//tei:note[@resp]"/>
  },
  </xsl:template>
  <xsl:template match="tei:note[@resp]">
    "title": "<xsl:copy-of select="node()"/>"
  </xsl:template>
</xsl:transform>