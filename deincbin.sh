#! /bin/bash

python3 tools/deincbin.py "$1" > "$1.deincbin.s"
#mv "$1.deincbin.s" "$1"