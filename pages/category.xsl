<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/html5.xsl" />

<xsl:template match="data">
	<div class="row relative">
		<div class="categorytitlespage">
			<p><a href="{$root}/category/{catfilter/entry/title/@handle}"><xsl:value-of select="catfilter/entry/title" /></a></p>
		</div>
		<div class="isotopecontainer">
			<xsl:apply-templates select="category/entry" />
		</div>
	</div>
</xsl:template>

<xsl:template match="category/entry">
	<div class="span3 linetop theimage">
		<h2><a href="{$root}/project/{title/@handle}"><xsl:value-of select="title" /></a></h2>
		<div class="imagecontainer">
			<a href="{$root}/project/{title/@handle}"><img src="{$root}/image/1/285/0/0/assets/images/{cover-image/filename}" width="100%" height="auto" /></a>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>