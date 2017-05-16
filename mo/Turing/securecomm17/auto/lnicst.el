(TeX-add-style-hook "lnicst"
 (lambda ()
    (LaTeX-add-bibitems
     "Sen"
     "Ma"
     "Trans"
     "Collberg"
     "Sharif"
     "Popov"
     "Zhi"
     "smit:wat"
     "mes"
     "fos:kes"
     "cff"
     "fos:kes:2"
     "url")
    (LaTeX-add-labels
     "Figure 1"
     "eq:one"
     "eq:two"
     "eq:three"
     "eq:four"
     "eq:five"
     "ghou:pre")
    (TeX-run-style-hooks
     "makeidx"
     "graphicx"
     ""
     "latex2e"
     "svmultln10"
     "svmultln")))

