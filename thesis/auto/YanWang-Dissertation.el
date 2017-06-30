(TeX-add-style-hook
 "YanWang-Dissertation"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("psuthesis" "ms" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("graphicx" "final") ("color" "dvipsnames") ("xcolor" "table") ("algpseudocode" "noend")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "SupplementaryMaterial/UserDefinedCommands"
    "Chapter-1/Chapter-1"
    "Chapter-2/Chapter-2"
    "Chapter-3/Chapter-3"
    "Chapter-4/Chapter-4"
    "Chapter-5/Chapter-5"
    "Chapter-6/Chapter-6"
    "Chapter-7/Chapter-7"
    "psuthesis"
    "psuthesis12"
    "fontenc"
    "lmodern"
    "textcomp"
    "microtype"
    "url"
    "amsmath"
    "amssymb"
    "eqlist"
    "graphicx"
    "color"
    "cite"
    "titlesec"
    "makeidx"
    "caption"
    "xcolor"
    "listings"
    "algorithm"
    "algpseudocode")
   (TeX-add-symbols
    "F"
    "DejaVuttfamily"
    "eg"
    "hsp")
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
    "Sage"
    "LLVM"
    "klee"
    "Opaque"
    "Loop"
    "Lee"
    "Molnar"
    "Church"
    "Cute"
    "Cadar"
    "Samjam"
    "Maieee"
    "kleesample"
    "dart"
    "exe"
    "symbol"
    "Heartbleed"
    "wannacry")
   (LaTeX-add-color-definecolors
    "gray75"))
 :latex)

