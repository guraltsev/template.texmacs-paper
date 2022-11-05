#! /usr/bin/env sh
sed -f "${scriptdir}"/texmacs2latex.d/norm-bug.sed "${filename}" > "${outputfilename}"
