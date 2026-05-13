# hcc-ui-agent-dev

Custom bot runner instance built on top of [dev-bot](https://github.com/RedHatInsights/platform-frontend-ai-dev).

## Architecture

This repo uses dev-bot as a git submodule. The Dockerfile layers instance-specific customization on top of the dev-bot base image.

```
hcc-ui-agent-dev/
├── Dockerfile      # FROM dev-bot:local + instance customization
├── build.sh        # Two-step build (dev-bot base → runner)
├── dev-bot/        # Git submodule → platform-frontend-ai-dev
└── README.md
```

## Quick Start

```bash
./build.sh
```

This will:
1. Init/update the dev-bot submodule
2. Build the dev-bot base image
3. Build the runner image with instance customization

## Customization

Add instance-specific files and uncomment the COPY lines in the Dockerfile:
- `config.json` — bot configuration overrides
- `personas/` — custom persona prompts
- `.claude/skills/` — custom skills

## Updating dev-bot

```bash
cd dev-bot
git pull origin master
cd ..
git add dev-bot
git commit -m "chore: update dev-bot submodule"
```
