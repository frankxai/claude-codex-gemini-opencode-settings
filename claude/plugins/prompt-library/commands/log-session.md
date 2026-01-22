---
description: Log session to global AI sessions file - single source of truth across all projects
thinking: false
---

# Log Session to Global

**Global Log**: `~/docs/AI_GLOBAL_SESSIONS.md`

## Usage

This command appends a session entry to the global AI sessions log.

### Quick Log (Automatic)

Just say: **"Log this to global"** and I'll create an entry based on our conversation.

### Manual Log

Provide details:
- **Project**: FrankX / Arcanea / Other
- **Action**: What was accomplished
- **Artifacts**: Files created/modified
- **Decisions**: Key choices made
- **Next**: Follow-up actions

## Entry Format

```markdown
---

## SESSION: [Project] - [Action Description]
**Project**: [Project Name]
**Date**: [YYYY-MM-DD HH:MM]
**Agent**: Claude Code

### Summary
[Brief description of what was accomplished]

### Artifacts Created
- `path/to/file.md` - Description
- `path/to/another.ts` - Description

### Key Decisions
- **[Decision]**: [Rationale]

### Commands Used
- `/factory` - Publishing pipeline
- `npm run qa:check` - Quality validation

### Next Actions
- [ ] Action item 1
- [ ] Action item 2

### Notes
[Any additional context or learnings]
```

## Project Tags

Use consistent project names:
- `FrankX` - FrankX.AI website and products
- `Arcanea` - Arcanea game/world
- `Oracle` - Day job work (careful with NDA)
- `Personal` - Personal projects
- `Research` - Learning and exploration

## Examples

### Factory Publish Session
```markdown
## SESSION: FrankX - Published AI Content Workflows Article
**Project**: FrankX
**Date**: 2026-01-16 14:30

### Summary
Created and published article on AI content workflows using the Publishing Factory pipeline.

### Artifacts Created
- `artifacts/ai-workflows/2026-01-16/article.md`
- `content/blog/ai-workflows.mdx`
- `data/schemas/ai-workflows-schema.json`

### Key Decisions
- **Format**: Chose tutorial style over thought leadership for better SEO
- **Length**: 2,500 words to hit comprehensive coverage

### Commands Used
- `/factory` - Full pipeline
- `npm run qa:check` - All gates passed

### Next Actions
- [ ] Monitor analytics after 48 hours
- [ ] Create LinkedIn post from distribution angles
```

### Research Session
```markdown
## SESSION: Research - Gamified Learning with AI Agents
**Project**: Research
**Date**: 2026-01-16 10:00

### Summary
Explored gamification patterns for AI-powered learning systems.

### Key Insights
1. XP systems work best with immediate feedback
2. Skill trees map well to competency frameworks
3. Social features increase retention 40%

### Next Actions
- [ ] Draft spec for FrankX learning module
- [ ] Research existing implementations
```

## Quick Actions

| Say This | Result |
|----------|--------|
| "Log this session" | Creates entry from context |
| "Log factory publish" | Creates publish-specific entry |
| "Log research findings" | Creates research entry |
| "What did we do today?" | Reads today's entries |
| "Show FrankX sessions" | Filters by project |

## Related Commands

- `/factory` - Publishing pipeline (auto-logs on publish)
- `/factory-qa` - Quality checks
- `/weekly-recap` - Weekly summary generation

**What should I log?**
