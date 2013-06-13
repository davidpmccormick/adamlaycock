<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/html5.xsl" />

<xsl:template match="data">
	<div class="row">		
		
		<!-- span12 here -->
		
		<div class="span12 linetop" style="overflow:hidden;">
      <div class="box-wrap antiscroll-wrap">
        <div class="antiscroll-inner" style="overflow-y:hidden;">
          <div class="box-inner" style="width:100000px">
						<xsl:apply-templates select="project/entry/images/item" />
          </div>
        </div>
      </div>
		</div>
		
		
	</div> <!-- end .row -->
</xsl:template>

<xsl:template match="project/entry/images/item">
	<div class="horizontalimagecontainer">
		<h2>
			<xsl:value-of select="title" />
			<xsl:if test="title = ''">
				<br />
			</xsl:if>
		</h2>
		<img src="{$root}/image/1/0/700/0/assets/images/{image/filename}" />
	</div>
</xsl:template>

</xsl:stylesheet>