(TeX-add-style-hook "main"
 (lambda ()
    (LaTeX-add-bibitems
     "Sen"
     "Ma"
     "Trans"
     "Collberg"
     "Sharif"
     "SingleTape"
     "Popov"
     "Zhi"
     "Wang:Zhi"
     "bzip2"
     "slre"
     "Chen"
     "ida"
     "McCabe"
     "Woodward"
     "Turing"
     "UTM"
     "LLVM"
     "klee"
     "Opaque"
     "Loop"
     "Lee"
     "Molnar"
     "Church"
     "Cute"
     "Cadar")
    (LaTeX-add-labels
     "fig:one"
     "fig:two"
     "fig:three"
     "table:1"
     "adding"
     "fig:four"
     "Figure 5"
     "Figure 6"
     "sec:evaluation"
     "tab:two"
     "tab:three"
     "fig:seven"
     "subsec:resilience"
     "fig:klee-sample"
     "fig:bzip2"
     "fig:regexp"
     "fig:cost")
    (TeX-add-symbols
     "F"
     "DejaVuttfamily")
    (TeX-run-style-hooks
     "algpseudocode"
     "noend"
     "algorithm"
     "amsmath"
     "listings"
     "xcolor"
     "table"
     "caption"
     "url"
     "makeidx"
     "graphicx"
     ""
     "latex2e"
     "svmultln10"
     "svmultln"
     "lnicst")))

