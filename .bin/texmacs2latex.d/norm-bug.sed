#! /usr/bin/env sed

s#\( \\\(b\|B\)ig*\(l\|r\)\?\\|\)|\([ _^]\)#\1\4#g
s#\( \\left\\|\)|\([ _^]\)#\1\2#g
s#\( \\right\\|\)|\([ _^]\)#\1\2#g