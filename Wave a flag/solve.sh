#!/bin/bash
{

  ./src/warm -h | rev | cut -d' ' -f 1 | rev

} | tee ./flag.txt
