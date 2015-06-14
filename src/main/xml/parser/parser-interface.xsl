<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="xml" encoding="UTF-8" />

    <xsl:include href="tree-to-lisp.xsl" />
    <xsl:include href="tree-to-LinGO.xsl" />
    <xsl:include href="tree-to-dot.xsl" />
    <xsl:include href="lf-to-html.xsl" />
    <xsl:include href="lf-to-amr.xsl" />
    <xsl:include href="lf-to-dot.xsl" />
    <xsl:include href="tags-to-table.xsl" />
    <xsl:include href="exts-to-table.xsl" />

    <xsl:template match="debug"></xsl:template>

    <xsl:template match="ekb">
        <h2 title="Extracted terms, events, etc.">Extractions</h2>
        <pre class="exts-lisp">
            <xsl:text>(</xsl:text>
            <xsl:for-each select=".//@lisp">
                <xsl:value-of select="." />
    <xsl:text>
 </xsl:text>
            </xsl:for-each>
   <xsl:text>)
</xsl:text>
        </pre>
        <div class="exts-table">
            <xsl:apply-templates select="." mode="exts-to-table" />
        </div>
    </xsl:template>

    <xsl:template match="word">
        <xsl:if test="position() > 1"><xsl:text> </xsl:text></xsl:if>
        <a href="../../lexicon/data/W::{.}.xml">
            <xsl:value-of select="." />
        </a>
    </xsl:template>

    <xsl:template match="words">
        <h2 title="The list of words, as processed by the main TRIPS Parser module, linked to the TRIPS Lexicon Browser.">Words</h2>
        <p class="words"><xsl:apply-templates select="word" /></p>
    </xsl:template>

    <xsl:template match="tags">
        <h2 title="The messages sent from the TextTagger preprocessing module to the main Parser module.">Tags</h2>
        <pre class="tags-lisp">
            <xsl:value-of select="lisp" />
        </pre>
        <div class="tags-table">
            <xsl:apply-templates select="." mode="tags-to-table" />
        </div>
    </xsl:template>

    <xsl:template match="text()" mode="phrase">
        <xsl:text> </xsl:text>
        <xsl:value-of select="." />
    </xsl:template>

    <!-- non-phrase nodes -->
    <xsl:template match="*" mode="phrase" priority="-1">
        <xsl:apply-templates mode="phrase" />
    </xsl:template>

    <!-- phrase nodes -->
    <xsl:template match="UTT|NP|VP|ADJP|ADVBL|PP|CP" mode="phrase">
        <xsl:element name="{name()}">
            <xsl:apply-templates mode="phrase" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="tree">
        <h2 title="The parse tree chosen as the best option by the parser.">Tree</h2>
        <pre class="tree-full-lisp">
            <xsl:value-of select="lisp" />
        </pre>
        <div class="tree-full-LinGO">
            <xsl:apply-templates select="*[2]" mode="tree-to-LinGO" />
        </div>
        <div class="tree-full-svg">
            <xsl:apply-templates select="*[2]" mode="tree-to-dot" />
        </div>
        <xsl:variable name="tree-phrase-xml">
            <xsl:apply-templates select="*[2]" mode="phrase" />
        </xsl:variable>
        <pre class="tree-phrase-lisp">
            <xsl:apply-templates select="exsl:node-set($tree-phrase-xml)" mode="tree-to-lisp" />
        </pre>
        <div class="tree-phrase-LinGO">
            <xsl:apply-templates select="exsl:node-set($tree-phrase-xml)" mode="tree-to-LinGO" />
        </div>
        <div class="tree-phrase-svg">
            <xsl:apply-templates select="exsl:node-set($tree-phrase-xml)" mode="tree-to-dot" />
        </div>
    </xsl:template>

    <xsl:template match="terms">
        <h2 title="The Logical Form as described in the &quot;LF Documentation&quot; link below. Words and ONT types (in the Lisp and AMR formats) link to the TRIPS Lexicon and Ontology Browsers, respectively.">Logical Form</h2>
        <div class="lf-lisp">
            <xsl:apply-templates select="rdf:RDF" mode="lf-to-html" />
        </div>
        <div class="lf-amr">
            <xsl:apply-templates select="rdf:RDF" mode="lf-to-amr" />
        </div>
        <div class="lf-svg">
            <xsl:apply-templates select="rdf:RDF" mode="lf-to-dot" />
        </div>
    </xsl:template>

    <xsl:template match="utt">
        <hr />
        <xsl:apply-templates select="words" />
        <xsl:apply-templates select="tags" />
        <xsl:apply-templates select="terms" />
        <xsl:apply-templates select="tree" />
    </xsl:template>

    <xsl:template name="scripts-and-styles">
        <!-- propagate genre options into a JS var -->
        <xsl:if test="genres">
            <script type="text/javascript">
    <xsl:text>var genres = {
</xsl:text>
                <xsl:for-each select="genres/genre">
                    <xsl:if test="position() != 1">
      <xsl:text>,
</xsl:text>
                    </xsl:if>
                    <xsl:text>'</xsl:text>
                    <xsl:value-of select="@genre" />
                    <xsl:text>': {</xsl:text>
                    <xsl:for-each select="@*[local-name() != 'genre']">
                        <xsl:if test="position() != 1">
                            <xsl:text>, </xsl:text>
                        </xsl:if>
                        <xsl:text>'</xsl:text>
                        <xsl:value-of select="local-name()" />
                        <xsl:text>': '</xsl:text>
                        <xsl:value-of select="." />
                        <xsl:text>'</xsl:text>
                    </xsl:for-each>
                    <xsl:text>}</xsl:text>
                </xsl:for-each>
    <xsl:text>
};
</xsl:text>
            </script>
        </xsl:if>
        <script type="text/javascript" src="../style/parser-interface.js"></script>
        <style type="text/css">
            <![CDATA[
    .exts-lisp { }
    .exts-table { }
    .tags-lisp { }
    .tags-table { }
    .tree-full-lisp { }
    .tree-full-LinGO { }
    .tree-full-svg { }
    .tree-phrase-lisp { }
    .tree-phrase-LinGO { }
    .tree-phrase-svg { }
    .lf-lisp { }
    .lf-amr { }
    .lf-svg { }
    #interface-options { display: none; }
    #texttagger-options { display: none; }
    #tag-type-checkboxes { display: none; }
    #senses-only-for-penn-poss-checkboxes { display: none; }
    #parser-options { display: none; }
   ]]>
        </style>
        <link rel="stylesheet" type="text/css" href="../style/parser-interface.css" />
    </xsl:template>

    <xsl:template name="interface-options">
        <label title="The format of the &quot;Extractions&quot; section">Extractions format: <select id="extsformat" name="extsformat" onchange="setAllDisplay()">
            <option value="lisp">
                <xsl:if test="@extsformat = 'lisp'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                Lisp
            </option>
            <option value="table">
                <xsl:if test="@extsformat = 'table'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                table
            </option>
        </select></label>
        <label title="The format of the &quot;Tags&quot; section, hidden by default.">Tags format: <select id="tagsformat" name="tagsformat" onchange="setAllDisplay()">
            <option value="hidden">
                <xsl:if test="@tagsformat = 'hidden'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                hidden
            </option>
            <option value="lisp">
                <xsl:if test="@tagsformat = 'lisp'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                Lisp
            </option>
            <option value="table">
                <xsl:if test="@tagsformat = 'table'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                table
            </option>
        </select></label>
        <label title="How much detail to show in the parse tree.">Tree contents: <select id="treecontents" name="treecontents" onchange="setAllDisplay()">
            <option value="full">
                <xsl:if test="@treecontents = 'full'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                Full tree
            </option>
            <option value="phrase">
                <xsl:if test="@treecontents = 'phrase'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                Phrase-level nodes only
            </option>
        </select></label>
        <label title="Which format to show the parse tree in.">Tree format: <select id="treeformat" name="treeformat" onchange="setAllDisplay()">
            <option value="lisp">
                <xsl:if test="@treeformat = 'lisp'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                Lisp
            </option>
            <option value="svg">
                <xsl:if test="@treeformat = 'svg'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                SVG diagram
            </option>
            <option value="LinGO">
                <xsl:if test="@treeformat = 'LinGO'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                LinGO-like table diagram
            </option>
        </select></label>
        <label title="Which format to show the Logical Form terms in.">LF format: <select id="lfformat" name="lfformat" onchange="setAllDisplay()">
            <option value="lisp">
                <xsl:if test="@lfformat = 'lisp'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                Lisp
            </option>
            <option value="amr">
                <xsl:if test="@lfformat = 'amr'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                AMR
            </option>
            <option value="svg">
                <xsl:if test="@lfformat = 'svg'">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                SVG diagram
            </option>
        </select></label>
    </xsl:template>

    <xsl:template name="footer">
        <hr />
        <div><a href="http://www.cs.rochester.edu/research/trips/lexicon/browse-ont-lex-ajax.html">Browse the TRIPS Lexicon and Ontology</a></div>
        <div><a href="../LF%20Documentation.pdf">LF Documentation (pdf)</a></div>
        <div><a href="../api.html">Web API Documentation</a></div>
        <div>Parser built on
            <xsl:value-of select="@parser-build-date" />
        </div>
        <p>Development of this system has been supported in part by The National Science Foundation (grants 0958193 and 1012205), the Office of Naval Research (grant N000141110417) and the DARPA Big Mechanism program (grant W911NF-14-11-0391).</p>
    </xsl:template>

    <xsl:template match="/trips-parser-output">
        <html>
            <head>
                <title>TRIPS Parser Web Interface</title>
                <xsl:call-template name="scripts-and-styles" />
            </head>
            <body onload="bodyLoaded()">
                <h1><!-- img src="/images/monalogo_thin.jpg" alt="URCS (logo)" / --> TRIPS Parser Web Interface</h1>
                <form action="#">
                    <xsl:variable name="genre" select="@genre" />
                    <div>
                        <xsl:if test="genres">
                            <!-- TODO when genre is selected, set other options -->
                            <select name="genre" title="Genre: select from one of a few collections of recommended settings for different kinds of input.">
                                <xsl:for-each select="genres/genre">
                                    <option>
                                        <xsl:if test="$genre = @genre">
                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                        </xsl:if>
                                        <xsl:value-of select="@genre" />
                                    </option>
                                </xsl:for-each>
                            </select>
                        </xsl:if>
                        <input type="text" size="40" name="input" value="{@input}" placeholder="Enter a sentence."/>
                        <input type="submit" value="Parse" /><br />
                        | <a href="javascript:toggleDisplay('interface-options')" title="Click here to show/hide options for how your browser displays the results. These are applied immediately.">Interface options</a>
                        <div id="interface-options">
                            <xsl:call-template name="interface-options" />
                        </div>
                        | <a href="javascript:toggleDisplay('texttagger-options')" title="Click here to show/hide options for the TextTagger preprocessing component. These are applied for the next input you parse.">TextTagger options</a>
                        <div id="texttagger-options">
                            <label title="Comma-separated list of words for which TextTagger should not add sense information.">No-sense words: <input type="text" name="no-sense-words" value="{@no-sense-words | genres/genre[@genre=$genre]/@no-sense-words}"/></label> (enter a comma-separated list of words)<br />
                            <label title="Lispy boolean expression describing the types of tags TextTagger should ouput. It's recommended to either use the genre setting above, or the checkboxes below, rather than filling this field directly.">Tag type: <input type="text" name="tag-type" id="tag-type" value="{@tag-type | genres/genre[@genre=$genre]/@tag-type}" /></label> (enter a custom boolean tag type expression, or use the <a href="javascript:toggleDisplay('tag-type-checkboxes')" title="Show/hide tagger checkboxes.">tagger checkboxes</a>)<br />
                            <ul class="checkboxes" id="tag-type-checkboxes">
                                <li title="Splits common affixes (just prefixes for now) from words."><label><input type="checkbox" /> affixes</label></li>
                                <li title="Marks sequences of capital letters, numbers, and hyphens as named entities with the type ONT::referential-sem."><label><input type="checkbox" /> alphanumerics</label></li>
                                <li title="Looks up alternate spellings for certain words from a table (mostly US/British differences)."><label><input type="checkbox" /> alternate_spellings</label></li>
                                <li title="Expands texting acronyms and tags asthma drug names for the TRIPS Asma system."><label><input type="checkbox" /> asma</label></li>
                                <li title="Marks any capitalized word not at the beginning of a sentence as a named-entity with the type ONT::referential-sem."><label><input type="checkbox" /> capitalized_names</label></li>
                                <li title="Marks chemical formulae (with element abbreviations, counts, bonds, groups, etc.) with type ONT::chemical and Penn POS NNP."><label><input type="checkbox" /> chemical_formulae</label></li>
                                <li title="Uses the Charniak-Johnson Parser (with McClosky's biomed parsing model) to parse sentences, and converts the resulting parse trees to clause, phrase, and POS tags."><label><input type="checkbox" /> cj_parser</label> (all)
                                    <ul class="checkboxes">
                                        <li><label><input type="checkbox" /> clause</label></li>
                                        <li><label><input type="checkbox" /> phrase</label></li>
                                        <li><label><input type="checkbox" /> pos</label></li>
                                    </ul>
                                </li>
                                <li title="Splits sentences into clauses at certain punctuation (e.g. commas), as long as the clauses end up long enough, and they agree with other sources of clause tags if enabled."><label><input type="checkbox" /> clauses</label></li>
                                <li title="Looks up biological mechanism terms for the Deep Reader for Understanding Mechanisms (DRUM)."><label><input type="checkbox" /> drum</label></li>
                                <li title="Tags certain (often abbreviated) phrases occurring in prescriptions as either adjectives or adverbs."><label><input type="checkbox" /> prescriptions</label></li>
                                <li title="Tags each punctuation character."><label><input type="checkbox" /> punctuation</label></li>
                                <li title="Tags double-quoted strings."><label><input type="checkbox" /> quotations</label></li>
                                <li title="Uses the Lingua::EN::Sentence Perl module to split the string into sentences."><label><input type="checkbox" /> sentences</label></li>
                                <li title="Splits the string on sequences of whitespace longer than one character."><label><input type="checkbox" /> spaced_chunks</label></li>
                                <li title="Adds information from the SPECIALIST lexicon, including part of speech, citation form, complement patterns, and derivational links."><label><input type="checkbox" /> specialist</label></li>
                                <li title="Uses Stanford CoreNLP to process the string (or each sentence tag if they're available), using the tokenizer to produce word and punctuation tags, the sentence splitter to produce sentence tags (unless they were already in the input), the POS tagger to produce pos tags, the parser to produce clause and phrase tags, and the NER to produce named-entity tags."><label><input type="checkbox" /> stanford_core_nlp</label> (all)
                                    <ul class="checkboxes">
                                        <li><label><input type="checkbox" /> clause</label></li>
                                        <li><label><input type="checkbox" /> named-entity</label></li>
                                        <li><label><input type="checkbox" /> phrase</label></li>
                                        <li><label><input type="checkbox" /> pos</label></li>
                                        <li><label><input type="checkbox" /> punctuation</label></li>
                                        <li><label><input type="checkbox" /> sentence</label></li>
                                        <li><label><input type="checkbox" /> word</label></li>
                                    </ul>
                                </li>
                                <li title="Uses the Geo::StreetAddress::US Perl module to tag anything that could be the first line of a US address (e.g. &quot;40 S. Alcaniz St.&quot;)."><label><input type="checkbox" /> street_addresses</label></li>
                                <li title="Tags any substring that matches a name in the GNIS database as a named-entity with type ONT::geographic-region."><label><input type="checkbox" /> terms</label> (geographic names)</li>
                                <li title="Tags multi-word lexical items from WordNet with their sense key, part of speech, and morphology."><label><input type="checkbox" /> word_net</label></li>
                                <li title="Tags anything that the Parser might want to consider a separate word. That includes splitting CamelCase and contractions, among other things."><label><input type="checkbox" /> words</label> (highly recommended!)</li>
                                <li>Please note that for now, even if you select one of the sentence- or clause- splitting taggers, the TRIPS Parser will still see the whole input as one "utterance" and may not decided to split it in the same way, or at all.</li>
                            </ul>
                            <label>Output sense information only for words with Penn POS tags: <input type="text" name="senses-only-for-penn-poss" id="senses-only-for-penn-poss" value="{@senses-only-for-penn-poss | genres/genre[@genre=$genre]/@senses-only-for-penn-poss}" /></label> (enter a comma-separated list of tags, or use the <a href="javascript:toggleDisplay('senses-only-for-penn-poss-checkboxes')" title="Show/hide Penn POS checkboxes.">checkboxes</a>)
                            <ul class="checkboxes" id="senses-only-for-penn-poss-checkboxes">
                                <li><label><input type="checkbox" /> all noun tags</label>
                                    <ul class="checkboxes">
                                        <li><label><input type="checkbox" /> NN</label>  singular or mass</li>
                                        <li><label><input type="checkbox" /> NNS</label>  plural</li>
                                        <li><label><input type="checkbox" /> NNP</label>  proper singular</li>
                                        <li><label><input type="checkbox" /> NNPS</label>  proper plural</li>
                                    </ul>
                                </li>
                                <li><label><input type="checkbox" /> all verb tags</label>
                                    <ul class="checkboxes">
                                        <li><label><input type="checkbox" /> MD</label>  modal</li>
                                        <li><label><input type="checkbox" /> VB</label>  base form</li>
                                        <li><label><input type="checkbox" /> VBD</label>  past tense</li>
                                        <li><label><input type="checkbox" /> VBG</label>  gerund or present participle</li>
                                        <li><label><input type="checkbox" /> VBN</label>  past participle</li>
                                        <li><label><input type="checkbox" /> VBP</label>  non-3rd person singular present</li>
                                        <li><label><input type="checkbox" /> VBZ</label>  3rd person singular present</li>
                                    </ul>
                                </li>
                                <li><label><input type="checkbox" /> all adjective tags</label>
                                    <ul class="checkboxes">
                                        <li><label><input type="checkbox" /> JJ</label></li>
                                        <li><label><input type="checkbox" /> JJR</label>  comparative</li>
                                        <li><label><input type="checkbox" /> JJS</label>  superlative</li>
                                    </ul>
                                </li>
                                <li><label><input type="checkbox" /> all adverb tags</label>
                                    <ul class="checkboxes">
                                        <li><label><input type="checkbox" /> RB</label></li>
                                        <li><label><input type="checkbox" /> RBR</label>  comparative</li>
                                        <li><label><input type="checkbox" /> RBS</label>  superlative</li>
                                    </ul>
                                </li>
                                <li><label><input type="checkbox" /> all other tags</label>
                                    <ul class="checkboxes">
                                        <li><label><input type="checkbox" /> CC</label>  coordinating conjunction</li>
                                        <li><label><input type="checkbox" /> CD</label>  cardinal number</li>
                                        <li><label><input type="checkbox" /> DT</label>  determiner</li>
                                        <li><label><input type="checkbox" /> EX</label>  existential there</li>
                                        <li><label><input type="checkbox" /> FW</label>  foreign word</li>
                                        <li><label><input type="checkbox" /> IN</label>  preposition or subordinating conjunction</li>
                                        <li><label><input type="checkbox" /> LS</label>  list item marker</li>
                                        <li><label><input type="checkbox" /> PDT</label>  predeterminer</li>
                                        <li><label><input type="checkbox" /> POS</label>  possessive ending</li>
                                        <li><label><input type="checkbox" /> PRP</label>  personal pronoun</li>
                                        <li><label><input type="checkbox" /> PRP$</label>  possessive pronoun</li>
                                        <li><label><input type="checkbox" /> RP</label>  particle</li>
                                        <li><label><input type="checkbox" /> SYM</label>  symbol</li>
                                        <li><label><input type="checkbox" /> TO</label>  to</li>
                                        <li><label><input type="checkbox" /> UH</label>  interjection</li>
                                        <li><label><input type="checkbox" /> WDT</label>  wh-determiner</li>
                                        <li><label><input type="checkbox" /> WP</label>  wh-pronoun</li>
                                        <li><label><input type="checkbox" /> WP$</label>  possessive wh-pronoun</li>
                                        <li><label><input type="checkbox" /> WRB</label>  wh-adverb</li>
                                    </ul>
                                    (note that . , ; `` '' are omitted for technical reasons, but they don't usually have sense tags in the first place)
                                </li>
                            </ul>
                        </div>
                        |
                    </div>
                </form>
                <xsl:apply-templates />
                <xsl:call-template name="footer" />
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
