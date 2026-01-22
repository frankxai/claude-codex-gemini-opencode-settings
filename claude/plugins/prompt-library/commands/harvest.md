# /harvest - Prompt Harvesting Command

Activate the Prompt Harvester agent to discover and collect elite prompts from various sources.

## Usage

```
/harvest [subcommand] [options]
```

## Subcommands

### `/harvest github [repo|query]`
Scan GitHub for prompts in repositories.

**Examples:**
```bash
# Scan specific repository
/harvest github anthropics/anthropic-cookbook

# Search with query
/harvest github "prompt engineering language:markdown stars:>500"

# Scan organization
/harvest github org:openai
```

**Options:**
- `--min-stars <n>` - Minimum star count (default: 100)
- `--updated-within <days>` - Only recently updated (default: 90)
- `--language <lang>` - Filter by language (default: markdown)

### `/harvest arxiv [query]`
Search ArXiv for prompting research papers.

**Examples:**
```bash
# Search by topic
/harvest arxiv "chain of thought prompting"

# Search by category
/harvest arxiv --category cs.CL "few-shot learning"

# Recent papers only
/harvest arxiv --days 30 "instruction tuning"
```

**Options:**
- `--category <cat>` - ArXiv category (cs.CL, cs.AI, cs.LG)
- `--days <n>` - Papers from last N days
- `--max-results <n>` - Maximum papers to retrieve

### `/harvest weekly`
Run the full weekly intelligence gathering across all sources.

**Example:**
```bash
/harvest weekly
```

**Output:**
- Scans all configured sources
- Generates weekly intelligence report
- Updates prompt library with new discoveries

### `/harvest trending`
Find currently trending prompting techniques.

**Example:**
```bash
/harvest trending

# Focus on specific domain
/harvest trending --domain coding
```

**Output:**
- List of trending techniques
- Source links and examples
- Adoption recommendations

### `/harvest dedupe`
Remove duplicate prompts from the library.

**Example:**
```bash
/harvest dedupe

# Dry run to see what would be removed
/harvest dedupe --dry-run
```

### `/harvest sources`
List or manage harvest sources.

**Examples:**
```bash
# List configured sources
/harvest sources list

# Add new source
/harvest sources add github:microsoft/semantic-kernel

# Remove source
/harvest sources remove github:old/repo
```

## Output Format

Harvested prompts are saved in standardized format:

```yaml
# prompts/harvested/harvest-2024-03-15-abc123.yaml
id: harvest-2024-03-15-abc123
source:
  url: https://github.com/anthropics/anthropic-cookbook
  author: Anthropic
  license: MIT
  harvested_at: 2024-03-15T10:30:00Z
  
metadata:
  technique: chain-of-thought
  domain: reasoning
  model_compatibility: [claude-3, gpt-4]
  quality_score: 0.92
  
content:
  raw: |
    Original prompt text...
  normalized: |
    Cleaned version...
    
analysis:
  strengths:
    - Clear step-by-step structure
    - Good example quality
  weaknesses:
    - No error handling
  evolution_potential: high
```

## Configuration

Configure harvest behavior in plugin.json:

```json
{
  "harvest": {
    "schedule": "weekly",
    "sources": {
      "github": {
        "enabled": true,
        "min_stars": 100,
        "organizations": ["anthropics", "openai", "google-deepmind"]
      },
      "arxiv": {
        "enabled": true,
        "categories": ["cs.CL", "cs.AI"],
        "keywords": ["prompting", "instruction"]
      },
      "blogs": {
        "enabled": true,
        "feeds": [
          "https://www.anthropic.com/research/feed",
          "https://openai.com/blog/rss"
        ]
      }
    },
    "quality_threshold": 0.7,
    "auto_categorize": true,
    "preserve_attribution": true
  }
}
```

## Integration

The harvest command integrates with:
- **Prompt Tester**: Auto-queue harvested prompts for validation
- **Prompt Architect**: Feed discovered patterns for inspiration
- **Prompt Evolver**: Track technique trends for evolution planning

## Examples

### Full Workflow
```bash
# 1. Run weekly harvest
/harvest weekly

# 2. Review harvested prompts
/harvest list --pending

# 3. Approve quality prompts
/harvest approve prompt-abc123

# 4. Send to testing
/test prompt prompt-abc123
```

### Research Deep Dive
```bash
# Find all CoT papers
/harvest arxiv "chain of thought" --category cs.CL --max-results 20

# Extract prompts from top paper
/harvest paper arxiv:2401.12345

# Compare with existing library
/harvest compare arxiv:2401.12345 --library
```
