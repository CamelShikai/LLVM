(TeX-add-style-hook "lnicst"
 (lambda ()
    (LaTeX-add-bibitems
     "Sen"
     "Ma"
     "Trans"
     "Collberg"
     "Sharif"
     "Popov"
     "Zhi")
    (LaTeX-add-labels
     "Figure 1"
     "Figure 2")
    (TeX-run-style-hooks
     "makeidx"
     "graphicx"
     ""
     "latex2e"
     "svmultln10"
     "svmultln")))

