# Claude + Codex + Gemini + OpenCode + Cline Settings

> **One repo for ALL AI coding assistants** - battle-tested settings from daily use

Configuration, plugins, skills, and agents for:
- **Claude Code** (Anthropic CLI) - 6 plugins, 20+ commands
- **OpenAI Codex** (CLI) - Full config.toml with aliases
- **Gemini CLI** (Google) - UI/UX Pro Max skill
- **OpenCode** (Open source) - 4 specialized agents
- **Cline** (VSCode extension) - MCP integration, design system

## Quick Install

```bash
# Clone
git clone https://github.com/frankxai/claude-codex-gemini-opencode-settings.git ~/.ai-settings

# Install for your tool
cd ~/.ai-settings
./install.sh claude    # Claude Code only
./install.sh opencode  # OpenCode only
./install.sh all       # Everything
./install.sh list      # See all options
```

## What's Included

| Tool | Config | Plugins | Commands | Agents |
|------|--------|---------|----------|--------|
| Claude Code | plugins dir | 6 | 20+ | 1 |
| OpenCode | oh-my-opencode.json | - | - | 4 |
| Gemini CLI | skills dir | - | - | - |
| Codex | config.toml | - | 8 aliases | - |
| Cline | settings.json + MCP | - | - | - |

## Structure

```
claude-codex-gemini-opencode-settings/
├── claude/
│   └── plugins/
│       ├── prompt-library/     # Publishing factory (NEW)
│       ├── research-tools/     # Research intelligence (NEW)
│       ├── agentic-workflows/  # Multi-agent orchestration (NEW)
│       ├── creator-tools/      # Content creation
│       ├── oracle-ai/          # Enterprise AI
│       └── suno-prompts/       # Music generation
├── opencode/
│   ├── oh-my-opencode.json     # Agent enhancements
│   └── agents/                 # 4 specialized agents (NEW)
├── gemini/                     # UI/UX Pro Max skill
├── codex/                      # config.toml (NEW)
├── cline/                      # Enhanced settings (NEW)
├── AGENTS.md                   # Complete agent directory (NEW)
├── install.sh                  # Universal installer
└── sync.sh                     # Maintenance
```

## Featured Plugins (Claude Code)

### Prompt Library (NEW)
Publishing factory and content creation workflows:
- `/factory` - Full publishing pipeline (research > write > edit > publish)
- `/factory-seo` - SEO optimization with checklist
- `/factory-aeo` - AI Engine Optimization (TL;DR, FAQ, schema)
- `/factory-qa` - Quality gate checks
- `/factory-pdf` - PDF lead magnet creation
- `/content-calendar` - Content scheduling
- `/log-session` - Session logging

### Research Tools (NEW)
Multi-agent research intelligence:
- `/research` - Daily intelligence scans
- `/research [topic]` - Deep dive research
- `/research publish` - Transform research to content
- `/research-visual` - Visual research and design inspiration

### Agentic Workflows (NEW)
Multi-agent orchestration patterns:
- `/agentic-creator-os` - AI department system (Content, Dev, Design, Marketing, Business)
- `/creator-intelligence-system` - Personal AI brain (knowledge, execution, prediction)
- `/agentic-orchestration` - Task decomposition, parallel execution, handoffs

### Creator Tools
- `/publish` - Content deployment
- `creation-engine` agent

### Oracle AI
- `/oracle-work` - Day job workflows
- `/prototype` - Architecture prototyping
- OCI GenAI patterns
- `oci-services-expert` skill with verified pricing

### Suno Prompts
- 500+ music prompt techniques
- `suno-prompt-architect` skill
- Frequency specifications (Solfeggio, binaural)

## OpenCode Agents (NEW)

Four specialized agents in `opencode/agents/`:

| Agent | Purpose |
|-------|---------|
| `workshop-builder` | Create technical workshops with labs |
| `content-strategist` | Plan content calendars and strategy |
| `code-architect` | Design software architectures |
| `seo-specialist` | SEO and AEO optimization |

Plus enhanced built-in agents via `oh-my-opencode.json`:
- Sisyphus (FrankX override) - Master orchestrator
- Frontend UI/UX Engineer - Full design system
- Document Writer - Brand voice documentation

See [AGENTS.md](AGENTS.md) for complete documentation.

## Codex Configuration (NEW)

Full `codex/config.toml` with:
- Custom system prompt for the tech stack
- Pre-configured aliases: `review`, `refactor`, `test`, `docs`, `explain`, `optimize`, `secure`, `type`
- Safety settings (protected files, confirmation)
- Post-apply hooks (lint, format)

## Cline Settings (NEW)

Enhanced `cline/settings.json` with:
- Claude Sonnet 4 configuration
- MCP servers (memory, filesystem)
- Full design system (colors, typography, style)
- Tech stack preferences
- Keyboard shortcuts

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
