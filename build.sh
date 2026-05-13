#!/bin/bash
set -e

cd "$(dirname "$0")"

git submodule update --init --recursive

echo "Building hcc-ui-agent-dev..."
docker build -f dev-bot/Dockerfile.runner -t hcc-ui-agent-dev:local .

echo "Done. Image: hcc-ui-agent-dev:local"
