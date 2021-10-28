
#!/usr/bin/env bash

# exit on error
set -o errexit

# Load local environment
# source .env

# Dependencies check up
mix deps.get && mix deps.compile  

# Initial setup
mix deps.get --only prod

MIX_ENV=prod mix compile

# Install/Update JS dependencies
npm install --prefix ./assets

# Compile assets
npm run deploy --prefix ./assets 
mix phx.digest

# Create
MIX_ENV=prod mix release