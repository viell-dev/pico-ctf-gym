#!/bin/bash
{

  # We just need to cat the file.
  cat ./challenge/flag

} | tee ./flag.txt # Output to stdout and flag.txt
