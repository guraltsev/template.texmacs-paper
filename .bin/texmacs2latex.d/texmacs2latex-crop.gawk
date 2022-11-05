BEGIN { In_LaTeX_document = 0 }
BEGIN { In_TeXmacs_bibliography = 0 }


/% !!!!begin\[LaTeX\]\[document\]/ { In_LaTeX_document = 1; getline}
/% !!!!end\[LaTeX\]\[document\]/ { In_LaTeX_document = 0}
/% !!!!begin\[TeXmacs\]\[bibliography\]/ { In_TeXmacs_bibliography = 1}
/% !!!!end\[TeXmacs\]\[bibliography\]/ { In_TeXmacs_bibliography = 0; getline}


In_LaTeX_document && ! In_TeXmacs_bibliography { print }
#{printf "%s,%s:%s\n", In_LaTeX_document, In_TeXmacs_bibliography, $0}

