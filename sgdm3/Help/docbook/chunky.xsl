<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
		version="1.0"
                exclude-result-prefixes="exsl">

<!-- ********************************************************************
     $Id: chunk.xsl 6910 2007-06-28 23:23:30Z xmldoc $
     ********************************************************************

     This file is part of the XSL DocBook Stylesheet distribution.
     See ../README or http://docbook.sf.net/release/xsl/current/ for
     copyright and other information.

     ******************************************************************** -->

<!-- ==================================================================== -->

<!-- First import the non-chunking templates that format elements
     within each chunk file. In a customization, you should
     create a separate non-chunking customization layer such
     as mydocbook.xsl that imports the original docbook.xsl and
     customizes any presentation templates. Then your chunking
     customization should import mydocbook.xsl instead of
     docbook.xsl.  -->
<xsl:import href="docbook-xsl-1.74.0/html/docbook.xsl"/>

<!-- chunk-common.xsl contains all the named templates for chunking.
     In a customization file, you import chunk-common.xsl, then
     add any customized chunking templates of the same name. 
     They will have import precedence over the original 
     chunking templates in chunk-common.xsl. -->
<xsl:import href="docbook-xsl-1.74.0/html/chunk-common.xsl"/>

<!-- The manifest.xsl module is no longer imported because its
     templates were moved into chunk-common and chunk-code -->

<!-- chunk-code.xsl contains all the chunking templates that use
     a match attribute.  In a customization it should be referenced
     using <xsl:include> instead of <xsl:import>, and then add
     any customized chunking templates with match attributes. But be sure
     to add a priority="1" to such customized templates to resolve
     its conflict with the original, since they have the
     same import precedence.
     
     Using xsl:include prevents adding another layer
     of import precedence, which would cause any
     customizations that use xsl:apply-imports to wrongly
     apply the chunking version instead of the original
     non-chunking version to format an element.  -->
<xsl:include href="docbook-xsl-1.74.0/html/chunk-code.xsl"/>

<xsl:param name="target.window" select="'body'"/>
<xsl:param name="suppress.navigation" select="1"/>
<xsl:template name="user.head.content">
  <base  target="{$target.window}"/>
</xsl:template>

</xsl:stylesheet>
