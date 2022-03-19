#!/bin/bash
{

  # Open readonly TCP socket on file descriptor 3
  # against mercury.picoctf.net:22902
  exec 3</dev/tcp/mercury.picoctf.net/22902

  # For each line in the output of cat of file descriptor 3
  for line in $(cat <&3);
  do
    # $line contains the decimal encoding of a character
    # First we converts the decimal to octal padded to three digits
    # Then we convert the octal to a character
    # Essentially: Decimal 65 -> Octal 101 -> A
    printf \\$(printf '%03o' $line)
  done

} | tee ./flag.txt # Output to stdout and flag.txt
