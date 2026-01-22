# Claude + Codex + Gemini + OpenCode + Cline Settings

> **One repo for ALL AI coding assistants** - battle-tested settings from daily use

Configuration, plugins, skills, and agents for:
- **Claude Code** (Anthropic CLI)
- **OpenAI Codex** (CLI)
- **Gemini CLI** (Google)
- **OpenCode** (Open source)
- **Cline** (VSCode extension)

## Quick Install

```bash
# Clone
git clone https://github.com/frankxai/claude-codex-gemini-opencode-settings.git ~/.ai-settings

# Install for your tool
cd ~/.ai-settings
./install.sh claude    # Claude Code only
./install.sh opencode  # OpenCode only
./install.sh all       # Everything
```

## What's Included

| Tool | Config | Plugins | Skills | Agents |
|------|--------|---------|--------|--------|
| Claude Code | settings.json, hooks | 15+ plugins | 110+ | 6 |
| OpenCode | oh-my-opencode.json | - | agents | - |
| Gemini CLI | - | - | ui-ux-pro-max | - |
| Codex | config.toml | - | - | - |
| Cline | settings.json | - | - | - |

## Structure

```
claude-codex-gemini-opencode-settings/
├── claude/                 # Claude Code settings
│   └── plugins/
│       ├── creator-tools/  # Content creation
│       ├── oracle-ai/      # Enterprise AI
│       └── suno-prompts/   # Music generation
├── opencode/               # OpenCode config
├── gemini/                 # Gemini CLI
├── codex/                  # OpenAI Codex
├── cline/                  # Cline/VSCode
├── install.sh              # Universal installer
└── sync.sh                 # Maintenance
```

## Featured Plugins (Claude Code)

### Creator Tools
- `/factory` - Publishing pipeline
- `/publish` - Content deployment
- `creation-engine` agent

### Oracle AI
- `/oracle-work` - Day job workflows
- `/prototype` - Architecture prototyping
- OCI GenAI patterns

### Suno Prompts
- 500+ music prompt techniques
- `frequency-alchemist` agent
- Vibe OS integration

## Also Integrated

From [fcakyon/claude-codex-settings](https://github.com/fcakyon/claude-codex-settings):
- `github-dev` - PR review/commit agents
- `tavily-tools` - Enhanced web search
- `general-dev` - Code simplifier

## Related Projects

| Repo | Purpose |
|------|---------|
| [agentic-creator-os](https://github.com/frankxai/agentic-creator-os) | The signature creator system (separate) |
| [suno-prompt-library](https://github.com/frankxai/suno-prompt-library) | Standalone music prompts (optional) |

## Maintenance

```bash
./sync.sh update   # Pull upstream changes
./sync.sh sync     # Copy from FrankX dev
./sync.sh validate # Check plugin structure
./sync.sh publish  # Push to GitHub
```

## License

Apache 2.0

---

*Built by [FrankX](https://frankx.ai) - AI for creators*
