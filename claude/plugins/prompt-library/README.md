# Prompt Library Plugin

A comprehensive prompt engineering system for Claude Code with harvesting, architecture, testing, and evolution capabilities.

## Overview

The Prompt Library plugin provides a complete workflow for managing prompts at scale:

```
┌─────────────────────────────────────────────────────────────────┐
│                     PROMPT LIBRARY SYSTEM                        │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  ┌─────────────┐    ┌─────────────┐    ┌─────────────┐         │
│  │   HARVEST   │───▶│  ARCHITECT  │───▶│    TEST     │         │
│  │             │    │             │    │             │         │
│  │ Discover    │    │ Design      │    │ Validate    │         │
│  │ Collect     │    │ Structure   │    │ Score       │         │
│  │ Categorize  │    │ Optimize    │    │ Safety      │         │
│  └─────────────┘    └─────────────┘    └──────┬──────┘         │
│         ▲                                      │                │
│         │                                      ▼                │
│         │           ┌─────────────┐    ┌─────────────┐         │
│         │           │   EVOLVE    │◀───│   DEPLOY    │         │
│         │           │             │    │             │         │
│         └───────────│ Research    │    │ Production  │         │
│                     │ Metrics     │    │ Monitoring  │         │
│                     │ Iterate     │    │ Feedback    │         │
│                     └─────────────┘    └─────────────┘         │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

## Installation

1. Copy the plugin to your Claude Code plugins directory:
```bash
cp -r prompt-library ~/.claude/plugins/
```

2. Verify installation:
```bash
claude plugins list
# Should show: prompt-library v1.0.0
```

## Quick Start

```bash
# Harvest prompts from GitHub
/harvest github anthropics/anthropic-cookbook

# Design a new prompt
/architect design "code review assistant" --pattern cot

# Test the prompt
/test prompt new-prompt-id

# Evolve based on metrics
/evolve prompt prompt-id --strategy metrics
```

## Agents

### Prompt Harvester
Scans GitHub, ArXiv, and AI research labs for elite prompts.

**Activation:**
```
"Activate Prompt Harvester to scan [source] for [domain] prompts"
```

**Key Capabilities:**
- GitHub repository scanning
- ArXiv paper analysis
- AI lab blog monitoring
- Quality scoring and categorization

### Prompt Architect
Designs sophisticated prompts using advanced reasoning patterns.

**Activation:**
```
"Activate Prompt Architect to design a [task] prompt using [pattern]"
```

**Patterns Supported:**
- Chain-of-Thought (CoT)
- Tree-of-Thought (ToT)
- ReAct (Reasoning + Acting)
- Self-Consistency
- Constitutional Constraints

### Prompt Tester
Validates prompt quality, safety, and brand alignment.

**Activation:**
```
"Activate Prompt Tester to validate [prompt] for [use case]"
```

**Test Dimensions:**
- Functional testing
- Quality scoring
- Safety validation
- Brand alignment
- Efficiency metrics

### Prompt Evolver
Evolves prompts based on research and performance data.

**Activation:**
```
"Activate Prompt Evolver to improve [prompt] based on [research/metrics]"
```

**Evolution Strategies:**
- Research-driven (new techniques)
- Metrics-driven (performance data)
- Model-adaptive (new model capabilities)

## Commands

| Command | Description |
|---------|-------------|
| `/harvest` | Discover and collect prompts |
| `/architect` | Design and structure prompts |
| `/test` | Validate and score prompts |
| `/evolve` | Improve prompts over time |

See individual command docs for detailed usage.

## Directory Structure

```
prompt-library/
├── .claude-plugin/
│   └── plugin.json          # Plugin manifest
├── commands/
│   ├── harvest.md           # /harvest command
│   ├── architect.md         # /architect command
│   ├── test.md              # /test command
│   └── evolve.md            # /evolve command
├── agents/
│   ├── prompt-harvester.md  # Harvester agent
│   ├── prompt-architect.md  # Architect agent
│   ├── prompt-tester.md     # Tester agent
│   └── prompt-evolver.md    # Evolver agent
├── skills/
│   └── prompt-engineering/
│       └── SKILL.md         # Core skill documentation
└── README.md                # This file
```

## Configuration

Configure the plugin in `plugin.json`:

```json
{
  "configuration": {
    "promptsDirectory": "./prompts",
    "harvestSources": ["github:anthropics/*", "arxiv:cs.CL"],
    "qualityThreshold": 0.8,
    "brandVoice": "professional-technical-accessible"
  }
}
```

## Workflow Examples

### Building a Prompt Library from Scratch

```bash
# 1. Harvest existing prompts
/harvest github "prompt engineering stars:>500"
/harvest arxiv "chain of thought" --days 90

# 2. Review and categorize
/harvest list --pending
/harvest approve prompt-abc123

# 3. Design new prompts
/architect design "customer support" --pattern cot+const

# 4. Test all prompts
/test batch ./prompts/ --parallel 5

# 5. Generate reports
/test batch ./prompts/ --report markdown > library-report.md
```

### Continuous Improvement Cycle

```bash
# Weekly: Harvest new research
/harvest weekly

# Monthly: Audit and evolve
/evolve audit --threshold 3.5
/evolve batch ./prompts/low-performers/ --strategy metrics

# Quarterly: Major evolution
/evolve research --scan --days 90
/evolve batch ./prompts/ --strategy hybrid
```

### Production Deployment

```bash
# Validate before deploy
/test prompt production-prompt --comprehensive

# Compare with current
/test compare production-v1 production-v2 --ab-test

# Deploy if improved
/evolve prompt production-prompt --promote

# Monitor and iterate
/evolve metrics production-prompt --watch
```

## Integration

The Prompt Library integrates with other Claude Code plugins:

- **Creator Tools**: Generate content prompts
- **Oracle AI**: Enterprise prompt patterns
- **Suno Prompts**: Music generation prompts

## Contributing

To add prompts to the library:

1. Use `/harvest` or `/architect` to create
2. Run `/test` to validate
3. Document in standard format
4. Submit for review

## License

MIT License - See repository LICENSE file.

## Version History

- **1.0.0** (2024-03-15): Initial release
  - Four core agents
  - Complete command set
  - Prompt engineering skill
