# /evolve - Prompt Evolution Command

Activate the Prompt Evolver agent to improve prompts based on research, metrics, and new techniques.

## Usage

```
/evolve [subcommand] [options]
```

## Subcommands

### `/evolve prompt [prompt-id]`
Evolve a specific prompt using available improvement strategies.

**Examples:**
```bash
# Auto-evolve with best strategy
/evolve prompt prompt-abc123

# Evolve with specific strategy
/evolve prompt prompt-abc123 --strategy research

# Evolve with constraints
/evolve prompt prompt-abc123 --preserve format --improve quality
```

**Strategies:**
- `research` - Apply latest research techniques
- `metrics` - Optimize based on performance data
- `hybrid` - Combine research and metrics

**Options:**
- `--strategy <strategy>` - Evolution strategy
- `--preserve <aspects>` - Aspects to preserve
- `--improve <metrics>` - Metrics to optimize
- `--version <type>` - Version increment (major/minor/patch)

### `/evolve research [paper|technique]`
Integrate research findings into prompt library.

**Examples:**
```bash
# Integrate specific paper
/evolve research arxiv:2401.12345

# Apply named technique
/evolve research "chain-of-verification"

# Scan and integrate recent research
/evolve research --scan --days 30
```

**Options:**
- `--scan` - Scan for new research
- `--days <n>` - Lookback period
- `--domain <domain>` - Focus domain
- `--apply-to <prompts>` - Target prompts

### `/evolve metrics [prompt-id]`
Evolve prompt based on performance metrics.

**Examples:**
```bash
# Evolve based on all metrics
/evolve metrics prompt-abc123

# Target specific metric
/evolve metrics prompt-abc123 --target quality

# Evolve if below threshold
/evolve metrics prompt-abc123 --threshold 4.0
```

**Metrics Supported:**
- `quality` - Output quality score
- `completion` - Task completion rate
- `efficiency` - Token efficiency
- `satisfaction` - User satisfaction
- `safety` - Safety test pass rate

### `/evolve compare [v1] [v2]`
Compare two prompt versions with detailed analysis.

**Examples:**
```bash
# Compare versions
/evolve compare prompt-v1.0.0 prompt-v2.0.0

# Include test comparison
/evolve compare prompt-v1 prompt-v2 --test

# Visual diff
/evolve compare prompt-v1 prompt-v2 --diff
```

**Options:**
- `--test` - Include test comparisons
- `--diff` - Show prompt diff
- `--metrics` - Compare metrics side-by-side

### `/evolve history [prompt-id]`
View evolution history of a prompt.

**Examples:**
```bash
# Full history
/evolve history prompt-abc123

# Metrics over time
/evolve history prompt-abc123 --metrics

# Lineage tree
/evolve history prompt-abc123 --tree
```

**Output Includes:**
- Version timeline
- Change descriptions
- Metric trends
- Ancestry/lineage

### `/evolve rollback [prompt-id] [version]`
Rollback prompt to a previous version.

**Examples:**
```bash
# Rollback to specific version
/evolve rollback prompt-abc123 1.2.0

# Rollback last change
/evolve rollback prompt-abc123 --last

# Preview rollback
/evolve rollback prompt-abc123 1.0.0 --dry-run
```

**Options:**
- `--last` - Rollback last change
- `--dry-run` - Preview without executing
- `--preserve-current` - Keep current as branch

### `/evolve batch [prompts...]`
Evolve multiple prompts in batch.

**Examples:**
```bash
# Evolve collection
/evolve batch ./prompts/production/

# Apply technique to all
/evolve batch ./prompts/ --technique cot-improvement

# Scheduled evolution
/evolve batch --scheduled quarterly
```

**Options:**
- `--technique <technique>` - Apply to all
- `--parallel <n>` - Parallel processing
- `--report <path>` - Save evolution report

### `/evolve audit`
Audit prompt library for evolution opportunities.

**Examples:**
```bash
# Full audit
/evolve audit

# Focus on low performers
/evolve audit --threshold 3.5

# Include recommendations
/evolve audit --recommend
```

**Output:**
- Prompts needing evolution
- Technique recommendations
- Priority ranking

