#!/bin/bash

# Instructions
## This is probably not necessary if you use pre-commit

# Format file imports
poetry run isort app

# Format files
poetry run black app
