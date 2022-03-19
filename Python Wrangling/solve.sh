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

  # Install required packages quietly
  pip install -r ./requirements.txt &> /dev/null

  # Using bash array in order to comment the xargs command.
  x=(
    # Use xargs to use the piped password as an argument in python
    xargs -I {}

      # Run the python script
      python3 ./challenge/ende.py

        # Pass in the flag file for decryption
        -d ./challenge/flag.txt.en

        # Pass in the password to decrypt with
        {}
  )

  # Pipe the password with cat into the xargs command above
  cat ./challenge/pw.txt | "${x[@]}"

  # Deactivate the python virtual environment
  deactivate

} | tee ./flag.txt # Output to stdout and flag.txt
