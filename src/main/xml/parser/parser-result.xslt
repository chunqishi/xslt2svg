<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="parser-interface.xsl"?>
<!DOCTYPE trips-parser-output SYSTEM "trips-parser-output.dtd">
<trips-parser-output parser-build-date="2015-06-05T19:32:54-0400" genre="drum" extsformat="table" tagsformat="table" treecontents="phrase" treeformat="LinGO" lfformat="svg" tag-type="(or words capitalized_names alphanumerics punctuation quotations
    alternate_spellings (and stanford_core_nlp (not named-entity)) word-net
    prescriptions drum specialist)" no-sense-words="history,procedure,histories,procedures,including,developed,development,seen,common" input="Ras proteins caused widespread transcriptional activation of p53 through a mechanism involving acetylation of specific residues in its DNA binding domain">
    <genres><genre genre="text" tag-type="(or terms words punctuation (and stanford_core_nlp (or named-entity pos)) street_addresses capitalized_names alphanumerics quotations alternate_spellings)" /><genre genre="speech" tag-type="(or terms words punctuation (and stanford_core_nlp (or named-entity pos)) street_addresses alphanumerics)" /><genre genre="definition" tag-type="(not all)" /><genre genre="drum" tag-type="(or words capitalized_names alphanumerics punctuation quotations alternate_spellings (and stanford_core_nlp (not named-entity)) word-net prescriptions drum specialist affixes)" no-sense-words="history,procedure,histories,procedures,including,developed,development,seen,common" /></genres><debug>; loading #P&quot;/Users/wbeaumont/web-tools/src/config/lisp/../../../src/TextTagger/drum-dsl/CHEBI/003608.lisp&quot;
    ; loading #P&quot;/Users/wbeaumont/web-tools/src/config/lisp/../../../src/TextTagger/drum-dsl/CHEBI/003369.lisp&quot;
    ; loading #P&quot;/Users/wbeaumont/web-tools/src/config/lisp/../../../src/TextTagger/drum-dsl/CHEBI/001699.lisp&quot;
    ; loading #P&quot;/Users/wbeaumont/web-tools/src/config/lisp/../../../src/TextTagger/drum-dsl/CHEBI/001598.lisp&quot;
    ; loading #P&quot;/Users/wbeaumont/web-tools/src/config/lisp/../../../src/TextTagger/drum-dsl/GO/000367.lisp&quot;
    ; loading #P&quot;/Users/wbeaumont/web-tools/src/config/lisp/../../../src/TextTagger/drum-dsl/GO/190136.lisp&quot;
    ; loading #P&quot;/Users/wbeaumont/web-tools/src/config/lisp/../../../src/TextTagger/drum-dsl/GO/009715.lisp&quot;
    ; loading #P&quot;/Users/wbeaumont/web-tools/src/config/lisp/../../../src/TextTagger/drum-dsl/GO/000548.lisp&quot;

    templates to replicate = ((MASS-PRED-TEMPL NIL) (COUNT-PRED-TEMPL NIL))
    templates to replicate = ((OTHER-RELN-TEMPL NIL)
    (CLASSIFIER-COUNT-PL-TEMPL NIL)
    (COUNT-PRED-TEMPL NIL))
    templates to replicate = ((COUNT-PRED-TEMPL NIL))
    templates to replicate = ((MASS-PRED-TEMPL NIL) (COUNT-PRED-TEMPL NIL))
    templates to replicate = ((OTHER-RELN-TEMPL NIL)
    (CLASSIFIER-COUNT-PL-TEMPL NIL)
    (COUNT-PRED-TEMPL NIL))
    templates to replicate = ((COUNT-PRED-TEMPL NIL))
    templates to replicate = ((LEXICONMANAGER::COUNT-PRED-TEMPL NIL))
    Pruning agenda with beam width 20
    Pruning agenda with beam width 20
    Pruning agenda with beam width 20</debug><utt><words><lisp>(W::RAS W::PROTEINS W::CAUSED W::WIDESPREAD W::TRANSCRIPTIONAL W::ACTIVATION
    W::OF W::P 53 W::THROUGH W::A W::MECHANISM W::INVOLVING W::ACETYLATION W::OF
    W::SPECIFIC W::RESIDUES W::IN W::ITS W::DNA W::BINDING W::DOMAIN)</lisp><word>RAS</word><word>PROTEINS</word><word>CAUSED</word><word>WIDESPREAD</word><word>TRANSCRIPTIONAL</word><word>ACTIVATION</word><word>OF</word><word>P</word><word>53</word><word>THROUGH</word><word>A</word><word>MECHANISM</word><word>INVOLVING</word><word>ACETYLATION</word><word>OF</word><word>SPECIFIC</word><word>RESIDUES</word><word>IN</word><word>ITS</word><word>DNA</word><word>BINDING</word><word>DOMAIN</word></words><tags><lisp>((WORD &quot;Ras&quot; :FRAME (0 3) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NN) :TRIPS-PARTS-OF-SPEECH (W::N) :ONT-TYPES
    (ONT::PROTEIN-FAMILY) :DOMAIN-SPECIFIC-INFO
    ((DRUM :ID FA::|03663| :NAME &quot;ras family&quot; :MATCHED-VARIANTS (&quot;ras&quot;))
    (DRUM :ID XFAM::PF00071.17 :NAME &quot;ras&quot; :MATCHED-VARIANTS (&quot;ras&quot;))
    (SPECIALIST :EUI E0563378 :CITATION-FORM &quot;Ras&quot;)
    (SPECIALIST :EUI E0005048 :CITATION-FORM &quot;RAS&quot; :ACRONYM-OF
    ((SPECIALIST :EUI E0051995 :CITATION-FORM &quot;rapid atrial stimulation&quot;)
    (SPECIALIST :EUI E0052324 :CITATION-FORM &quot;recurrent apthous stomatitis&quot;)
    (SPECIALIST :EUI E0052443 :CITATION-FORM &quot;reflex-activating stimulus&quot;)
    (SPECIALIST :EUI E0052715 :CITATION-FORM &quot;renal artery stenosis&quot;)
    (SPECIALIST :EUI E0053141 :CITATION-FORM &quot;reticular activating system&quot;)
    (SPECIALIST :EUI E0314686 :CITATION-FORM &quot;rheumatoid arthritis serum&quot;)
    (SPECIALIST :EUI E0239007 :CITATION-FORM &quot;renin angiotensin system&quot;)
    (SPECIALIST :EUI E0708060 :CITATION-FORM &quot;retinoic acid syndrome&quot;)))
    (SPECIALIST :EUI E0005049 :CITATION-FORM &quot;RAS&quot; :ACRONYM-OF
    ((SPECIALIST :CITATION-FORM &quot;right arm, sitting&quot;)))))
    (:PENN-PARTS-OF-SPEECH (NN) :TRIPS-PARTS-OF-SPEECH (W::N) :ONT-TYPES
    (ONT::MOLECULE) :DOMAIN-SPECIFIC-INFO
    ((DRUM :ID CHEBI::|63620| :NAME &quot;rasagiline&quot; :MATCHED-VARIANTS (&quot;RAS&quot;)
    :MAPPINGS
    ((MAP :THROUGH
    (CONCEPT CHEBI::|23367|
    (SENSE (MORPH (POS N) (WORD (MOLECULAR ENTITI)))))
    :TO ONT::MOLECULE)))
    (SPECIALIST :EUI E0563378 :CITATION-FORM &quot;Ras&quot;)
    (SPECIALIST :EUI E0005048 :CITATION-FORM &quot;RAS&quot; :ACRONYM-OF
    ((SPECIALIST :EUI E0051995 :CITATION-FORM &quot;rapid atrial stimulation&quot;)
    (SPECIALIST :EUI E0052324 :CITATION-FORM &quot;recurrent apthous stomatitis&quot;)
    (SPECIALIST :EUI E0052443 :CITATION-FORM &quot;reflex-activating stimulus&quot;)
    (SPECIALIST :EUI E0052715 :CITATION-FORM &quot;renal artery stenosis&quot;)
    (SPECIALIST :EUI E0053141 :CITATION-FORM &quot;reticular activating system&quot;)
    (SPECIALIST :EUI E0314686 :CITATION-FORM &quot;rheumatoid arthritis serum&quot;)
    (SPECIALIST :EUI E0239007 :CITATION-FORM &quot;renin angiotensin system&quot;)
    (SPECIALIST :EUI E0708060 :CITATION-FORM &quot;retinoic acid syndrome&quot;)))
    (SPECIALIST :EUI E0005049 :CITATION-FORM &quot;RAS&quot; :ACRONYM-OF
    ((SPECIALIST :CITATION-FORM &quot;right arm, sitting&quot;))))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;proteins&quot; :FRAME (4 12) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NNS) :TRIPS-PARTS-OF-SPEECH (W::N))) :UTTNUM 19
    :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;Ras proteins&quot; :FRAME (0 12) :PENN-CATS (NP) :TRIPS-CATS (W::NP)
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;caused&quot; :FRAME (13 19) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (VBD) :TRIPS-PARTS-OF-SPEECH (W::V))) :UTTNUM 19
    :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;widespread&quot; :FRAME (20 30) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (JJ) :TRIPS-PARTS-OF-SPEECH (W::ADJ)
    :DOMAIN-SPECIFIC-INFO
    ((SPECIALIST :EUI E0065425 :CITATION-FORM &quot;widespread&quot;))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;transcriptional&quot; :FRAME (31 46) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (JJ) :TRIPS-PARTS-OF-SPEECH (W::ADJ)
    :DOMAIN-SPECIFIC-INFO
    ((SPECIALIST :EUI E0061725 :CITATION-FORM &quot;transcriptional&quot;))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;activation&quot; :FRAME (47 57) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NN) :TRIPS-PARTS-OF-SPEECH (W::N)
    :DOMAIN-SPECIFIC-INFO
    ((SPECIALIST :EUI E0007100 :CITATION-FORM &quot;activation&quot; :COMPLEMENTS
    (&quot;compl=pphr(of,np)&quot; &quot;compl=pphr(by,np)&quot;) :NOMINALIZATION-OF
    ((SPECIALIST :EUI E0007090 :CAT VERB :CITATION-FORM &quot;activate&quot;))))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;widespread transcriptional activation&quot; :FRAME (20 57) :PENN-CATS (NP)
    :TRIPS-CATS (W::NP) :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;of&quot; :FRAME (58 60) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (IN) :TRIPS-PARTS-OF-SPEECH (W::PREP W::ADV)))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;p&quot; :FRAME (61 61) :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;53&quot; :FRAME (62 64) :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;p53&quot; :FRAME (61 64) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NNP) :TRIPS-PARTS-OF-SPEECH (W::NAME) :ONT-TYPES
    (ONT::GENE) :DOMAIN-SPECIFIC-INFO
    ((DRUM :ID HGNC::|11998| :NAME &quot;tumor protein p53&quot; :MATCHED-VARIANTS
    (&quot;p53&quot;) :DBXREFS (UP::P04637))))
    (:PENN-PARTS-OF-SPEECH (NNP) :TRIPS-PARTS-OF-SPEECH (W::NAME) :ONT-TYPES
    (ONT::PROTEIN-FAMILY) :DOMAIN-SPECIFIC-INFO
    ((DRUM :ID FA::|02632| :NAME &quot;p53 family&quot; :MATCHED-VARIANTS (&quot;p53&quot;))
    (DRUM :ID XFAM::PF00870.13 :NAME &quot;P53&quot; :MATCHED-VARIANTS (&quot;P53&quot;))
    (DRUM :ID XFAM::PF07710.6 :NAME &quot;P53 tetramer&quot; :MATCHED-VARIANTS (&quot;P53&quot;))
    (DRUM :ID XFAM::PF08563.6 :NAME &quot;P53 TAD&quot; :MATCHED-VARIANTS (&quot;P53&quot;))
    (DRUM :ID XFAM::PF11619.3 :NAME &quot;P53 C&quot; :MATCHED-VARIANTS (&quot;P53&quot;)))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;p53&quot; :FRAME (61 64) :PENN-CATS (NP) :TRIPS-CATS (W::NP) :UTTNUM 19
    :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;of p53&quot; :FRAME (58 64) :PENN-CATS (PP) :TRIPS-CATS (W::PP) :UTTNUM 19
    :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;widespread transcriptional activation of p53&quot; :FRAME (20 64)
    :PENN-CATS (NP) :TRIPS-CATS (W::NP) :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19
    :GENRE :DRUM)
    (WORD &quot;through&quot; :FRAME (65 72) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (IN) :TRIPS-PARTS-OF-SPEECH (W::PREP W::ADV)
    :DOMAIN-SPECIFIC-INFO ((SPECIALIST :EUI E0222392 :CITATION-FORM &quot;thru&quot;))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;a&quot; :FRAME (73 74) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (DT) :TRIPS-PARTS-OF-SPEECH (W::ART W::QUAN W::PRO)))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;mechanism&quot; :FRAME (75 84) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NN) :TRIPS-PARTS-OF-SPEECH (W::N))) :UTTNUM 19
    :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;a mechanism&quot; :FRAME (73 84) :PENN-CATS (NP) :TRIPS-CATS (W::NP)
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;involving&quot; :FRAME (85 94) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (VBG) :TRIPS-PARTS-OF-SPEECH (W::V))) :UTTNUM 19
    :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;acetylation&quot; :FRAME (95 106) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NN) :TRIPS-PARTS-OF-SPEECH (W::N)
    :DOMAIN-SPECIFIC-INFO
    ((SPECIALIST :EUI E0300071 :CITATION-FORM &quot;acetylation&quot; :COMPLEMENTS
    (&quot;compl=pphr(by,np)&quot; &quot;compl=pphr(of,np)&quot;) :NOMINALIZATION-OF
    ((SPECIALIST :EUI E0006834 :CAT VERB :CITATION-FORM &quot;acetylate&quot;))))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;acetylation&quot; :FRAME (95 106) :PENN-CATS (NP) :TRIPS-CATS (W::NP)
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;of&quot; :FRAME (107 109) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (IN) :TRIPS-PARTS-OF-SPEECH (W::PREP W::ADV)))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;specific&quot; :FRAME (110 118) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (JJ) :TRIPS-PARTS-OF-SPEECH (W::ADJ))) :UTTNUM 19
    :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;residues&quot; :FRAME (119 127) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NNS) :TRIPS-PARTS-OF-SPEECH (W::N))) :UTTNUM 19
    :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;specific residues&quot; :FRAME (110 127) :PENN-CATS (NP) :TRIPS-CATS
    (W::NP) :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;in&quot; :FRAME (128 130) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (IN) :TRIPS-PARTS-OF-SPEECH (W::PREP W::ADV)))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;its&quot; :FRAME (131 134) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (PRP$) :TRIPS-PARTS-OF-SPEECH (W::PRO))) :UTTNUM 19
    :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;DNA&quot; :FRAME (135 138) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NNP) :TRIPS-PARTS-OF-SPEECH (W::NAME) :ONT-TYPES
    (ONT::CELL-PART) :DOMAIN-SPECIFIC-INFO
    ((DRUM :ID CHEBI::|16991| :NAME &quot;deoxyribonucleic acid&quot; :MATCHED-VARIANTS
    (&quot;DNA&quot;) :MAPPINGS
    ((MAP :THROUGH
    (CONCEPT CHEBI::|15986|
    (SENSE (MORPH (POS N) (WORD POLYNUCLEOTIDE))))
    :TO ONT::CELL-PART))))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;binding&quot; :FRAME (139 146) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NN) :TRIPS-PARTS-OF-SPEECH (W::N) :ONT-TYPES
    (ONT::EVENT-OF-CHANGE) :DOMAIN-SPECIFIC-INFO
    ((DRUM :ID GO::|0005488| :NAME &quot;binding&quot; :MATCHED-VARIANTS (&quot;binding&quot;)
    :MAPPINGS
    ((MAP :THROUGH
    (CONCEPT GO::|0003674|
    (SENSE (MORPH (POS N) (WORD MOLECULAR_FUNCTION))))
    :TO ONT::EVENT-OF-CHANGE)))
    (SPECIALIST :EUI E0012943 :CITATION-FORM &quot;binding&quot; :COMPLEMENTS
    (&quot;compl=pphr(to,np(DNA))&quot; &quot;compl=pphr(to,np)&quot;) :NOMINALIZATION-OF
    ((SPECIALIST :EUI E0012939 :CAT VERB :CITATION-FORM &quot;bind&quot;))))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;DNA binding&quot; :FRAME (135 146) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NNP) :TRIPS-PARTS-OF-SPEECH (W::NAME) :ONT-TYPES
    (ONT::EVENT-OF-CHANGE) :DOMAIN-SPECIFIC-INFO
    ((DRUM :ID GO::|0003677| :NAME &quot;DNA binding&quot; :MATCHED-VARIANTS
    (&quot;DNA binding&quot;) :MAPPINGS
    ((MAP :THROUGH
    (CONCEPT GO::|0003674|
    (SENSE (MORPH (POS N) (WORD MOLECULAR_FUNCTION))))
    :TO ONT::EVENT-OF-CHANGE))))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;domain&quot; :FRAME (147 152) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NN) :TRIPS-PARTS-OF-SPEECH (W::N))) :UTTNUM 19
    :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (WORD &quot;DNA binding domain&quot; :FRAME (135 152) :SENSE-INFO
    ((:PENN-PARTS-OF-SPEECH (NN) :TRIPS-PARTS-OF-SPEECH (W::N)
    :DOMAIN-SPECIFIC-INFO
    ((SPECIALIST :EUI E0715183 :CITATION-FORM &quot;DNA binding domain&quot; :COMPLEMENTS
    (&quot;compl=pphr(of,np)&quot;) :ACRONYM-OF
    ((SPECIALIST :EUI E0715181 :CITATION-FORM
    &quot;deoxyribonucleic acid binding domain&quot;))))))
    :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;its DNA binding domain&quot; :FRAME (131 152) :PENN-CATS (NP) :TRIPS-CATS
    (W::NP) :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;in its DNA binding domain&quot; :FRAME (128 152) :PENN-CATS (PP)
    :TRIPS-CATS (W::PP) :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;specific residues in its DNA binding domain&quot; :FRAME (110 152)
    :PENN-CATS (NP) :TRIPS-CATS (W::NP) :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19
    :GENRE :DRUM)
    (PREFER &quot;of specific residues in its DNA binding domain&quot; :FRAME (107 152)
    :PENN-CATS (PP) :TRIPS-CATS (W::PP) :UTTNUM 19 :DIRECTION INPUT :UTTNUM 19
    :GENRE :DRUM)
    (PREFER &quot;acetylation of specific residues in its DNA binding domain&quot; :FRAME
    (95 152) :PENN-CATS (NP) :TRIPS-CATS (W::NP) :UTTNUM 19 :DIRECTION INPUT
    :UTTNUM 19 :GENRE :DRUM)
    (PREFER &quot;involving acetylation of specific residues in its DNA binding domain&quot;
    :FRAME (85 152) :PENN-CATS (PP) :TRIPS-CATS (W::PP) :UTTNUM 19 :DIRECTION
    INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER
    &quot;a mechanism involving acetylation of specific residues in its DNA binding domain&quot;
    :FRAME (73 152) :PENN-CATS (NP) :TRIPS-CATS (W::NP) :UTTNUM 19 :DIRECTION
    INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER
    &quot;through a mechanism involving acetylation of specific residues in its DNA binding domain&quot;
    :FRAME (65 152) :PENN-CATS (PP) :TRIPS-CATS (W::PP) :UTTNUM 19 :DIRECTION
    INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER
    &quot;caused widespread transcriptional activation of p53 through a mechanism involving acetylation of specific residues in its DNA binding domain&quot;
    :FRAME (13 152) :PENN-CATS (VP) :TRIPS-CATS (W::VP) :UTTNUM 19 :DIRECTION
    INPUT :UTTNUM 19 :GENRE :DRUM)
    (PREFER
    &quot;Ras proteins caused widespread transcriptional activation of p53 through a mechanism involving acetylation of specific residues in its DNA binding domain&quot;
    :FRAME (0 152) :PENN-CATS (S SBARQ SINV SQ) :UTTNUM 19 :DIRECTION INPUT
    :UTTNUM 19 :GENRE :DRUM))</lisp><word lex="Ras" start="0" end="3"><sense-info penn-parts-of-speech="NN" trips-parts-of-speech="N" ont-types="PROTEIN-FAMILY"><drum id="FA:03663" name="ras family">    <matched-variant>ras</matched-variant>
