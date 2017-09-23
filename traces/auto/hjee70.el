(TeX-add-style-hook
 "hjee70"
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
    "Ethree"
    "Efour"
    "Efive"
    "Szero"
    "Sone"
    "Stwo"
    "Sthree"
    "Sfour"
    "Sfive"
    "Ssix")
   (LaTeX-add-environments
    "events"
    "states")
   (LaTeX-add-lengths
    "tableWidth"))
 :latex)

