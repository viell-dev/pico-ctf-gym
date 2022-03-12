#/bin/bash

# Check if a python env exists
if [ -d ./env ]
then
  # Activate the existing python env
  source ./env/bin/activate
else
  # Create a new python env
  python3 -m venv env &> /dev/null

  # Activate the python env
  source ./env/bin/activate

  # Install required packages
  pip install -r ./requirements.txt &> /dev/null
fi

# Get the flag
cat ./pw.txt | xargs -I {} python3 ./ende.py -d ./flag.txt.en {}

# Deactivate the python env
deactivate