</drum><drum id="XFAM:PF00071.17" name="ras">    <matched-variant>ras</matched-variant>
</drum><specialist eui="E0563378" citation-form="Ras" /><specialist eui="E0005048" citation-form="RAS"><acronym-of><specialist eui="E0051995" citation-form="rapid atrial stimulation" /><specialist eui="E0052324" citation-form="recurrent apthous stomatitis" /><specialist eui="E0052443" citation-form="reflex-activating stimulus" /><specialist eui="E0052715" citation-form="renal artery stenosis" /><specialist eui="E0053141" citation-form="reticular activating system" /><specialist eui="E0314686" citation-form="rheumatoid arthritis serum" /><specialist eui="E0239007" citation-form="renin angiotensin system" /><specialist eui="E0708060" citation-form="retinoic acid syndrome" /></acronym-of></specialist><specialist eui="E0005049" citation-form="RAS"><acronym-of><specialist citation-form="right arm, sitting" /></acronym-of></specialist></sense-info><sense-info penn-parts-of-speech="NN" trips-parts-of-speech="N" ont-types="MOLECULE"><drum id="CHEBI:63620" name="rasagiline">    <matched-variant>RAS</matched-variant>
    <map to="MOLECULE" through="CHEBI:23367" /></drum><specialist eui="E0563378" citation-form="Ras" /><specialist eui="E0005048" citation-form="RAS"><acronym-of><specialist eui="E0051995" citation-form="rapid atrial stimulation" /><specialist eui="E0052324" citation-form="recurrent apthous stomatitis" /><specialist eui="E0052443" citation-form="reflex-activating stimulus" /><specialist eui="E0052715" citation-form="renal artery stenosis" /><specialist eui="E0053141" citation-form="reticular activating system" /><specialist eui="E0314686" citation-form="rheumatoid arthritis serum" /><specialist eui="E0239007" citation-form="renin angiotensin system" /><specialist eui="E0708060" citation-form="retinoic acid syndrome" /></acronym-of></specialist><specialist eui="E0005049" citation-form="RAS"><acronym-of><specialist citation-form="right arm, sitting" /></acronym-of></specialist></sense-info></word><word lex="proteins" start="4" end="12"><sense-info penn-parts-of-speech="NNS" trips-parts-of-speech="N" /></word><prefer text="Ras proteins" start="0" end="12" penn-cats="NP" /><word lex="caused" start="13" end="19"><sense-info penn-parts-of-speech="VBD" trips-parts-of-speech="V" /></word><word lex="widespread" start="20" end="30"><sense-info penn-parts-of-speech="JJ" trips-parts-of-speech="ADJ"><specialist eui="E0065425" citation-form="widespread" /></sense-info></word><word lex="transcriptional" start="31" end="46"><sense-info penn-parts-of-speech="JJ" trips-parts-of-speech="ADJ"><specialist eui="E0061725" citation-form="transcriptional" /></sense-info></word><word lex="activation" start="47" end="57"><sense-info penn-parts-of-speech="NN" trips-parts-of-speech="N"><specialist eui="E0007100" citation-form="activation">    <complement>compl=pphr(of,np)</complement>
    <complement>compl=pphr(by,np)</complement>
    <nominalization-of><specialist eui="E0007090" cat="VERB" citation-form="activate" /></nominalization-of></specialist></sense-info></word><prefer text="widespread transcriptional activation" start="20" end="57" penn-cats="NP" /><word lex="of" start="58" end="60"><sense-info penn-parts-of-speech="IN" trips-parts-of-speech="PREP,ADV" /></word><word lex="p" start="61" end="61" /><word lex="53" start="62" end="64" /><word lex="p53" start="61" end="64"><sense-info penn-parts-of-speech="NNP" trips-parts-of-speech="NAME" ont-types="GENE"><drum id="HGNC:11998" name="tumor protein p53" dbxrefs="UP:P04637">    <matched-variant>p53</matched-variant>
