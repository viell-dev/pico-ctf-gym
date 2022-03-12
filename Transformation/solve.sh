#!/bin/bash
{

  # Check if a python env exists
  if [ -d env ]
  then
    # Activate the existing python env
    source ./env/bin/activate
  else
    # Create a new python env
    python3 -m venv ./env &> /dev/null

    # Activate the python env
    source ./env/bin/activate
  fi

  # Get the flag
  cat ./src/enc | xargs -I {} python3 ./decrypt.py "{}"

  # Deactivate the python env
  deactivate

} | tee ./flag.txt
