<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:template match="Edit">
		<input>
			<xsl:attribute name="type">
				<xsl:choose>
					<xsl:when test="@type='username'">text</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="@type" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			
			<xsl:attribute name="placeholder">
				<xsl:value-of select="@type" />
			</xsl:attribute>

			<xsl:attribute name="oninput">
				<xsl:text>onInput(event)</xsl:text>
			</xsl:attribute>
		</input>
	</xsl:template>

	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="content-type" content="text/xml; charset=ISO-8859-1" />
				<title>Firefox XSLT Autofill Bug Demo</title>
				<script type="text/javascript" src="login.js"></script>
			</head>
			
			<body>
				<xsl:apply-templates select="child::Mask" />
			</body>
		</html>
	</xsl:template>

	<xsl:template match="Maske">
		<xsl:apply-templates select="child::Edit" />
	</xsl:template>
</xsl:stylesheet>
