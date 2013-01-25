<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<div class="row isotopecontainer">
		<xsl:apply-templates select="archive/entry" />
	</div>
	<xsl:if test="archive/pagination/@total-pages &gt; 1">
		<div class="row">
			<div class="linetop span12">
				<xsl:call-template name="pagination">
					<xsl:with-param name="pagination" select="/data/archive/pagination" />
					<xsl:with-param name="pagination-url" select="'/archive/$'" />
					<xsl:with-param name="show-navigation" select="false()" />
					<xsl:with-param name="show-range" select="10" />
				</xsl:call-template>
			</div>
		</div>
	</xsl:if>
</xsl:template>

<xsl:template match="archive/entry">
	<div class="span3 linetop theimage">
		<h2><xsl:value-of select="title" /></h2>
		<div class="imagecontainer">
			<img src="{$root}/image/1/710/0/0/assets/images/{image/filename}" width="100%" height="auto" />
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>