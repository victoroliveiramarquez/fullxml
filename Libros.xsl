<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="libros.css" />
			</head>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="libro">
		<h2>OBRA: <xsl:value-of select="obra"/></h2>
		<p>
			<ul>
				<li>Año: <xsl:value-of select="fechaPublicacion"/></li>
				<li>Precio: <span>
						<xsl:value-of select="precio"/>
					</span> euros</li>
			</ul>
		</p>
	</xsl:template>
</xsl:stylesheet>