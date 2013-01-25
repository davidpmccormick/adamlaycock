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
			<div class="flowunder">
				<div class="nano">
					<div class="overthrow content">
						<xsl:apply-templates select="project/entry/images/item" />
					</div>
				</div>
			</div>
		</div>
	</div> <!-- end .row -->
</xsl:template>

<xsl:template match="project/entry/images/item">
	<xsl:if test="position() = 1 and title = ''">
		<div style="height:20px;width:100%"></div>
	</xsl:if>
	<xsl:if test="title != ''">
		<h2><em><xsl:value-of select="title" /></em></h2>
	</xsl:if>

	<!-- check if *any* of the images are portrait format -->
	<xsl:variable name="smallwidth">
		<xsl:choose>
			<xsl:when test="*[(/data/project/entry/images/item/image/meta/@width &lt; /data/project/entry/images/item/image/meta/@height)]">
				<xsl:text>1</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>0</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	
	<div class="largeimagecontainer">
		<div class="row">
			<xsl:choose>
				<!-- if there were *any* portrait format images, make all images span two columns -->
				<xsl:when test="$smallwidth = '1'">
					<div class="span6">
						<img src="{$root}/image/1/585/0/0/assets/images/{image/filename}" width="100%" height="auto" />
					</div>
				</xsl:when>
				<!-- otherwise, they were all landscape, so make 'em all span three columns -->
				<xsl:otherwise>
					<div class="span9">
						<img src="{$root}/image/1/885/0/0/assets/images/{image/filename}" width="100%" height="auto" />
					</div>
				</xsl:otherwise>
			</xsl:choose>
		</div>
	</div> <!-- end .largeimagecontainer -->
</xsl:template>

</xsl:stylesheet>