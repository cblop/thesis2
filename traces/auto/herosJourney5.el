(TeX-add-style-hook
 "herosJourney5"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("ulem" "normalem")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "todonotes"
    "array"
    "longtable"
    "enumitem"
    "tikz"
    "ulem")
   (TeX-add-symbols
    "Ezero"
    "Eone"
    "Etwo"
    "Szero"
    "Sone"
    "Stwo"
    "Sthree")
   (LaTeX-add-environments
    "events"
    "states")
   (LaTeX-add-lengths
    "tableWidth"))
 :latex)

