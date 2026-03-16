#!/usr/bin/env python3

import sys


if len(sys.argv) < 3:
    print("Usage: python3 log-parser.py <logfile> <search term>")
    sys.exit(1)



filename = sys.argv[1]
userKey = sys.argv[2].upper()

keys = []

try:


    with open(filename, "r") as f:
        lines = f.readlines()

    for i, line in enumerate(lines, start=1):
        if userKey in line:
            keys.append(f"{i}: {line.strip()}")

    for key in keys:
        print(key)

    print(f"\nTotal {userKey.lower()}s found: {len(keys)}")

except FileNotFoundError:
    print(f"{filename} not found")
