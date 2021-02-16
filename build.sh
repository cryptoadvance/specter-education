#!/bin/bash

if ! [ -x .env ]; then
    virtualenv --python=python3 .env
    . ./.env/bin/activate
    pip3 install markdown WeasyPrint pyyaml
else
    . ./.env/bin/activate
fi

python3 scripts/build.py

