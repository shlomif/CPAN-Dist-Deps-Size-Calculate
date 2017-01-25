ls -d ../unpacked/*/t |
    perl -lne '$x = $_; s{\A../unpacked/}{}; s{/}{-}; print "cp -a $x $_"' |
    bash

