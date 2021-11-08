#!/usr/bin/env bash

# exit on error
set -o errexit

# Load local environment
# source .env

# Initial setup
mix ecto.reset

# Start application
exec mix phx.server