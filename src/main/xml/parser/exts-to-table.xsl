<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns="http://www.w3.org/1999/xhtml"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common">
    <!--
    exts-to-table.xsl - convert extractions to an HTML table
    William de Beaumont
    2015-05-20
      -->

    <xsl:output method="xml" encoding="UTF-8" />

    <!-- don't copy text or attribute nodes by default -->
    <xsl:template match="text()|@*" mode="exts-to-table" priority="-1" />

    <xsl:template name="no-ont">
        <xsl:param name="str" />
        <xsl:choose>
            <xsl:when test="starts-with($str, 'ONT::')">
                <xsl:for-each select="exsl:node-set(substring($str, 6))">
                    <xsl:call-template name="trips-ont-link" /><!-- from lf-to-html.xsl -->
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$str" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- wrapper for tags-to-table.xsl's drum-id-link that removes extra : and pipequotes -->
    <xsl:template name="drum-id-link-2">
        <xsl:choose>
            <xsl:when test="contains(., '::|')">
                <xsl:for-each select="exsl:node-set(concat(substring-before(., '::|'), ':', substring-before(substring-after(., '::|'), '|')))">
                    <xsl:call-template name="drum-id-link" />
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="contains(., '::')">
                <xsl:for-each select="exsl:node-set(concat(substring-before(., '::'), ':', substring-after(., '::')))">
                    <xsl:call-template name="drum-id-link" />
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="drum-id-link" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="type" mode="exts-to-table">
        <xsl:call-template name="no-ont">
            <xsl:with-param name="str" select="." />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="ext-common">
        <!-- ID -->
        <td><xsl:value-of select="@id" /></td>
        <!-- original text -->
        <td>
            <xsl:choose>
                <xsl:when test="string-length(text) &lt;=23">
                    <xsl:value-of select="text" />
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="substring(text,1,10)" />
                    <xsl:text>...</xsl:text>
                    <xsl:value-of select="substring(text, string-length(text) - 9)" />
                </xsl:otherwise>
            </xsl:choose>
        </td>
        <!-- start/end -->
        <td><xsl:value-of select="@start" /></td>
        <td><xsl:value-of select="@end" /></td>
        <!-- ONT type -->
        <td><xsl:apply-templates select="type" mode="exts-to-table" /></td>
    </xsl:template>

    <xsl:template match="EVENT" mode="exts-to-table">
        <tr>
            <xsl:call-template name="ext-common" />
            <!-- predicate -->
            <td><xsl:apply-templates select="predicate/type" mode="exts-to-table" /></td>
            <!-- arguments -->
            <td>
                <xsl:for-each select="*[starts-with(local-name(), 'arg')]">
                    <xsl:if test="position() != 1">
                        <xsl:text>, </xsl:text>
                    </xsl:if>
                    <xsl:value-of select="substring(@role, 2)" />
                    <xsl:text>: </xsl:text>
                    <xsl:apply-templates select="type" mode="exts-to-table" />
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="@id" />
                    <xsl:text> "</xsl:text>
                    <xsl:value-of select="text" />
                    <xsl:text>"</xsl:text>
                </xsl:for-each>
            </td>
            <!-- other information -->
            <td>
                <xsl:if test="predicate/negation = '+'">
                    <xsl:text>negated; </xsl:text>
                </xsl:if>
                <xsl:for-each select="predicate/mods">
                    <xsl:apply-templates select="type" mode="exts-to-table" />
                    <xsl:text> "</xsl:text>
                    <xsl:value-of select="text" />
                    <xsl:text>"; </xsl:text>
                </xsl:for-each>
                <xsl:for-each select="site|cellline">
                    <xsl:value-of select="local-name()" />
                    <xsl:text>: </xsl:text>
                    <xsl:apply-templates select="type" mode="exts-to-table" />
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="@id" />
                    <xsl:text> "</xsl:text>
                    <xsl:value-of select="text" />
                    <xsl:text>"; </xsl:text>
                </xsl:for-each>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="TERM" mode="exts-to-table">
        <tr>
            <xsl:call-template name="ext-common" />
            <!-- DB ID -->
            <td>
                <xsl:for-each select="@dbid">
                    <xsl:call-template name="drum-id-link-2" />
                </xsl:for-each>
            </td>
            <!-- name -->
            <td><xsl:value-of select="name" /></td>
            <!-- features -->
            <td>
                <xsl:for-each select="features/*">
                    <xsl:if test="position() != 1">
                        <xsl:text>, </xsl:text>
                    </xsl:if>
                    <xsl:value-of select="local-name()" />
                    <xsl:text>: </xsl:text>
                    <xsl:value-of select="." />
                </xsl:for-each>
            </td>
            <!-- subterms -->
            <td>
                <xsl:if test="subterms">
                    <xsl:variable name="op" select="subterms/@operator" />
                    <xsl:for-each select="subterms/termID">
                        <xsl:if test="position() != 1">
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="$op" />
                            <xsl:text> </xsl:text>
                        </xsl:if>
                        <xsl:value-of select="." /><!-- TODO look up ID? -->
                    </xsl:for-each>
                </xsl:if>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="ekb" mode="exts-to-table">
        <h3>Events</h3>
        <table class="tags"><!-- steal CSS from TT tags table -->
            <tr>
                <th title="The ID of this event.">ID</th>
                <th title="The text as it appeared in the input.">text</th>
                <th title="The character offset of the start of the event in the input.">start</th>
                <th title="The character offset of the end of the event in the input.">end</th>
                <th title="The TRIPS ontology type of the event.">ONT type</th>
                <th title="">predicate</th>
                <th title="">arguments</th>
                <th title="">other information</th>
            </tr>
            <xsl:apply-templates select="EVENT" mode="exts-to-table" />
        </table>
        <h3>Terms</h3>
        <table class="tags">
            <tr>
                <th title="The ID of this term.">ID</th>
                <th title="The text as it appeared in the input.">text</th>
                <th title="The character offset of the start of the term in the input.">start</th>
                <th title="The character offset of the end of the term in the input.">end</th>
                <th title="The TRIPS ontology type of the term.">ONT type</th>
                <th title="An ID from an external database corresponding to this term.">DB ID</th>
                <th title="">name</th>
                <th title="Features of this term.">features</th>
                <th title="IDs of terms that are part of this term.">subterms</th>
            </tr>
            <xsl:apply-templates select="TERM" mode="exts-to-table" />
        </table>
    </xsl:template>

</xsl:stylesheet>
