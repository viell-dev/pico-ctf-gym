#!/bin/bash
{

  exec 3<>/dev/tcp/mercury.picoctf.net/22902

  for l in $(cat <&3)
  do
    printf \\$(printf '%03o' $l)
  done

} | tee ./flag.txt
