(TeX-add-style-hook "psuthesis"
 (lambda ()
    (TeX-add-symbols
     '("readersix" ["argument"] 2)
     '("readerfive" ["argument"] 2)
     '("readerfour" ["argument"] 2)
     '("readerthree" ["argument"] 2)
     '("readertwo" ["argument"] 2)
     '("readerone" ["argument"] 2)
     '("advisor" ["argument"] 2)
     '("vita" 1)
     '("Appendix" 1)
     '("thesisdedication" 2)
     '("thesisacknowledgments" 1)
     '("thesislistofsymbols" 1)
     '("thesisabstract" 1)
     '("numberofreaders" 1)
     '("secondthesissupervisor" 1)
     '("honorsdepthead" 1)
     '("honorsadviser" 1)
     '("honorsdegreeinfo" 1)
     '("collegesubmittedto" 1)
     '("submittedto" 1)
     '("documenttype" 1)
     '("copyrightyear" 1)
     '("degreedate" 1)
     '("dept" 1)
     "cftchappresnum"
     "mylongname"
     "psu"
     "psupermissionpage"
     "psutitlepage"
     "psucommitteepage"
     "thesistableofcontents"
     "thesislistoffigures"
     "thesislistoftables"
     "thesismainmatter")
    (TeX-run-style-hooks
     "textcase"
     "overload"
     "fancyhdr"
     "tocloft"
     "setspace"
     "calc"
     "bk10"
     "book"
     "oneside"
     "openany"
     "ifthen"
     "")))

