#! /usr/bin/env sh
gawk -b -f "${scriptdir}"/texmacs2latex.d/texmacs2latex-crop.gawk "${filename}" > "${outputfilename}"
