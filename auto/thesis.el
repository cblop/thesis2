(TeX-add-style-hook
 "thesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T2A") ("inputenc" "utf8") ("geometry" "hmargin=3cm" "vmargin=2cm") ("xcolor" "usenames" "dvipsnames" "svgnames" "table")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "report"
    "rep11"
    "baththesis"
    "graphicx"
    "syntax"
    "lineno"
    "framed"
    "fontenc"
    "inputenc"
    "caption"
    "textcomp"
    "paralist"
    "amsmath"
    "latexsym"
    "multirow"
    "multicol"
    "subcaption"
    "verbatim"
    "url"
    "natbib"
    "geometry"
    "xcolor"
    "todonotes"
    "tikz"
    "hyperref"
    "listings")
   (TeX-add-symbols
    "mnote"
    "minote"
    "jnote"
    "snote"
    "tropical"
    "mylabel"
    "myref"
    "feature"
    "usability"
    "bug"
    "syntax")
   (LaTeX-add-labels
    "cha:introduction"
    "sec:normative-intro"
    "sec:tropes-intro"
    "sec:trope-interface"
    "req1"
    "req2"
    "req3"
    "sec:papers"
    "pub:hswi"
    "pub:dhis"
    "pub:aisb"
    "pub:cmn"
    "pub:coin"
    "pub:icids"
    "pub:jurix"
    "pub:alia"
    "cha:literature-review"
    "sec:narratology"
    "sec:structure"
    "fig:vonnegut"
    "fig:propp1"
    "fig:propp2"
    "sec:implementations"
    "fig:rumelhart"
    "fig:tspin"
    "fig:mimesis"
    "sec:model-logic"
    "sec:emotional-models"
    "sec:circumplex"
    "fig:circumplex"
    "sec:litrev-discussion"
    "cha:institutions"
    "sec:pjexample"
    "tab:itl"
    "eq:story"
    "fig:operators"
    "fig:durations"
    "eq:interdiction"
    "eq:absentation"
    "eq:struggle"
    "fig:situations"
    "sec:kripke"
    "fig:lotrec"
    "sec:norms-and-institutions"
    "sec:pjexample-insts"
    "sec:inst-events"
    "eq:eobs"
    "eq:einst"
    "eq:viol"
    "fig:events"
    "eq:gfirst"
    "eq:receipt"
    "eq:glast"
    "fig:gen"
    "eq:cfirst"
    "eq:initgive"
    "eq:obl1"
    "eq:obl2"
    "fig:init"
    "eq:interm"
    "eq:clast"
    "fig:term"
    "sec:emotion"
    "fig:vad"
    "sec:decisions"
    "sec:norms as percepts"
    "sec:arch"
    "sec:inst"
    "cha:tropes"
    "fig:evil-empire"
    "fig:periodic-table"
    "sec:abstraction"
    "fig:freytag"
    "sec:tropes-simple"
    "sec:tropes-as-insts"
    "eq:tatooine"
    "eq:hsnth"
    "eq:phaseb"
    "eq:crt"
    "eq:crst"
    "sec:punchjudy-tropes"
    "sec:trope-phases"
    "eq:phase-inactive"
    "eq:phase-a"
    "eq:phase-done"
    "fig:pj-phase-inits"
    "eq:phase-inactive-term"
    "eq:phase-a-term"
    "eq:phase-done-term"
    "fig:pj-phase-terms"
    "sec:tropical"
    "perms"
    "obls"
    "state"
    "seqs"
    "conds"
    "branches"
    "embed"
    "lst:hero"
    "lst:evil"
    "lst:quest"
    "cha:tropical"
    "sec:t-constrained"
    "sec:t-requirements"
    "sec:use-cases"
    "req:alice1"
    "req:alice2"
    "req:alice3"
    "req:alice4"
    "req:alice5"
    "req:alice6"
    "req:bob1"
    "req:bob2"
    "req:bob3"
    "req:bob4"
    "req:bob5"
    "req:charlie1"
    "sec:requirements"
    "req:agents"
    "req:direct"
    "req:components"
    "req:sequences"
    "req:branches"
    "req:subtropes"
    "req:vis"
    "req:norm"
    "sec:language-design"
    "sec:dec-code"
    "lst:dec-roles"
    "lst:dec-objs"
    "lst:dec-places"
    "sec:entity-instances"
    "lst:dec-instances"
    "sec:seq-code"
    "lst:seq1"
    "lst:seq2"
    "fig:seq1"
    "lst:seq3"
    "lst:seq4"
    "sec:obl-code"
    "lst:obl1"
    "lst:obl2"
    "sec:branch-code"
    "lst:branch1"
    "lst:branch2"
    "lst:branch3"
    "lst:branch4"
    "lst:branch5"
    "sec:subtrope-code"
    "lst:subtrope1"
    "lst:subtrope2"
    "lst:subtrope3"
    "sec:t-codegen"
    "lne:inst-name"
    "lne:type-start"
    "lne:type-end"
    "lne:fluent-start"
    "lne:fluent-end"
    "lne:ex-start"
    "lne:ex-end"
    "lne:viol-event"
    "lne:instev-start"
    "lne:instev-end"
    "lne:obl-fluent"
    "lne:init-start"
    "lne:init-vars"
    "lne:init-end"
    "lne:term-start"
    "lne:term-end"
    "lne:gen-start"
    "lne:gen-end"
    "lne:roledef-start"
    "sec:anat-initial"
    "sec:anat-gen"
    "lst:instal-generates"
    "sec:anat-init"
    "sec:event-phases"
    "lst:initiates"
    "sec:termination"
    "lst:terminates"
    "lst:branch-init"
    "sec:instal-obl"
    "lst:obl1-fluent"
    "lst:obl1-init"
    "line:obl1-oblev"
    "lst:obl1-gen"
    "lst:obl2-trope"
    "lst:obl2-fluent"
    "lst:obl2-init"
    "lst:obl2-viol"
    "lst:obl2-gen"
    "line:obl2-deadline1"
    "line:obl2-deadline2"
    "lst:bridge-inst"
    "line:cross1"
    "line:phase1"
    "line:phase2"
    "line:crossperm1"
    "line:crossperm2"
    "lst:bridge-source"
    "sec:t-asp"
    "sec:t-constraints"
    "lst:constraints"
    "line:viol"
    "line:inst"
    "line:valids"
    "line:instant"
    "line:dead"
    "line:dead2"
    "line:null"
    "line:null2"
    "sec:example-traces"
    "lst:evil-empire"
    "lst:evil-trace"
    "lne:as-holdsat"
    "lne:as-int1"
    "lne:as-ex1"
    "lne:as-int2"
    "lne:as-ex2"
    "lne:as-int3"
    "lne:as-ex3"
    "lne:hj-ev1"
    "lne:hj-ev2a"
    "lne:hj-ev2b"
    "lne:hj-ev3"
    "lst:hero-trace"
    "lst:hero-evil-trace"
    "sec:tropical-summary"
    "cha:storybuilder"
    "fig:sb-start"
    "fig:sb-edit-ann"
    "fig:sb-edit-ann2"
    "fig:sb-new-ann"
    "sec:trope-visualisation"
    "fig:sb-arrange"
    "fig:sb-combine-ann"
    "fig:sb-seq1"
    "fig:sb-seq2"
    "fig:sb-branch1"
    "fig:sb-branch2"
    "fig:sb-branch3"
    "fig:sb-subtrope1"
    "fig:sb-subtrope2"
    "lst:audience-participation"
    "fig:audience-participation"
    "lst:babysitting-trope"
    "fig:babysitting-trope"
    "lst:sausages-trope"
    "fig:crocodile-sausages"
    "list:absentation-trope"
    "list:chase-trope"
    "list:babysitting-trope-subtrope"
    "list:sausages-trope-subtrope"
    "sec:combining-tropes"
    "fig:combining-tropes"
    "sec:sb-eval"
    "req:tropes-natural"
    "req:tropes-reusable"
    "req:tropes-abstractions"
    "req:tropes-vis"
    "sec:user-tasks"
    "sec:org14aee76"
    "sec:org96a6276"
    "sec:org9cb2b36"
    "sec:org80c0de6"
    "sec:orga5afeae"
    "sec:orga5bc382"
    "sec:orgeed4725"
    "sec:limitations"
    "sec:sb-analysis"
    "cha:conclusions"
    "sec:future"
    "sec:role-emotions"
    "sec:t-legal"
    "list:policies"
    "appendix:questionnaire"
    "appendix:sausages-full"
    "fig:gen-full"
    "eq:phase-inactive-full"
    "eq:phase-a-full"
    "eq:phase-b-full"
    "eq:phase-c-full"
    "eq:phase-d-full"
    "eq:phase-done-full"
    "fig:pj-phase-inits-full"
    "eq:phase-inactive-term-full"
    "eq:phase-a-term-full"
    "eq:phase-b-term-full"
    "eq:phase-c-term-full"
    "eq:phase-d-term-full"
    "eq:phase-done-term-full"
    "fig:pj-phase-terms-full"
    "appendix:tropes"
    "appendix:instal"
    "appendix:obls"
    "lst:obl1-instal"
    "lst:obl2-instal"
    "appendix:branch3"
    "appendix:t-grammar"
    "lst:ebnf1"
    "lst:ebnf2"
    "appendix:parse-tree"
    "appendix:evil-empire"
    "appendix:evil-empire-traces"
    "appendix:transcripts")
   (LaTeX-add-environments
    "myenumerate")
   (LaTeX-add-bibliographies)
   (LaTeX-add-counters
    "myenumi")
   (LaTeX-add-xcolor-definecolors
    "light-gray"))
 :latex)

