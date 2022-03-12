import sys

# enc appears to be UTF-16 BE according to Cyberchef
print(sys.argv[1].encode('utf-16-be').decode('utf-8'))
