#!/bin/bash
{

  strings ./src/cat.jpg | grep cc:license | cut -d "'" -f 2 | base64 -d
  echo "" #

} | tee ./flag.txt
