# Cline Settings

Configuration for [Cline](https://github.com/cline/cline) (VSCode AI coding assistant).

## Installation

```bash
# Copy to your project
cp -r cline/.cline ./

# Or use the installer
./install.sh cline
```

## Features

- **Anthropic Claude** as default provider (Claude Sonnet 4)
- **Auto-approve** safe file types (md, json, txt)
- **Custom instructions** with brand voice and tech stack
- **MCP servers** for memory and filesystem access
- **Workspace optimization** with smart exclusions
- **Checkpoint support** for undo/redo

## Configuration Overview

### API Settings
| Setting | Value | Description |
|---------|-------|-------------|
| Provider | Anthropic | Claude API |
| Model | claude-sonnet-4-20250514 | Latest Sonnet |
| Max Tokens | 8192 | Response limit |
| Temperature | 0.7 | Creativity level |
| Timeout | 120s | Request timeout |

### Behavior Settings
| Setting | Value | Description |
|---------|-------|-------------|
| Auto-approve | false | Requires confirmation |
| Read-only allow | true | Read files freely |
| Checkpoints | true | Enable undo points |
| Diff enabled | true | Show changes |

### Workspace Settings
Excluded patterns prevent indexing of:
- `node_modules/`, `.git/`, `dist/`, `build/`
- `.next/`, `coverage/`, `.turbo/`, `out/`

Included file types:
- TypeScript/JavaScript (`.ts`, `.tsx`, `.js`, `.jsx`)
- Content (`.md`, `.json`, `.yaml`, `.yml`)
- Styles (`.css`)

### MCP Servers
Pre-configured Model Context Protocol servers:
- **Memory**: Persistent memory across conversations
- **Filesystem**: File operations within project

## Custom Instructions

The settings include comprehensive instructions for:

### Brand Voice
Technical authority with creative wisdom. Soul-aligned technology that serves human expression.

### Code Standards
- TypeScript with strict types
- React functional components with hooks
- Accessibility (WCAG 2.1 AA)
- JSDoc comments for APIs
- Tailwind CSS styling

### Tech Stack
- Frontend: Next.js 15, React 19, TypeScript
- Styling: Tailwind CSS, Radix UI, Framer Motion
- Backend: Node.js, Prisma, PostgreSQL
- Deployment: Vercel

### Design System
- Primary: Deep navy (#0F172A), Cosmic purple (#AB47C7)
- Accent: Aurora blue (#43BFE3), Gold (#F59E0B)
- Typography: Poppins (headings), Inter (body)
- Style: Glassmorphism with subtle gradients

## Keyboard Shortcuts

| Action | Shortcut |
|--------|----------|
| Approve | Ctrl+Enter |
| Reject | Ctrl+Backspace |
| New Chat | Ctrl+N |

## Related Tools

- [Claude Code](https://claude.ai/code) - Anthropic's CLI
- [Continue](https://continue.dev) - Alternative VSCode AI
- [Cursor](https://cursor.sh) - AI-native IDE
- [OpenCode](https://github.com/code-yeongyu/opencode) - Open source alternative

---

*Part of the FrankX AI Settings collection*