</drum></sense-info><sense-info penn-parts-of-speech="NNP" trips-parts-of-speech="NAME" ont-types="PROTEIN-FAMILY"><drum id="FA:02632" name="p53 family">    <matched-variant>p53</matched-variant>
</drum><drum id="XFAM:PF00870.13" name="P53">    <matched-variant>P53</matched-variant>
</drum><drum id="XFAM:PF07710.6" name="P53 tetramer">    <matched-variant>P53</matched-variant>
</drum><drum id="XFAM:PF08563.6" name="P53 TAD">    <matched-variant>P53</matched-variant>
</drum><drum id="XFAM:PF11619.3" name="P53 C">    <matched-variant>P53</matched-variant>
</drum></sense-info></word><prefer text="p53" start="61" end="64" penn-cats="NP" /><prefer text="of p53" start="58" end="64" penn-cats="PP" /><prefer text="widespread transcriptional activation of p53" start="20" end="64" penn-cats="NP" /><word lex="through" start="65" end="72"><sense-info penn-parts-of-speech="IN" trips-parts-of-speech="PREP,ADV"><specialist eui="E0222392" citation-form="thru" /></sense-info></word><word lex="a" start="73" end="74"><sense-info penn-parts-of-speech="DT" trips-parts-of-speech="ART,QUAN,PRO" /></word><word lex="mechanism" start="75" end="84"><sense-info penn-parts-of-speech="NN" trips-parts-of-speech="N" /></word><prefer text="a mechanism" start="73" end="84" penn-cats="NP" /><word lex="involving" start="85" end="94"><sense-info penn-parts-of-speech="VBG" trips-parts-of-speech="V" /></word><word lex="acetylation" start="95" end="106"><sense-info penn-parts-of-speech="NN" trips-parts-of-speech="N"><specialist eui="E0300071" citation-form="acetylation">    <complement>compl=pphr(by,np)</complement>
    <complement>compl=pphr(of,np)</complement>
    <nominalization-of><specialist eui="E0006834" cat="VERB" citation-form="acetylate" /></nominalization-of></specialist></sense-info></word><prefer text="acetylation" start="95" end="106" penn-cats="NP" /><word lex="of" start="107" end="109"><sense-info penn-parts-of-speech="IN" trips-parts-of-speech="PREP,ADV" /></word><word lex="specific" start="110" end="118"><sense-info penn-parts-of-speech="JJ" trips-parts-of-speech="ADJ" /></word><word lex="residues" start="119" end="127"><sense-info penn-parts-of-speech="NNS" trips-parts-of-speech="N" /></word><prefer text="specific residues" start="110" end="127" penn-cats="NP" /><word lex="in" start="128" end="130"><sense-info penn-parts-of-speech="IN" trips-parts-of-speech="PREP,ADV" /></word><word lex="its" start="131" end="134"><sense-info penn-parts-of-speech="PRP$" trips-parts-of-speech="PRO" /></word><word lex="DNA" start="135" end="138"><sense-info penn-parts-of-speech="NNP" trips-parts-of-speech="NAME" ont-types="CELL-PART"><drum id="CHEBI:16991" name="deoxyribonucleic acid">    <matched-variant>DNA</matched-variant>
    <map to="CELL-PART" through="CHEBI:15986" /></drum></sense-info></word><word lex="binding" start="139" end="146"><sense-info penn-parts-of-speech="NN" trips-parts-of-speech="N" ont-types="EVENT-OF-CHANGE"><drum id="GO:0005488" name="binding">    <matched-variant>binding</matched-variant>
    <map to="EVENT-OF-CHANGE" through="GO:0003674" /></drum><specialist eui="E0012943" citation-form="binding">    <complement>compl=pphr(to,np(DNA))</complement>
    <complement>compl=pphr(to,np)</complement>
    <nominalization-of><specialist eui="E0012939" cat="VERB" citation-form="bind" /></nominalization-of></specialist></sense-info></word><word lex="DNA binding" start="135" end="146"><sense-info penn-parts-of-speech="NNP" trips-parts-of-speech="NAME" ont-types="EVENT-OF-CHANGE"><drum id="GO:0003677" name="DNA binding">    <matched-variant>DNA binding</matched-variant>
    <map to="EVENT-OF-CHANGE" through="GO:0003674" /></drum></sense-info></word><word lex="domain" start="147" end="152"><sense-info penn-parts-of-speech="NN" trips-parts-of-speech="N" /></word><word lex="DNA binding domain" start="135" end="152"><sense-info penn-parts-of-speech="NN" trips-parts-of-speech="N"><specialist eui="E0715183" citation-form="DNA binding domain">    <complement>compl=pphr(of,np)</complement>
    <acronym-of><specialist eui="E0715181" citation-form="deoxyribonucleic acid binding domain" /></acronym-of></specialist></sense-info></word><prefer text="its DNA binding domain" start="131" end="152" penn-cats="NP" /><prefer text="in its DNA binding domain" start="128" end="152" penn-cats="PP" /><prefer text="specific residues in its DNA binding domain" start="110" end="152" penn-cats="NP" /><prefer text="of specific residues in its DNA binding domain" start="107" end="152" penn-cats="PP" /><prefer text="acetylation of specific residues in its DNA binding domain" start="95" end="152" penn-cats="NP" /><prefer text="involving acetylation of specific residues in its DNA binding domain" start="85" end="152" penn-cats="PP" /><prefer text="a mechanism involving acetylation of specific residues in its DNA binding domain" start="73" end="152" penn-cats="NP" /><prefer text="through a mechanism involving acetylation of specific residues in its DNA binding domain" start="65" end="152" penn-cats="PP" /><prefer text="caused widespread transcriptional activation of p53 through a mechanism involving acetylation of specific residues in its DNA binding domain" start="13" end="152" penn-cats="VP" /><prefer text="Ras proteins caused widespread transcriptional activation of p53 through a mechanism involving acetylation of specific residues in its DNA binding domain" start="0" end="152" penn-cats="S,SBARQ,SINV,SQ" /></tags><tree><lisp>(UTT
    (S (NP (N1 (N1 (N RAS)) (N1 (N PROTEINS))))
    (VP
    (VP-
    (VP- (V CAUSED)
    (NP
    (N1 (ADJP (ADJ WIDESPREAD))
    (N1 (N1 (ADJP (ADJ TRANSCRIPTIONAL)) (N1 (N ACTIVATION)))
    (PP (PREP OF) (NP (N1 (NAME P 53))))))))
    (ADVBL (ADV THROUGH)
    (NP (SPEC (DET (ART A)))
    (N1 (N1 (N MECHANISM))
    (N1 (NP (N1 (V INVOLVING)))
    (N1
    (N1 (N1 (N ACETYLATION))
    (PP (PREP OF) (NP (N1 (ADJP (ADJ SPECIFIC)) (N1 (N RESIDUES))))))
    (ADVBL (ADV IN)
    (NP (SPEC (DET (POSSESSOR (PRO ITS))))
    (N1 (N DNA BINDING DOMAIN)))))))))))))</lisp><UTT><S><NP><N1><N1><N>RAS</N></N1><N1><N>PROTEINS</N></N1></N1></NP><VP><VP-><VP-><V>CAUSED</V><NP><N1><ADJP><ADJ>WIDESPREAD</ADJ></ADJP><N1><N1><ADJP><ADJ>TRANSCRIPTIONAL</ADJ></ADJP><N1><N>ACTIVATION</N></N1></N1><PP><PREP>OF</PREP><NP><N1><NAME>P 53</NAME></N1></NP></PP></N1></N1></NP></VP-><ADVBL><ADV>THROUGH</ADV><NP><SPEC><DET><ART>A</ART></DET></SPEC><N1><N1><N>MECHANISM</N></N1><N1><NP><N1><V>INVOLVING</V></N1></NP><N1><N1><N1><N>ACETYLATION</N></N1><PP><PREP>OF</PREP><NP><N1><ADJP><ADJ>SPECIFIC</ADJ></ADJP><N1><N>RESIDUES</N></N1></N1></NP></PP></N1><ADVBL><ADV>IN</ADV><NP><SPEC><DET><POSSESSOR><PRO>ITS</PRO></POSSESSOR></DET></SPEC><N1><N>DNA BINDING DOMAIN</N></N1></NP></ADVBL></N1></N1></N1></NP></ADVBL></VP-></VP></S></UTT></tree><terms root="#V128287"><lisp>((ONT::SPEECHACT ONT::V128287 ONT::SA_TELL :CONTENT ONT::V124343 :START 0 :END
    153 :START 0 :END 153)
    (ONT::F ONT::V124343 (:* ONT::CAUSE-PRODUCE-REPRODUCE W::CAUSE) :AGENT
    ONT::V124338 :FORMAL ONT::V124357 :MOD ONT::V124387 :TENSE ONT::PAST :START 0
    :END 153 :WNSENSE &quot;cause%2:36:00::&quot; :START 0 :END 153)
    (ONT::INDEF-SET ONT::V124338 (:* ONT::PROTEIN W::PROTEIN) :ASSOC-WITH
    ONT::V124324 :START 0 :END 13 :WNSENSE &quot;protein%1:27:00::&quot; :START 0 :END 13)
    (ONT::KIND ONT::V124324 (:* ONT::PROTEIN-FAMILY W::RAS) :START 0 :END 13
    :WNSENSE &quot;ra%1:18:00::&quot; :DRUM
    ((:DRUM :ID FA::|03663| :NAME &quot;ras family&quot; :MATCHED-VARIANTS (&quot;ras&quot;))
    (:DRUM :ID XFAM::PF00071.17 :NAME &quot;ras&quot; :MATCHED-VARIANTS (&quot;ras&quot;)))
    :START 0 :END 13)
    (ONT::BARE ONT::V124357 (:* ONT::START W::ACTIVATION) :AFFECTED ONT::V124377
    :MOD ONT::V124349 :MOD ONT::V124354 :START 20 :END 65 :WNSENSE
    &quot;activation%1:22:00::&quot; :START 20 :END 65)
    (ONT::F ONT::V124349 (:* ONT::MODIFIER W::WIDESPREAD) :OF ONT::V124357 :START
    20 :END 31 :WNSENSE &quot;widespread%5:00:00:general:00&quot; :START 20 :END 31)
    (ONT::F ONT::V124354 (:* ONT::MODIFIER W::TRANSCRIPTIONAL) :OF ONT::V124357
    :START 31 :END 47 :START 31 :END 47)
    (ONT::BARE ONT::V124377 (:* ONT::GENE W::P-53) :NAME-OF (ONT::P 53) :START 58
    :END 65 :DRUM
    ((:DRUM :ID HGNC::|11998| :NAME &quot;tumor protein p53&quot; :MATCHED-VARIANTS (&quot;p53&quot;)
    :DBXREFS (UP::P04637)))
    :START 58 :END 65)
    (ONT::F ONT::V124387 (:* ONT::REASON W::THROUGH) :VAL ONT::V124442 :OF
    ONT::V124343 :START 65 :END 153 :WNSENSE &quot;through%4:02:03::&quot; :START 65 :END
    153)
    (ONT::A ONT::V124442 (:* ONT::ACETYLATION W::ACETYLATION) :ASSOC-WITH
    ONT::V124436 :AGENT ONT::V124439 :SPATIAL-LOC ONT::V124462 :AFFECTED
    ONT::V124455 :START 73 :END 153 :WNSENSE &quot;acetylation%1:22:00::&quot; :START 73
    :END 153)
    (ONT::KIND ONT::V124436 (:* ONT::DEVICE W::MECHANISM) :START 73 :END 153
    :WNSENSE &quot;mechanism%1:06:00::&quot; :START 73 :END 153)
    (ONT::BARE ONT::V124439 (:* ONT::HAVE W::INVOLVE) :START 85 :END 95 :WNSENSE
    &quot;involve%2:42:00::&quot; :START 85 :END 95)
    (ONT::INDEF-SET ONT::V124455 (:* ONT::RESIDUE W::RESIDUE) :MOD ONT::V124452
    :START 107 :END 128 :WNSENSE &quot;residue%1:27:00::&quot; :START 107 :END 128)
    (ONT::F ONT::V124452 (:* ONT::SPECIFICITY-VAL W::SPECIFIC) :OF ONT::V124455
    :START 110 :END 119 :WNSENSE &quot;specific%3:00:00::&quot; :START 110 :END 119)
    (ONT::F ONT::V124462 (:* ONT::IN-LOC W::IN) :VAL ONT::V124514 :START 128 :END
    153 :WNSENSE &quot;in%4:02:01::&quot; :START 128 :END 153)
    (ONT::THE ONT::V124514 (:* ONT::REFERENTIAL-SEM W::DNA-BINDING-DOMAIN)
    :ASSOC-POSS ONT::V124509 :START 131 :END 153 :START 131 :END 153)
    (ONT::PRO ONT::V124509 (:* ONT::REFERENTIAL-SEM W::ITS) :PROFORM ONT::ITS
    :START 131 :END 153 :START 131 :END 153))</lisp><rdf:RDF
        xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
        xmlns:role="http://www.cs.rochester.edu/research/trips/role#"
        xmlns:LF="http://www.cs.rochester.edu/research/trips/LF#">
    <rdf:Description rdf:ID="V128287">
        <LF:indicator>SPEECHACT</LF:indicator>
        <LF:type>SA_TELL</LF:type>
        <role:CONTENT rdf:resource="#V124343" />
        <LF:start>0</LF:start>
        <LF:end>153</LF:end>
        <LF:start>0</LF:start>
        <LF:end>153</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124343">
        <LF:indicator>F</LF:indicator>
        <LF:type>CAUSE-PRODUCE-REPRODUCE</LF:type>
        <LF:word>CAUSE</LF:word>
        <role:AGENT rdf:resource="#V124338" />
        <role:FORMAL rdf:resource="#V124357" />
        <role:MOD rdf:resource="#V124387" />
        <role:TENSE>PAST</role:TENSE>
        <LF:start>0</LF:start>
        <LF:end>153</LF:end>
        <role:WNSENSE>cause%2:36:00::</role:WNSENSE>
        <LF:start>0</LF:start>
        <LF:end>153</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124338">
        <LF:indicator>INDEF-SET</LF:indicator>
        <LF:type>PROTEIN</LF:type>
        <LF:word>PROTEIN</LF:word>
        <role:ASSOC-WITH rdf:resource="#V124324" />
        <LF:start>0</LF:start>
        <LF:end>13</LF:end>
        <role:WNSENSE>protein%1:27:00::</role:WNSENSE>
        <LF:start>0</LF:start>
        <LF:end>13</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124324">
        <LF:indicator>KIND</LF:indicator>
        <LF:type>PROTEIN-FAMILY</LF:type>
        <LF:word>RAS</LF:word>
        <LF:start>0</LF:start>
        <LF:end>13</LF:end>
        <role:WNSENSE>ra%1:18:00::</role:WNSENSE>
        <role:DRUM>((:DRUM :ID |03663| :NAME &quot;ras family&quot; :MATCHED-VARIANTS (&quot;ras&quot;))
            (:DRUM :ID PF00071.17 :NAME &quot;ras&quot; :MATCHED-VARIANTS (&quot;ras&quot;)))</role:DRUM>
        <LF:start>0</LF:start>
        <LF:end>13</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124357">
        <LF:indicator>BARE</LF:indicator>
        <LF:type>START</LF:type>
        <LF:word>ACTIVATION</LF:word>
        <role:AFFECTED rdf:resource="#V124377" />
        <role:MOD rdf:resource="#V124349" />
        <role:MOD rdf:resource="#V124354" />
        <LF:start>20</LF:start>
        <LF:end>65</LF:end>
        <role:WNSENSE>activation%1:22:00::</role:WNSENSE>
        <LF:start>20</LF:start>
        <LF:end>65</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124349">
        <LF:indicator>F</LF:indicator>
        <LF:type>MODIFIER</LF:type>
        <LF:word>WIDESPREAD</LF:word>
        <role:OF rdf:resource="#V124357" />
        <LF:start>20</LF:start>
        <LF:end>31</LF:end>
        <role:WNSENSE>widespread%5:00:00:general:00</role:WNSENSE>
        <LF:start>20</LF:start>
        <LF:end>31</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124354">
        <LF:indicator>F</LF:indicator>
        <LF:type>MODIFIER</LF:type>
        <LF:word>TRANSCRIPTIONAL</LF:word>
        <role:OF rdf:resource="#V124357" />
        <LF:start>31</LF:start>
        <LF:end>47</LF:end>
        <LF:start>31</LF:start>
        <LF:end>47</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124377">
        <LF:indicator>BARE</LF:indicator>
        <LF:type>GENE</LF:type>
        <LF:word>P-53</LF:word>
        <role:NAME-OF>(P 53)</role:NAME-OF>
        <LF:start>58</LF:start>
        <LF:end>65</LF:end>
        <role:DRUM>((:DRUM :ID |11998| :NAME &quot;tumor protein p53&quot; :MATCHED-VARIANTS (&quot;p53&quot;)
            :DBXREFS (P04637)))</role:DRUM>
        <LF:start>58</LF:start>
        <LF:end>65</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124387">
        <LF:indicator>F</LF:indicator>
        <LF:type>REASON</LF:type>
        <LF:word>THROUGH</LF:word>
        <role:VAL rdf:resource="#V124442" />
        <role:OF rdf:resource="#V124343" />
        <LF:start>65</LF:start>
        <LF:end>153</LF:end>
        <role:WNSENSE>through%4:02:03::</role:WNSENSE>
        <LF:start>65</LF:start>
        <LF:end>153</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124442">
        <LF:indicator>A</LF:indicator>
        <LF:type>ACETYLATION</LF:type>
        <LF:word>ACETYLATION</LF:word>
        <role:ASSOC-WITH rdf:resource="#V124436" />
        <role:AGENT rdf:resource="#V124439" />
        <role:SPATIAL-LOC rdf:resource="#V124462" />
        <role:AFFECTED rdf:resource="#V124455" />
        <LF:start>73</LF:start>
        <LF:end>153</LF:end>
        <role:WNSENSE>acetylation%1:22:00::</role:WNSENSE>
        <LF:start>73</LF:start>
        <LF:end>153</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124436">
        <LF:indicator>KIND</LF:indicator>
        <LF:type>DEVICE</LF:type>
        <LF:word>MECHANISM</LF:word>
        <LF:start>73</LF:start>
        <LF:end>153</LF:end>
        <role:WNSENSE>mechanism%1:06:00::</role:WNSENSE>
        <LF:start>73</LF:start>
        <LF:end>153</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124439">
        <LF:indicator>BARE</LF:indicator>
        <LF:type>HAVE</LF:type>
        <LF:word>INVOLVE</LF:word>
        <LF:start>85</LF:start>
        <LF:end>95</LF:end>
        <role:WNSENSE>involve%2:42:00::</role:WNSENSE>
        <LF:start>85</LF:start>
        <LF:end>95</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124455">
        <LF:indicator>INDEF-SET</LF:indicator>
        <LF:type>RESIDUE</LF:type>
        <LF:word>RESIDUE</LF:word>
        <role:MOD rdf:resource="#V124452" />
        <LF:start>107</LF:start>
        <LF:end>128</LF:end>
        <role:WNSENSE>residue%1:27:00::</role:WNSENSE>
        <LF:start>107</LF:start>
        <LF:end>128</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124452">
        <LF:indicator>F</LF:indicator>
        <LF:type>SPECIFICITY-VAL</LF:type>
        <LF:word>SPECIFIC</LF:word>
        <role:OF rdf:resource="#V124455" />
        <LF:start>110</LF:start>
        <LF:end>119</LF:end>
        <role:WNSENSE>specific%3:00:00::</role:WNSENSE>
        <LF:start>110</LF:start>
        <LF:end>119</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124462">
        <LF:indicator>F</LF:indicator>
        <LF:type>IN-LOC</LF:type>
        <LF:word>IN</LF:word>
        <role:VAL rdf:resource="#V124514" />
        <LF:start>128</LF:start>
        <LF:end>153</LF:end>
        <role:WNSENSE>in%4:02:01::</role:WNSENSE>
        <LF:start>128</LF:start>
        <LF:end>153</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124514">
        <LF:indicator>THE</LF:indicator>
        <LF:type>REFERENTIAL-SEM</LF:type>
        <LF:word>DNA-BINDING-DOMAIN</LF:word>
        <role:ASSOC-POSS rdf:resource="#V124509" />
        <LF:start>131</LF:start>
        <LF:end>153</LF:end>
        <LF:start>131</LF:start>
        <LF:end>153</LF:end>
    </rdf:Description>
    <rdf:Description rdf:ID="V124509">
        <LF:indicator>PRO</LF:indicator>
        <LF:type>REFERENTIAL-SEM</LF:type>
        <LF:word>ITS</LF:word>
        <role:PROFORM>ITS</role:PROFORM>
        <LF:start>131</LF:start>
        <LF:end>153</LF:end>
        <LF:start>131</LF:start>
        <LF:end>153</LF:end>
    </rdf:Description>
</rdf:RDF>
</terms></utt></trips-parser-output>