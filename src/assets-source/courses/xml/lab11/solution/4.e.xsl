<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns="NS"
                exclude-result-prefixes="xsd ns">

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/">
    <results>
      <result>
        <xsl:value-of select="ns:pow(2, -2)"/>
      </result>

      <result>
        <xsl:value-of select="ns:pow(2, -1)"/>
      </result>

      <result>
        <xsl:value-of select="ns:pow(2, 0)"/>
      </result>

      <result>
        <xsl:value-of select="ns:pow(2, 1)"/>
      </result>

      <result>
        <xsl:value-of select="ns:pow(2, 2)"/>
      </result>
    </results>
  </xsl:template>

  <xsl:function name="ns:pow" as="xsd:double">
    <xsl:param name="base" as="xsd:double"/>
    <xsl:param name="exponent" as="xsd:double"/>

    <xsl:choose>
      <xsl:when test="$exponent lt 0">
        <xsl:value-of select="ns:pow(1.0 div $base, abs($exponent))"/>
      </xsl:when>

      <xsl:when test="$exponent = 0">
        <xsl:value-of select="1"/>
      </xsl:when>

      <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="$exponent = 1">
            <xsl:value-of select="$base"/>
          </xsl:when>

          <xsl:otherwise>
            <xsl:value-of select="$base * ns:pow($base, $exponent - 1)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

</xsl:stylesheet>
