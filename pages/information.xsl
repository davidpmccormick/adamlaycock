<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/html5.xsl" />

<xsl:template match="data">
	<div class="row">
		<div class="span3 linetop">
			<xsl:if test="information/entry/contact/node() != ''">
				<h2>Contact</h2>
				<xsl:copy-of select="information/entry/contact/node()" />
			</xsl:if>
		</div>
		<div class="span9 linetop">
			<div class="row">
				<div class="span6">
					<xsl:if test="information/entry/about/node() != ''">
						<h2>About</h2>
						<xsl:copy-of select="information/entry/about/node()" />
					</xsl:if>
				</div>
			</div>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>