<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns = "http://www.w3.org/1999/xhtml" >
<xsl:template match="student-information">
<html>
	<center><h1> Student Information </h1></center>
	<xsl:for-each select="student" >
		<div style="margin-left:20px;">
			USN :   <span style="color:blue"><xsl:value-of select ="usn" /></span>  <br/>
			Name    : <xsl:value-of select ="name"    /> <br/>
			College : <xsl:value-of select ="college" /> <br/>
			Branch  : <xsl:value-of select ="branch"  /> <br/>
			Year    : <xsl:value-of select ="year"    /> <br/>
			Email   : <xsl:value-of select ="email"   /> <br/>
		</div>
	</xsl:for-each>
</html>
</xsl:template>
</xsl:stylesheet>