#!/bin/bash
cat ../dep-dists.txt |
    (while read T ; do
        # echo "Doing $T" 1>&2
        L="$(basename "$T")"
        if [ ! -e "$L" ] ; then
            cp -a /home/shlomif/Download/Arcs/Perl/minicpan/authors/id/"$T" "$L"
        fi
    done)
