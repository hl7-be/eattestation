<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fhir="http://hl7.org/fhir">
    <xsl:output indent="yes"/>

    <!-- IdentityTransform -->
    <xsl:template match="/ | @* | node()" priority="-1000">
        <!--xsl:comment>
            <xsl:value-of select="name()"></xsl:value-of>
        </xsl:comment-->

        <xsl:copy>
            <xsl:apply-templates select="@* | node()" />
        </xsl:copy>
    </xsl:template>

    <!--xsl:template match="reference" /-->

    <xsl:template match="fhir:reference">
        <xsl:variable name="reference">
            <xsl:value-of select="@value"></xsl:value-of>
        </xsl:variable>
        <xsl:variable name="urn">
            <xsl:choose>
                <xsl:when test="//fhir:entry[concat(fhir:resource/*/name(),'/',fhir:resource/*/fhir:id/@value)= $reference]/fhir:fullUrl/@value">
                    <xsl:value-of select="//fhir:entry[concat(fhir:resource/*/name(),'/',fhir:resource/*/fhir:id/@value)= $reference]/fhir:fullUrl/@value"></xsl:value-of>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$reference"></xsl:value-of>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:element name="fhir:reference">
            <xsl:attribute name="value">
                <xsl:value-of select="$urn"></xsl:value-of>
            </xsl:attribute>
            <!--xsl:comment>
                <xsl:value-of select="$urn"></xsl:value-of>
            </xsl:comment-->
            <xsl:apply-templates select="@*[name()!='value'] | node()" />
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>