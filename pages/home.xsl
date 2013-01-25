<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<xsl:if test="hero/entry/on='Yes'">
		<xsl:if test="$url-hero != '0'">
			<div class="row hero relative">
				<div class="span12">
					<div class="herocontainer" style="margin:90px auto; text-align:center;">
						<img style="max-height:100%;" src="{$root}/image/1/0/640/0/assets/images/{hero/entry/image/filename}" height="100%" width="auto" />
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:if>
	<div>
		<xsl:attribute name="class">
			<xsl:text>row nothero</xsl:text>
			<xsl:if test="hero/entry/on='Yes'">
				<xsl:text> hidden</xsl:text>
			</xsl:if>
		</xsl:attribute>
		<!-- featured project section -->
		<div class="span6 linetop">
			<h2>
				<a href="{$root}/project/{featured/entry/project/item/title/@handle}">
					Featured &#8211;<xsl:text> </xsl:text>
					<xsl:value-of select="featured/entry/project/item/title" />
				</a>
			</h2>
			<div class="nano">
				<div class="overthrow content">
					<a href="{$root}/project/{featured/entry/project/item/title/@handle}"><xsl:apply-templates select="featured/entry/project/item/images/item" /></a>
				</div>
			</div>
		</div>
		<!-- end featured project section -->
		
		<!-- recently added section -->
		<div class="span3 linetop recentlyaddedsection">
			<h2>Recently added</h2>
			<div class="nano">
				<div class="overthrow content">
					<xsl:apply-templates select="recentlyadded/entry" />
				</div>
			</div>
		</div>
		<!-- end recently added section -->
		
		<!-- categories section -->
		<div class="span3 categoriessection">
			<div class="nano categories">
				<div class="overthrow content">
					<xsl:apply-templates select="categories/entry" />
					<div class="linetop">
						<h2><a href="archive">Archive</a></h2>
						<xsl:if test="archivecover/entry/image/filename != ''">
							<div class="imagecontainer">
								<a href="archive"><img src="{$root}/image/1/285/0/0/assets/images/{archivecover/entry/image/filename}" width="100%" height="auto" /></a>
							</div>
						</xsl:if>
					</div>
				</div>
			</div>
		</div>
		<!-- end categories section -->
	</div>
</xsl:template>

<xsl:template match="featured/entry/project/item/images/item">
	<div class="imagecontainer">
		<img src="{$root}/image/1/585/0/0/assets/images/{image/filename}" width="100%" height="auto" />
	</div>
</xsl:template>

<xsl:template match="recentlyadded/entry">
	<div class="imagecontainer">
		<a href="project/{title/@handle}"><img src="{$root}/image/1/285/0/0/assets/images/{cover-image/filename}" width="100%" height="auto" /></a>
	</div>
</xsl:template>

<xsl:template match="categories/entry">
	<div class="linetop">
		<h2><a href="category/{title/@handle}"><xsl:value-of select="title" /></a></h2>
		<div class="imagecontainer">
			<xsl:if test="cover-image != ''">
				<a href="category/{title/@handle}"><img src="{$root}/image/1/285/0/0/assets/images/{cover-image/filename}" width="100%" height="auto" /></a>
			</xsl:if>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>