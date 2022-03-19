#!/bin/bash
{

  # Run warm with -h flag
  ./challenge/warm -h |
    # Reverse the output
    rev |
    # Cut out the flag (everything before first space character)
    cut -d' ' -f 1 |
    # Reverse the output again to get back to normal
    rev

} | tee ./flag.txt # Output to stdout and flag.txt
