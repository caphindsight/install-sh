# The install-sh tool installs shell aliases

SRC="$(pwd)/$1"
DST="$2"

(
    echo "#! /usr/bin/env bash"
    echo "# Shell alias to $SRC"
    echo "$SRC \"\$@\""
) >"$DST"

chmod +x "$DST"

