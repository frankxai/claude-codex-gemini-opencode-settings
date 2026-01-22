# OpenAI Codex CLI Configuration

Configuration for the OpenAI Codex CLI tool.

## Installation

1. Install Codex CLI:
```bash
npm install -g @openai/codex-cli
```

2. Copy configuration:
```bash
cp config.toml ~/.codex/config.toml
```

3. Set API key:
```bash
export OPENAI_API_KEY="your-api-key"
```

## Configuration

### Key Settings

| Setting | Default | Description |
|---------|---------|-------------|
| `model` | gpt-4o | Model for code generation |
| `temperature` | 0.7 | Creativity level (0-1) |
| `auto_apply` | false | Auto-apply changes |
| `confirm_destructive` | true | Confirm dangerous operations |

### Custom Aliases

Pre-configured shortcuts:
- `review` - Code review
- `refactor` - Code refactoring
- `test` - Generate tests
- `docs` - Generate documentation
- `explain` - Explain code
- `optimize` - Performance optimization
- `secure` - Security review
- `type` - Add TypeScript types

## Usage

```bash
# Basic usage
codex "create a React component for user login"

# Using aliases
codex review ./src/components/Button.tsx
codex refactor ./src/utils/helpers.ts
codex test ./src/lib/api.ts

# With context
codex --context ./src "add error handling to this module"
```

## Safety Features

- Protected files (`.env`, keys, credentials)
- Confirmation for destructive commands
- Diff preview before changes
- Auto-staging disabled by default

## Integration

Works alongside:
- Claude Code (primary AI assistant)
- OpenCode (open-source alternative)
- Gemini CLI (Google's AI)
- Cline (VSCode extension)

---

*Part of the FrankX AI Settings collection*
