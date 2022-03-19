import sys

# Print argument 1 converted to UTF-8 from UTF-16 BE.
print(
  # Read argument 1
  sys.argv[1]
    # Encode as UTF-16 BE
    .encode('utf-16-be')
    # Decode as UTF-8.
    .decode('utf-8')
)
