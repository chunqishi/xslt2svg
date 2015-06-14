<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns:str="http://exslt.org/strings"
                xmlns:html="http://www.w3.org/1999/xhtml"
                xmlns:role="http://www.cs.rochester.edu/research/trips/role#"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:LF="http://www.cs.rochester.edu/research/trips/LF#"
                xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="xml" encoding="UTF-8" />
    <xsl:template match="text()|@*" mode="lf-to-dot"/>
    <xsl:template name="str:replace">
        <xsl:param name="string" select="''" />
        <xsl:param name="search" select="/.." />
        <xsl:param name="replace" select="/.." />
        <xsl:choose>
            <xsl:when test="not($string)" />
            <xsl:when test="not($search)">
                <xsl:value-of select="$string" />
            </xsl:when>
            <xsl:when test="function-available('exsl:node-set')">
                <!-- this converts the search and replace arguments to node sets
                     if they are one of the other XPath types -->
                <xsl:variable name="search-nodes-rtf">
                    <xsl:copy-of select="$search" />
                </xsl:variable>
                <xsl:variable name="replace-nodes-rtf">
                    <xsl:copy-of select="$replace" />
                </xsl:variable>
                <xsl:variable name="replacements-rtf">
                    <xsl:for-each select="exsl:node-set($search-nodes-rtf)/node()">
                        <xsl:variable name="pos" select="position()" />
                        <replace search="{.}">
                            <xsl:copy-of select="exsl:node-set($replace-nodes-rtf)/node()[$pos]" />
                        </replace>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="sorted-replacements-rtf">
                    <xsl:for-each select="exsl:node-set($replacements-rtf)/replace">
                        <xsl:sort select="string-length(@search)" data-type="number" order="descending" />
                        <xsl:copy-of select="." />
                    </xsl:for-each>
                </xsl:variable>
                <xsl:call-template name="str:_replace">
                    <xsl:with-param name="string" select="$string" />
                    <xsl:with-param name="replacements" select="exsl:node-set($sorted-replacements-rtf)/replace" />
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:message terminate="yes">
                    ERROR: template implementation of str:replace relies on exsl:node-set().
                </xsl:message>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="str:_replace">
        <xsl:param name="string" select="''" />
        <xsl:param name="replacements" select="/.." />
        <xsl:choose>
            <xsl:when test="not($string)" />
            <xsl:when test="not($replacements)">
                <xsl:value-of select="$string" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="replacement" select="$replacements[1]" />
                <xsl:variable name="search" select="$replacement/@search" />
                <xsl:choose>
                    <xsl:when test="not(string($search))">
                        <xsl:value-of select="substring($string, 1, 1)" />
                        <xsl:copy-of select="$replacement/node()" />
                        <xsl:call-template name="str:_replace">
                            <xsl:with-param name="string" select="substring($string, 2)" />
                            <xsl:with-param name="replacements" select="$replacements" />
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:when test="contains($string, $search)">
                        <xsl:call-template name="str:_replace">
                            <xsl:with-param name="string" select="substring-before($string, $search)" />
                            <xsl:with-param name="replacements" select="$replacements[position() > 1]" />
                        </xsl:call-template>
                        <xsl:copy-of select="$replacement/node()" />
                        <xsl:call-template name="str:_replace">
                            <xsl:with-param name="string" select="substring-after($string, $search)" />
                            <xsl:with-param name="replacements" select="$replacements" />
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="str:_replace">
                            <xsl:with-param name="string" select="$string" />
                            <xsl:with-param name="replacements" select="$replacements[position() > 1]" />
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <!-- role edges and non-term nodes -->
    <xsl:template
            match="role:*[local-name() != 'START' and local-name() != 'END' and local-name() != 'DRUM' and local-name() != 'WORDNET']"
            mode="lf-to-dot">
        <!-- get the node ID of the role value -->
        <xsl:variable name="val-id">
            <xsl:choose>
                <xsl:when test="@rdf:resource">
                    <xsl:value-of select="substring(@rdf:resource,2)"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="generate-id()"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <!-- make the node for the role value if necessary -->
        <xsl:if test="not(@rdf:resource)">
            <xsl:text>  "</xsl:text>
            <xsl:value-of select="$val-id"/>
            <xsl:text>" [label="</xsl:text>
            <xsl:variable name="escaped-text">
                <xsl:call-template name="str:replace">
                    <xsl:with-param name="string" select="text()"/>
                    <xsl:with-param name="search" select="'&quot;'"/>
                    <xsl:with-param name="replace" select="'\&quot;'"/>
                </xsl:call-template>
            </xsl:variable>
            <xsl:value-of select="exsl:node-set($escaped-text)"/>
            <xsl:text>"]
            </xsl:text>
        </xsl:if>
        <!-- make the edge -->
        <xsl:text>  "</xsl:text>
        <xsl:value-of select="../@rdf:ID"/>
        <xsl:text>" -&gt; "</xsl:text>
        <xsl:value-of select="$val-id"/>
        <xsl:text>" [label=":</xsl:text>
        <xsl:value-of select="local-name()"/>
        <xsl:text>"]
        </xsl:text>
    </xsl:template>

    <xsl:template match="rdf:Description" mode="lf-to-dot">
        <!-- term node -->
        <xsl:text>  "</xsl:text>
        <xsl:value-of select="@rdf:ID"/>
        <xsl:text>" [label="(</xsl:text>
        <xsl:value-of select="LF:indicator"/>
        <xsl:text> </xsl:text>
        <xsl:choose>
            <xsl:when test="LF:word">
                <xsl:text>(:* </xsl:text>
                <xsl:value-of select="LF:type"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="LF:word"/>
                <xsl:text>)</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="LF:type"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>)"]
        </xsl:text>
        <xsl:apply-templates select="role:*" mode="lf-to-dot"/>
    </xsl:template>


    <xsl:template match="terms">
        <xsl:apply-templates select="rdf:RDF" mode="lf-to-dot" />
    </xsl:template>

    <xsl:template match="rdf:RDF" mode="lf-to-dot">
        <html:pre class="dot">
            <xsl:text>digraph LFGraph {
                node [shape=none]
            </xsl:text>
        <xsl:apply-templates mode="lf-to-dot"/>
            <xsl:text>
                }
            </xsl:text>
        </html:pre>
    </xsl:template>

    <xsl:template match="utt">
        <xsl:apply-templates select="terms" />
    </xsl:template>

    <xsl:template match="/trips-parser-output">
        <xsl:apply-templates />
    </xsl:template>

</xsl:stylesheet>
