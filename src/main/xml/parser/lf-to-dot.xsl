<?xml version="1.0" encoding="UTF-8"?>
<stylesheet version="1.0"
            xmlns="http://www.w3.org/1999/XSL/Transform"
            xmlns:exsl="http://exslt.org/common"
            xmlns:str="http://exslt.org/strings"
            extension-element-prefixes="str exsl"
            xmlns:html="http://www.w3.org/1999/xhtml"
            xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
            xmlns:role="http://www.cs.rochester.edu/research/trips/role#"
            xmlns:TMA="http://www.cs.rochester.edu/research/trips/TMA#"
            xmlns:LF="http://www.cs.rochester.edu/research/trips/LF#">

    <!--
    lf-to-dot.xsl - convert an LF (in RDF format, as output by lf-to-rdf in src/LFEvaluator/lf-to-rdf.lisp) to Graphviz dot format
    William de Beaumont
    2014-06-14
      -->

    <import href="str.replace.template.xsl"/>

    <output method="xml" encoding="UTF-8"/>

    <template match="text()|@*" mode="lf-to-dot"/>

    <!-- role edges and non-term nodes -->
    <template
            match="role:*[local-name() != 'START' and local-name() != 'END' and local-name() != 'DRUM' and local-name() != 'WORDNET']"
            mode="lf-to-dot">
        <!-- get the node ID of the role value -->
        <variable name="val-id">
            <choose>
                <when test="@rdf:resource">
                    <value-of select="substring(@rdf:resource,2)"/>
                </when>
                <otherwise>
                    <value-of select="generate-id()"/>
                </otherwise>
            </choose>
        </variable>
        <!-- make the node for the role value if necessary -->
        <if test="not(@rdf:resource)">
            <text>  "</text>
            <value-of select="$val-id"/>
            <text>" [label="</text>
            <variable name="escaped-text">
                <call-template name="str:replace">
                    <with-param name="string" select="text()"/>
                    <with-param name="search" select="'&quot;'"/>
                    <with-param name="replace" select="'\&quot;'"/>
                </call-template>
            </variable>
            <value-of select="exsl:node-set($escaped-text)"/>
  <text>"]
</text>
        </if>
        <!-- make the edge -->
        <text>  "</text>
        <value-of select="../@rdf:ID"/>
        <text>" -&gt; "</text>
        <value-of select="$val-id"/>
        <text>" [label=":</text>
        <value-of select="local-name()"/>
 <text>"]
</text>
    </template>

    <template match="rdf:Description" mode="lf-to-dot">
        <!-- term node -->
        <text>  "</text>
        <value-of select="@rdf:ID"/>
        <text>" [label="(</text>
        <value-of select="LF:indicator"/>
        <text> </text>
        <choose>
            <when test="LF:word">
                <text>(:* </text>
                <value-of select="LF:type"/>
                <text> </text>
                <value-of select="LF:word"/>
                <text>)</text>
            </when>
            <otherwise>
                <value-of select="LF:type"/>
            </otherwise>
        </choose>
 <text>)"]
</text>

        <apply-templates select="role:*" mode="lf-to-dot"/>
    </template>

    <template match="rdf:RDF" mode="lf-to-dot">
        <html:pre class="dot">
  <text>digraph LFGraph {
  node [shape=none]
</text>
            <apply-templates mode="lf-to-dot"/>
  <text>}
</text>
        </html:pre>
    </template>

</stylesheet>