## Evolution Strategies

### Research-Driven
```yaml
research_evolution:
  source: "Latest AI research papers"
  process:
    1. Identify relevant techniques
    2. Design integration approach
    3. Create variant prompt
    4. A/B test against baseline
    5. Deploy if improved
  
  examples:
    - "Apply chain-of-verification from arxiv:2401.12345"
    - "Integrate self-consistency pattern"
    - "Add constitutional constraints"
```

### Metrics-Driven
```yaml
metrics_evolution:
  source: "Performance data"
  process:
    1. Analyze current metrics
    2. Identify improvement areas
    3. Apply targeted mutations
    4. Test improvements
    5. Deploy if validated
  
  mutation_map:
    low_quality: "Add examples, strengthen instructions"
    low_completion: "Simplify task decomposition"
    low_efficiency: "Compress, remove redundancy"
    low_safety: "Add constraints, strengthen guardrails"
```

### Hybrid Evolution
```yaml
hybrid_evolution:
  process:
    1. Gather research insights
    2. Analyze performance gaps
    3. Design targeted improvements
    4. Validate with testing
    5. Deploy winning variants
  
  benefits:
    - Research-informed optimization
    - Data-validated changes
    - Continuous improvement cycle
```

## Version Management

### Versioning Scheme
```
{major}.{minor}.{patch}

major: Paradigm shifts, breaking changes
minor: New features, significant improvements
patch: Bug fixes, minor optimizations
```

### Evolution Record
```yaml
evolution_record:
  prompt_id: "prompt-abc123"
  current_version: "2.1.0"
  
  evolution_log:
    - version: "1.0.0"
      date: "2024-01-15"
      type: "initial"
      change: "Initial version"
      
    - version: "1.1.0"
      date: "2024-02-01"
      type: "research"
      change: "Added CoT pattern"
      source: "arxiv:2401.12345"
      improvement: "+12% quality"
      
    - version: "2.0.0"
      date: "2024-03-01"
      type: "metrics"
      change: "Restructured for efficiency"
      improvement: "-30% tokens, same quality"
```

## Configuration

```json
{
  "evolver": {
    "auto_evolve": false,
    "evolution_cycle": "quarterly",
    "min_improvement": 0.05,
    "ab_test_samples": 100,
    "ab_test_duration_days": 14,
    "preserve_history": true,
    "max_history_versions": 10,
    "research_sources": [
      "arxiv:cs.CL",
      "arxiv:cs.AI"
    ],
    "metrics_threshold": {
      "quality": 4.0,
      "completion": 0.9,
      "safety": 1.0
    }
  }
}
```

## Integration

The evolve command integrates with:
- **Prompt Harvester**: Receive new techniques
- **Prompt Architect**: Redesign for major evolutions
- **Prompt Tester**: Validate improvements

## Examples

### Research Integration Workflow
```bash
# 1. Scan for new research
/evolve research --scan --days 30

# 2. Identify applicable techniques
/evolve audit --recommend

# 3. Apply technique to prompts
/evolve research "self-consistency" --apply-to prompt-abc123

# 4. Compare versions
/evolve compare prompt-v1 prompt-v2 --test

# 5. Deploy if improved
/evolve prompt prompt-abc123 --promote
```

### Metrics-Driven Improvement
```bash
# 1. Identify low performers
/evolve audit --threshold 3.5

# 2. Evolve based on metrics
/evolve metrics prompt-abc123 --target quality

# 3. Test evolved version
/test compare prompt-v1 prompt-v2 --ab-test

# 4. Review results
/evolve history prompt-abc123 --metrics

# 5. Rollback if needed
/evolve rollback prompt-abc123 --last
```

### Quarterly Evolution Cycle
```bash
# Week 1: Research review
/evolve research --scan --days 90
/harvest arxiv "prompting"

# Week 2: Design experiments
/evolve batch ./prompts/ --strategy hybrid --dry-run

# Week 3: Execute evolution
/evolve batch ./prompts/ --strategy hybrid --test

# Week 4: Deploy and document
/evolve batch ./prompts/ --promote
/evolve audit --report ./reports/q1-evolution.md
```
