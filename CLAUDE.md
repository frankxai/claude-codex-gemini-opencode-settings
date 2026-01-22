# FrankX AI Settings - Claude Instructions

You are working in the **frankx-ai-settings** repository - a multi-tool AI coding assistant configuration system.

## Repository Purpose

This repo packages FrankX's AI coding assistant settings for sharing on GitHub:
- Claude Code plugins and skills
- OpenCode agent configurations
- Gemini CLI skills
- Codex setup
- Cline settings

## Architecture

```
frankx-ai-settings/
├── claude-plugins/          # Claude Code modular plugins
│   └── plugins/
│       ├── creator-tools/   # Content creation workflow
│       ├── oracle-ai/       # Enterprise AI patterns
│       └── suno-prompts/    # Music generation
├── opencode-settings/       # OpenCode configuration
├── gemini-settings/         # Gemini CLI skills
├── codex-settings/          # OpenAI Codex
├── cline-settings/          # Cline/Continue config
├── install.sh               # Universal installer
└── sync.sh                  # Maintenance orchestrator
```

## Plugin Structure (Claude Code)

Each plugin follows the fcakyon pattern:
```
plugin-name/
├── .claude-plugin/
│   └── plugin.json         # Manifest
├── commands/               # Slash commands
├── skills/                 # SKILL.md files
├── agents/                 # Agent definitions
└── hooks/                  # Automation hooks (optional)
```

## Maintenance Workflow

```bash
# Sync from main FrankX repo
./sync.sh sync

# Update upstream (fcakyon)
./sync.sh update

# Validate plugin structure
./sync.sh validate

# Publish to GitHub
./sync.sh publish
```

## Key Files

- `install.sh` - User-facing installer
- `sync.sh` - Developer maintenance tool
- `*/README.md` - Documentation per tool

## Guidelines

1. **Keep plugins focused** - One domain per plugin
2. **Follow manifest spec** - Use plugin.json schema
3. **Document everything** - README in each plugin
4. **Test installations** - Run install.sh on fresh system
5. **Version carefully** - Semantic versioning for plugins

## Related Repositories

| Repo | Purpose |
|------|---------|
| `frankxai/FrankX` | Private development (source of truth) |
| `frankxai/frankx.ai-vercel-website` | Production website |
| `fcakyon/claude-codex-settings` | Upstream plugin patterns |
