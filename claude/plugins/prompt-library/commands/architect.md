# /architect - Prompt Design Command

Activate the Prompt Architect agent to design sophisticated prompts using advanced reasoning patterns.

## Usage

```
/architect [subcommand] [options]
```

## Subcommands

### `/architect design [task]`
Design a new prompt for a specified task.

**Examples:**
```bash
# Basic design
/architect design "code review for Python"

# With specific requirements
/architect design "code review" --output json --model claude-3

# Interactive design session
/architect design --interactive
```

**Options:**
- `--pattern <pattern>` - Use specific pattern (cot, tot, react)
- `--output <format>` - Output format (text, json, markdown)
- `--model <model>` - Target model optimization
- `--tokens <max>` - Token budget constraint
- `--examples <n>` - Number of few-shot examples

### `/architect pattern [pattern] [task]`
Apply a specific reasoning pattern to a task.

**Patterns Available:**
| Pattern | Code | Best For |
|---------|------|----------|
| Chain-of-Thought | `cot` | Reasoning, math, logic |
| Tree-of-Thought | `tot` | Creative, exploration |
| ReAct | `react` | Tool use, agentic |
| Self-Consistency | `sc` | High-stakes accuracy |
| Constitutional | `const` | Safety, alignment |
| Least-to-Most | `ltm` | Complex decomposition |

**Examples:**
```bash
# Apply Chain-of-Thought
/architect pattern cot "solve math word problems"

# Apply ReAct for tool use
/architect pattern react "research assistant with web search"

# Combine patterns
/architect pattern cot+sc "legal document analysis"
```

### `/architect optimize [prompt]`
Optimize an existing prompt for efficiency or quality.

**Examples:**
```bash
# Optimize for tokens
/architect optimize prompt-abc123 --goal tokens

# Optimize for quality
/architect optimize prompt-abc123 --goal quality

# Optimize for specific model
/architect optimize prompt-abc123 --model claude-3-5-sonnet
```

**Options:**
- `--goal <goal>` - Optimization target (tokens, quality, speed)
- `--preserve <aspects>` - Aspects to preserve
- `--budget <tokens>` - Token budget

### `/architect template [type]`
Generate a prompt template for common use cases.

**Template Types:**
- `system` - System prompt template
- `assistant` - Assistant role template
- `task` - Task-specific template
- `multi-turn` - Conversation template
- `tool-use` - Tool integration template

**Examples:**
```bash
# Generate system prompt template
/architect template system

# Generate with customization
/architect template task --domain coding --style detailed
```

### `/architect analyze [prompt]`
Analyze prompt structure and provide improvement suggestions.

**Examples:**
```bash
# Full analysis
/architect analyze prompt-abc123

# Specific aspect analysis
/architect analyze prompt-abc123 --focus structure

# Compare to best practices
/architect analyze prompt-abc123 --benchmark
```

**Output Includes:**
- Structure breakdown
- Pattern identification
- Token usage analysis
- Improvement suggestions
- Quality score estimate

### `/architect compose [prompts...]`
Compose multiple prompts into a cohesive system.

**Examples:**
```bash
# Compose system + task prompts
/architect compose system-prompt task-prompt

# Create multi-agent prompt set
/architect compose --type multi-agent agent1 agent2 agent3
```

## Pattern Templates

### Chain-of-Thought
```markdown
/architect pattern cot "task description"

# Generated structure:
You are an expert at {domain}.

Think through this step by step:
1. Understand the problem
2. Plan your approach
3. Execute each step
4. Verify your work
5. Provide the answer

Problem: {input}

Solution:
```

### Tree-of-Thought
```markdown
/architect pattern tot "task description"

# Generated structure:
Explore multiple approaches to: {problem}

## Approach A
- Description: ...
- Viability: X/10

## Approach B
- Description: ...
- Viability: X/10

## Selected Approach
Based on analysis, Approach {X} is optimal.

## Execution
...
```

### ReAct
```markdown
/architect pattern react "task description"

# Generated structure:
Tools available:
{tool_list}

For each step:
Thought: What do I need?
Action: tool_name(params)
Observation: [result]

Task: {input}
```

## Design Principles

The Architect follows these principles:

1. **Clarity First**: Instructions should be unambiguous
2. **Structure Matters**: Well-organized prompts perform better
3. **Examples Help**: Few-shot examples improve consistency
4. **Constraints Define**: Clear boundaries prevent drift
5. **Efficiency Counts**: Minimize tokens without losing quality

## Output Format

Designed prompts are saved with metadata:

```yaml
# prompts/designed/prompt-{id}.yaml
id: prompt-{uuid}
version: "1.0.0"
created: "2024-03-15T10:30:00Z"
author: "Prompt Architect"

design:
  task: "Original task description"
  pattern: "chain-of-thought"
  model_target: "claude-3"
  token_count: 450
  
prompt:
  system: |
    System context...
  template: |
    Task template with {{variables}}...
  examples:
    - input: "Example input"
      output: "Example output"
      
validation:
  tested: false
  quality_score: null
  notes: "Pending testing"
```

## Integration

The architect command integrates with:
- **Prompt Harvester**: Receive patterns from harvested prompts
- **Prompt Tester**: Auto-send designs for validation
- **Prompt Evolver**: Provide base designs for evolution

## Examples

### Complete Design Workflow
```bash
# 1. Start with requirements
/architect design "customer support chatbot" --interactive

# 2. Apply appropriate pattern
/architect pattern const+cot "customer support"

# 3. Optimize for production
/architect optimize new-prompt --goal tokens --budget 1000

# 4. Analyze final design
/architect analyze new-prompt --benchmark

# 5. Send for testing
/test prompt new-prompt
```

### Quick Templates
```bash
# Generate system prompt for coding assistant
/architect template system --domain coding --personality helpful

# Generate multi-turn conversation template
/architect template multi-turn --turns 5 --context-window 8000
```
