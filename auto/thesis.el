(TeX-add-style-hook
 "thesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("changebar" "color") ("fontenc" "T2A") ("inputenc" "utf8") ("geometry" "hmargin=3cm" "vmargin=2cm") ("xcolor" "usenames" "dvipsnames" "svgnames" "table") ("todonotes" "colorinlistoftodos")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "report"
    "rep11"
    "baththesis"
    "changebar"
    "graphicx"
    "syntax"
    "lineno"
    "framed"
    "fontenc"
    "inputenc"
    "caption"
    "textcomp"
    "fancyref"
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
    '("lref" 1)
    '("llabel" 1)
    '("deleted" 1)
    '("changed" 2)
    '("added" 2)
    "fancyreflstlabelprefix"
    "freflstname"
    "Freflstname"
    "fancyreflistlabelprefix"
    "freflistname"
    "Freflistname"
    "fancyrefappendixlabelprefix"
    "frefappendixname"
    "Frefappendixname"
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
    "sec:interactive-narrative"
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
    "sec:narrative-types"
    "sec:formalisms"
    "fig:propp1"
    "fig:propp2"
    "sec:implementations"
    "sec:story-gen"
    "fig:rumelhart"
    "fig:tspin"
    "sec:planner-systems"
    "fig:mimesis"
    "sec:drama-systems"
    "fig:facade-screen"
    "sec:model-logic"
    "sec:lit-insts"
    "sec:emotional-models"
    "sec:circumplex"
    "fig:circumplex"
    "sec:litrev-discussion"
    "cha:tropes"
    "fig:evil-empire"
    "fig:periodic-table"
    "fig:periodic-examples"
    "sec:abstraction"
    "fig:freytag"
    "sec:tropes-simple"
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
    "lst:asp-rule"
    "lst:asp-fact"
    "fig:sudoku-grid"
    "lst:sudoku-numbers"
    "lne:s-numbers"
    "lne:s-square1"
    "lne:s-squaren"
    "lst:sudoku-unique"
    "lne:s-cell1"
    "lne:s-cell2"
    "lne:s-cell9"
    "lne:s-celln"
    "lst:sudoku-constraints"
    "lne:s-cellconst1"
    "lne:s-cellconst2"
    "lne:s-squareconst1"
    "lne:s-squareconstn"
    "lst:sudoku-game"
    "lst:sudoku-solution"
    "fig:sudoku-solved"
    "sec:instal-intro"
    "sec:norms-and-institutions"
    "sec:tropes-as-insts"
    "eq:eobs-hero"
    "eq:einst-hero"
    "fig:events"
    "eq:tatooine"
    "eq:hsnth"
    "eq:cfirst-hero"
    "eq:phaseb"
    "eq:crt"
    "eq:crst"
    "fig:gen-hero"
    "fig:init-hero"
    "fig:term-hero"
    "sec:inst-events"
    "sec:why-asp-instal"
    "lst:macguffin-listing"
    "lst:macguffin-hashmap"
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
    "lne:initially-start"
    "lne:roledef-start"
    "lne:initially-end"
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
    "sec:bridges"
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
    "fig:evil-trace"
    "lne:hj-ev1"
    "lne:hj-ev2a"
    "lne:hj-ev2b"
    "lne:hj-ev3"
    "lst:hero-trace"
    "fig:hero-trace"
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
    "cha:institutions"
    "sec:punchjudy-tropes"
    "sec:dont-touch-inst"
    "lst:idiot-tropical"
    "sec:trope-phases"
    "eq:phase-inactive"
    "eq:phase-a"
    "eq:phase-done"
    "fig:pj-phase-inits"
    "eq:phase-inactive-term"
    "eq:phase-a-term"
    "eq:phase-done-term"
    "fig:pj-phase-terms"
    "sec:punchjudy"
    "sec:emotion"
    "fig:vad"
    "lne:changemood-start"
    "lne:changemood-end"
    "lne:response1-start"
    "lne:response1-end"
    "lne:response2-start"
    "lne:response2-end"
    "sec:decisions"
    "sec:norms-as-percepts"
    "sec:arch"
    "sec:arch-mas"
    "lst:idiot-generate"
    "fig:tracevis"
    "fig:pjshow"
    "sec:demo"
    "sec:inst-summary"
    "cha:evaluation"
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
    "sec:pj-fullspec"
    "sec:full-introduction"
    "lst:pjfull-narrator"
    "lst:pjfull-participation"
    "lst:pjfull-mischief"
    "lst:pjfull-chasefight"
    "lst:pjfull-domesticabuse"
    "lst:pjfull-slapstick"
    "sec:croc-sausages-scene"
    "sec:put-together-pj"
    "sec:trope-combination-exp"
    "fig:dot-combine1"
    "fig:dot-combine2"
    "fig:dot-combine3"
    "sec:freedom-example"
    "cha:discussion"
    "sec:discussion-comparison"
    "sec:discussion-freedom"
    "sec:criteria-evaluation"
    "sec:complexity"
    "lst:ex-seq"
    "lst:ex-branch1"
    "lst:ex-branch2"
    "lst:ex-branch3"
    "lst:ex-subtrope1"
    "lst:ex-subtrope2"
    "lst:ex-simtrope1"
    "lst:ex-simtrope2"
    "lst:ex-simtrope1a"
    "lst:ex-simtrope2a"
    "lst:ex-simtrope1b"
    "lst:ex-simtrope2b"
    "lst:ex-simtrope1c"
    "lst:ex-simtrope2c"
    "lst:ex-simtrope3"
    "cha:conclusions"
    "sec:future"
    "sec:future-address"
    "lim:five"
    "lim:branch"
    "lim:sub"
    "lim:error"
    "im:three"
    "im:sem"
    "im:ent"
    "im:struc"
    "im:cond"
    "sec:future-agent"
    "sec:topicscript"
    "sec:role-emotions"
    "sec:future-domains"
    "sec:t-legal"
    "list:policies"
    "appendix:questionnaire"
    "appendix:sausages-full"
    "lst:donttouch-instal-full"
    "eq:sausages-domain"
    "eq:sausages-power"
    "eq:sausages-perms"
    "eq:eobs-hero-full"
    "eq:einst-hero-full"
    "fig:sausage-events"
    "eq:gfirst-full"
    "eq:receipt-full"
    "eq:absentation-full"
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
    "appendix:instal"
    "lst:obl1-instal"
    "lst:obl2-instal"
    "appendix:branch3"
    "appendix:evil-empire"
    "lst:evil-empire-full"
    "appendix:t-grammar"
    "lst:ebnf1"
    "lst:ebnf2"
    "appendix:full-trace"
    "lst:hero-evil-trace"
    "fig:hjee-trace"
    "cha:agentspeak-roles"
    "sec:asl-character-roles"
    "sec:asl-character-agents"
    "appendix:transcripts")
   (LaTeX-add-environments
    "myenumerate")
   (LaTeX-add-bibliographies)
   (LaTeX-add-counters
    "myenumi")
   (LaTeX-add-xcolor-definecolors
    "light-gray"))
 :latex)

