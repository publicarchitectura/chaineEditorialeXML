<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0"
  xmlns="http://www.w3.org/1999/xhtml" xmlns:html="http://www.w3.org/1999/xhtml"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  exclude-result-prefixes="tei xs xsl"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">

  <!-- import base conversion style -->

  <xsl:import href="/Users/emmanuelchateau/Documents/informatique/TEIC/Stylesheets/html/html.xsl"/>

  <xsl:param name="cssFileInclude">true</xsl:param>
  <xsl:param name="cssFile" as="xs:string">gdp.css</xsl:param>
  <xsl:param name="tocDepth">1</xsl:param>
  <xsl:param name="institution">Les Guides de paris</xsl:param>
  <xsl:param name="verboseSpecDesc">true</xsl:param>
  <xsl:param name="attsOnSameLine">6</xsl:param>
  <xsl:param name="wrapLength">150</xsl:param>
  <xsl:param name="attLength">60</xsl:param>

  <!-- add return to TOC -->
  <xsl:template name="sectionHeadHook">
    <a href="#TOP" title="Aller à la table des matières" class="navTOCRight"
      >↑</a>
  </xsl:template>

  <!-- add ref opening in new window -->
  <xsl:template name="xrefHook">
    <xsl:if test="@type='newWindow'">
      <xsl:attribute name="target">_blank</xsl:attribute>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
