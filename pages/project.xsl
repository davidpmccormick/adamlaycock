<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/html5.xsl" />

<xsl:template match="data">
	<div class="row">
		<div class="span3 clearfix">
			<div class="row">
				<div class="span3 linetop highup" data-spy="affix" data-offset-top="0">
					<div class="categorytitles">
						<xsl:for-each select="project/entry/categories/item">
							<p style="float:left; margin-right:10px;"><a href="{$root}/category/{title/@handle}"><xsl:value-of select="title" /></a></p>
						</xsl:for-each>
					</div>
					<h2>
						<xsl:value-of select="project/entry/title" />
					</h2>
					<xsl:copy-of select="project/entry/additional-information/node()" />
				</div>
			</div>
		</div>
		<div class="span9">
			<div class="overthrow content">
				<div style="margin-top:20px;">
					<!-- *** construct width dynamically -->				
					<div style="height:600px;width:100000px;">
						<xsl:apply-templates select="project/entry/images/item" />
					</div>
				</div>
			</div>
		</div>
	</div> <!-- end .row -->
</xsl:template>

<xsl:template match="project/entry/images/item">

	<!-- check if *any* of the images are portrait format -->
	
	<div class="largeimagecontainer">
		<div class="row">
			<div class="span9">
				<img style="float:left;height:600px;" src="{$root}/image/1/885/0/0/assets/images/{image/filename}" height="600" />
			</div>
		</div>
	</div> <!-- end .largeimagecontainer -->
</xsl:template>

</xsl:stylesheet>