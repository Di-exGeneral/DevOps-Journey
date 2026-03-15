#!/usr/bin/env python3

import sys

filename = sys.argv[1]
errors = []

with open("fake.log", "r") as f:
    lines = f.readlines()

for i, line in enumerate(lines, start=1):
    if "ERROR" in line:
        errors.append(f"{i}: {line.strip()}")

for error in errors:
    print(error)

print(f"\nTotal errors found: {len(errors)}")
