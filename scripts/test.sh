#!/usr/bin/env sh

# Exit immediately if there is an error
set -e

# echo out each line of the shell as it executes
set -x

# Run validator https://github.com/validator/validator
java -jar /vnu.jar $(dirname "$0")/../web
