#!/bin/bash
set -e

cd "$(dirname "$0")"

git submodule update --init --recursive

echo "Building dev-bot base image..."
docker build -t dev-bot:local -f dev-bot/Dockerfile dev-bot/

echo "Building hcc-ui-agent-dev runner..."
docker build -t hcc-ui-agent-dev:local .

echo "Done. Image: hcc-ui-agent-dev:local"
