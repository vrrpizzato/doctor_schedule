#!/usr/bin/env bash

# exit on error
set -o errexit

# check format
mix format --check-formatted

# lint code
mix credo --strict

# security level
mix sobelow --config

# quality level
MIX_ENV=test mix coveralls.html