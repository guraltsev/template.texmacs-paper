#! /usr/bin/env bash

filename=$1
outputbasefilename=${1//.tex/}
scriptdir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cp "${filename}" "${outputbasefilename}.out.tex"
filename="${outputbasefilename}.out.tex"
outputfilename="${outputbasefilename}.tmp.tex"

echo "filename=\"$filename\""
echo "scriptdir=\"$scriptdir\""
echo "PWD=\"$(pwd)\""
echo "outputfilename=\"${outputfilename}\""

for i in "${scriptdir}"/texmacs2latex.d/*; do
    case "$(basename $i)" in
	[0-9][0-9]-*.sh)
	    test  -f "$i" && test  -x "$i" && . "$i"
	    mv "${outputfilename}" "${filename}"
	    ;;
    esac		
done


