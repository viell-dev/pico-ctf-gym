#!/bin/bash
{

  # Get printable strings in cat.jpg
  strings ./challenge/cat.jpg |

    # Find the line with the <cc:license> element
    grep cc:license |

    # Cut out the value of the rdf:resource attribute
    cut -d "'" -f 2 |

    # Decode from Base64
    base64 -d

  # Add new line
  echo ""

} | tee ./flag.txt # Output to stdout and flag.txt
