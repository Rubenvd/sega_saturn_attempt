#!/bin/bash
PREFIXPATH="/home/rvd/git/yabause/yabause/build/src/qt/"
command -v "${PREFIXPATH}yabause" >/dev/null 2>&1 || { echo "yabause is not installed.\
 Aborting." >&2; exit 1; }

if [ -f game.iso ];
then
   ${PREFIXPATH}yabause -a -i game.cue
else
   echo "Please compile first !" >&2
fi
