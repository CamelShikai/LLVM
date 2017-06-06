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
     "bzip2"
     "slre"
     "Chen"
     "ida"
     "McCabe"
     "Woodward"
     "Turing"
     "UTM"
     "LLVM"
     "klee")
    (LaTeX-add-labels
     "Figure 1"
     "Figure 2"
     "Figure 3"
     "Figure 4"
     "Figure 5"
     "Figure 6")
    (TeX-run-style-hooks
     "caption"
     "url"
     "makeidx"
     "graphicx"
     ""
     "latex2e"
     "svmultln10"
     "svmultln")))

