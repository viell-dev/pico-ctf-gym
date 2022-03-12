#!/bin/bash
if [ -f "allFlags.txt" ] && [ "$1" != "--force" ] && [ "$1" != "--force-all" ]
then
  cat allFlags.txt
else
  {
    for i in *
    do
      if [ -d "$i" ]
      then
        if [ -f "$i/solve.sh" ]
        then
          cd "$i"
          echo "$i"

          if [ -f "flag.txt" ] && [ "$1" != "--force-all" ]
          then
            cat flag.txt
          else
            bash solve.sh
          fi

          echo ""
          cd ".."
        fi
      fi
    done
  } | tee allFlags.txt
fi
