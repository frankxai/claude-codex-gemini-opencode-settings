# AI Agents Directory

> Complete listing of all agents available across Claude Code, OpenCode, and the Agentic Creator OS ecosystem.

## Quick Reference

| Agent | Platform | Purpose | Location |
|-------|----------|---------|----------|
| Creation Engine | Claude | Content & product development | `claude/plugins/creator-tools/agents/` |
| Workshop Builder | OpenCode | Technical workshop creation | `opencode/agents/` |
| Content Strategist | OpenCode | Content planning & calendars | `opencode/agents/` |
| Code Architect | OpenCode | Software architecture design | `opencode/agents/` |
| SEO Specialist | OpenCode | Search & AEO optimization | `opencode/agents/` |
| Sisyphus (FrankX) | OpenCode | Master orchestrator | `opencode/oh-my-opencode.json` |
| Librarian | OpenCode | Research & documentation | `opencode/oh-my-opencode.json` |
| Explorer | OpenCode | Codebase exploration | `opencode/oh-my-opencode.json` |
| Oracle | OpenCode | Architecture decisions | `opencode/oh-my-opencode.json` |
| Frontend Engineer | OpenCode | UI/UX implementation | `opencode/oh-my-opencode.json` |
| Document Writer | OpenCode | Documentation creation | `opencode/oh-my-opencode.json` |

---

## Claude Code Agents

### Creation Engine
**File**: `claude/plugins/creator-tools/agents/creation-engine.md`

The Creation Engine is responsible for transforming concepts into profitable content and products. It balances authenticity with marketing effectiveness.

**Capabilities**:
- Multi-format content creation
- Course and product development
- Community building
- Email marketing campaigns
- Product launches

**Activation**:
```
"Engage Creation Engine for content development"
```

---

## OpenCode Agents

### Workshop Builder
**File**: `opencode/agents/workshop-builder.md`

Specialized agent for creating comprehensive, hands-on technical workshops that transform complex topics into structured learning journeys.

**Capabilities**:
- Workshop structure design
- Module content creation
- Hands-on labs and exercises
- Assessment generation
- Quality gate validation

**Commands**:
```bash
/workshop create [name] --type [quickstart|deepdive|full]
/workshop module [name] --number [N]
/workshop validate [name]
```

---

### Content Strategist
**File**: `opencode/agents/content-strategist.md`

Plans and optimizes content strategies by analyzing audiences, identifying content gaps, and creating comprehensive content calendars.

**Capabilities**:
- Audience persona development
- Content pillar identification
- Editorial calendar creation
- Competitor analysis
- Keyword opportunity mapping

**Commands**:
```bash
/content strategy [project] --audience [persona]
/content audit [url]
/content calendar --weeks [N]
```

---

### Code Architect
**File**: `opencode/agents/code-architect.md`

Designs and implements software architectures using systems thinking, proven patterns, and best practices.

**Capabilities**:
- System design and diagramming
- Technology selection
- API and database design
- Code review and refactoring
- Architecture Decision Records (ADRs)

**Commands**:
```bash
/architect design [system] --requirements [file]
/architect review [path]
/architect adr [decision-title]
```

---

### SEO Specialist
**File**: `opencode/agents/seo-specialist.md`

Handles search engine optimization and AI Engine Optimization (AEO) to ensure content ranks well and gets cited by AI assistants.

**Capabilities**:
- Keyword research and mapping
- On-page and technical SEO
- AEO (TL;DR, FAQ, schema)
- Content gap analysis
- Featured snippet targeting

**Commands**:
```bash
/seo audit [url]
/seo keywords [topic]
/seo optimize [file]
/seo aeo [file]
```

---

## oh-my-opencode Agents

These agents are configured in `opencode/oh-my-opencode.json` and automatically enhance OpenCode's built-in agents.

### Sisyphus (FrankX Override)
The master orchestrator that coordinates all agent work. Configured to always identify as "FrankX" rather than "Sisyphus".

**Role**: Creator Transformation Architect
**Mission**: Turn overwhelmed creators into confident, AI-empowered artists

### Librarian
Enhanced for creator-friendly implementations. Researches patterns, finds real-world examples, and notes accessibility considerations.

### Explorer
Enhanced for codebase exploration with focus on:
- Creator-facing vs internal patterns
- Brand consistency (colors, typography, voice)
- Reusable components
- UX improvement opportunities

### Oracle
Enhanced for architecture decisions with:
- Creator-first thinking
- Soul + Systems balance
- Studio energy guidance
- Long-term vision alignment

### Frontend UI/UX Engineer
Enhanced with the complete design system:
- Color palette (deep navy, cosmic purple, aurora blue)
- Typography (Poppins, Inter, JetBrains Mono)
- Style guidelines (glassmorphism, aurora gradients)
- WCAG AA contrast requirements

### Document Writer
Enhanced with brand voice guidelines for documentation:
- Lead with 'why' before 'how'
- Use studio/music analogies
- End sections with clear next steps
- Maintain encouraging, mentor-like tone

---

## Agent Activation Patterns

### Claude Code
In Claude Code, activate agents by referencing them in your prompt:
```
"Engage the Creation Engine to develop a course outline"
"Use the Technical Translator to explain this API"
```

### OpenCode
In OpenCode, agents are activated through:
1. **Slash commands**: `/workshop create`, `/content strategy`
2. **Natural language**: "Help me build a workshop"
3. **oh-my-opencode**: Automatic enhancement of built-in agents

### Magic Words (OpenCode)
- **ultrawork / ulw**: Fire ALL agents in parallel for maximum throughput
- **ultracode / ulc**: Parallel coding agents (architect + coder + reviewer)

---

## Creating New Agents

### Claude Code Agent Template
```markdown
# [Agent Name] Agent
**Version**: 1.0.0

## Identity
[Description of who this agent is]

## Personality
- [Trait 1]
- [Trait 2]

## Core Capabilities
- [Capability 1]
- [Capability 2]

## Behaviors
### On [Trigger]
1. [Step 1]
2. [Step 2]

## Response Format
[Template for outputs]

## Tools Available
- [Tool 1]
- [Tool 2]

## Activation Commands
```bash
/command [args]
```
```

### OpenCode Agent Enhancement
Add to `oh-my-opencode.json`:
```json
{
  "agents": {
    "new-agent": {
      "prompt_append": "\n\n## Enhancement\n\n[Instructions here]"
    }
  }
}
```

---

## Agent Collaboration

Agents can work together through the orchestration patterns:

### Sequential Collaboration
```
Research Agent > Content Agent > SEO Agent > Publish
```

### Parallel Collaboration
```
Design Agent ─┐
Content Agent ├─> Integration > Publish
Dev Agent ────┘
```

### Hierarchical Collaboration
```
Orchestrator (Sisyphus/FrankX)
├── Content Team
│   ├── Researcher
│   └── Writer
├── Dev Team
│   └── Code Architect
└── Marketing Team
    └── SEO Specialist
```

---

## Related Resources

- `/agentic-orchestration` - Multi-agent coordination
- `/agentic-creator-os` - Department system
- `/creator-intelligence-system` - Personal AI brain
- `opencode/oh-my-opencode.json` - Agent configurations

---

*Agents are the building blocks of the Agentic Creator OS. Build teams, not tools.*
