#!/bin/bash
{

  # Check if the python virtual environment doesn't exist
  if ! [ -d ../.venv ]
  then
    # Create a new python virtual environment quietly
    python3 -m venv ../.venv &> /dev/null
  fi

  # Activate the python virtual environment
  source ../.venv/bin/activate

  # Pipe the contents of enc into decrypt.py as an argument
  # decrypt.py will convert UTF-16 BE to UTF-8
  cat ./challenge/enc | xargs -I {} python3 ./decrypt.py "{}"

  # Deactivate the python virtual environment
  deactivate

} | tee ./flag.txt # Output to stdout and flag.txt
