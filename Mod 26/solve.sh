#!/bin/bash
{

  cat ./src/encryptedFlag.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'

} | tee ./flag.txt
