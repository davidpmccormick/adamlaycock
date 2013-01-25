<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/html5.xsl" />

<xsl:template match="data">
	<div class="row isotopecontainer">
		<xsl:apply-templates select="allprojects/entry" />
	</div>
	<xsl:if test="allprojects/pagination/@total-pages &gt; 1">
		<div class="row">
			<div class="linetop span12">
				<xsl:call-template name="pagination">
					<xsl:with-param name="pagination" select="/data/allprojects/pagination" />
					<xsl:with-param name="pagination-url" select="'/projects/$'" />
					<xsl:with-param name="show-navigation" select="false()" />
					<xsl:with-param name="show-range" select="10" />
				</xsl:call-template>
			</div>
		</div>
	</xsl:if>
</xsl:template>

<xsl:template match="allprojects/entry">
	<div class="span3 linetop allprojects theimage">
		<h2><a href="{$root}/project/{title/@handle}"><xsl:value-of select="title" />
			<xsl:if test="client != ''">
				<xsl:text> &#8211; </xsl:text><xsl:value-of select="client" />
			</xsl:if>
		</a></h2>
		<div class="imagecontainer">
			<a href="{$root}/project/{title/@handle}"><img src="{$root}/image/1/285/0/0/assets/images/{cover-image/filename}" width="100%" height="auto" /></a>
		</div>
	</div>
					
</xsl:template>

</xsl:stylesheet>