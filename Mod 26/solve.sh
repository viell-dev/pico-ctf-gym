#!/bin/bash
{

  # Get the content of encryptedFlag.txt
  cat ./challenge/encryptedFlag.txt |

    # Run through ROT13 substitution cipher
    tr 'A-Za-z' 'N-ZA-Mn-za-m'

} | tee ./flag.txt # Output to stdout and flag.txt
