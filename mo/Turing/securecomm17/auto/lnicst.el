(TeX-add-style-hook "lnicst"
 (lambda ()
    (LaTeX-add-bibitems
     "Sen"
     "Ma"
     "Trans"
     "Collberg"
     "Sharif"
     "smit:wat"
     "mes"
     "fos:kes"
     "cff"
     "fos:kes:2"
     "url")
    (LaTeX-add-labels
     "eq:one"
     "eq:two"
     "eq:three"
     "eq:four"
     "eq:five"
     "ghou:pre")
    (TeX-run-style-hooks
     "makeidx"
     ""
     "latex2e"
     "svmultln10"
     "svmultln")))

