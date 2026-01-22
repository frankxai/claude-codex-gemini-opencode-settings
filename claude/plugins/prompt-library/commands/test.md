# /test - Prompt Testing Command

Activate the Prompt Tester agent to validate prompt quality, safety, and brand alignment.

## Usage

```
/test [subcommand] [options]
```

## Subcommands

### `/test prompt [prompt-id]`
Run full test suite on a prompt.

**Examples:**
```bash
# Full test suite
/test prompt prompt-abc123

# Test with specific model
/test prompt prompt-abc123 --model claude-3-5-sonnet

# Quick validation (reduced tests)
/test prompt prompt-abc123 --quick
```

**Options:**
- `--model <model>` - Model to test with
- `--quick` - Run abbreviated test suite
- `--verbose` - Show detailed output
- `--save-outputs` - Save all model outputs

### `/test safety [prompt-id]`
Run safety-focused testing only.

**Examples:**
```bash
# Full safety audit
/test safety prompt-abc123

# Test specific attack vectors
/test safety prompt-abc123 --vectors injection,jailbreak

# Red team simulation
/test safety prompt-abc123 --red-team
```

**Attack Vectors Tested:**
- `injection` - Prompt injection attempts
- `jailbreak` - Safety bypass attempts
- `encoding` - Encoding-based attacks
- `context` - Context manipulation
- `social` - Social engineering

**Options:**
- `--vectors <list>` - Specific vectors to test
- `--red-team` - Full adversarial testing
- `--severity <level>` - Minimum severity to test

### `/test brand [prompt-id]`
Test brand voice and alignment.

**Examples:**
```bash
# Full brand alignment check
/test brand prompt-abc123

# Test against specific brand guide
/test brand prompt-abc123 --guide ./brand-voice.yaml

# Focus on specific dimensions
/test brand prompt-abc123 --focus tone,vocabulary
```

**Dimensions Tested:**
- Tone consistency
- Vocabulary compliance
- Style adherence
- Value alignment
- Personality match

**Options:**
- `--guide <path>` - Custom brand guide
- `--focus <dimensions>` - Specific dimensions
- `--examples <n>` - Number of test outputs

### `/test compare [prompt-a] [prompt-b]`
Compare two prompt variants.

**Examples:**
```bash
# Basic comparison
/test compare prompt-v1 prompt-v2

# A/B test comparison
/test compare prompt-v1 prompt-v2 --ab-test --samples 50

# Specific dimension comparison
/test compare prompt-v1 prompt-v2 --dimension quality
```

**Options:**
- `--ab-test` - Run proper A/B test
- `--samples <n>` - Number of samples per variant
- `--dimension <dim>` - Focus comparison dimension
- `--statistical` - Include statistical analysis

### `/test regression [prompt-collection]`
Run regression tests on prompt collection.

**Examples:**
```bash
# Full regression suite
/test regression ./prompts/production/

# Regression against baseline
/test regression ./prompts/ --baseline v1.0.0

# Only critical prompts
/test regression ./prompts/ --priority critical
```

**Options:**
- `--baseline <version>` - Compare against version
- `--priority <level>` - Filter by priority
- `--fail-fast` - Stop on first failure

### `/test batch [prompts...]`
Batch test multiple prompts.

**Examples:**
```bash
# Test multiple prompts
/test batch prompt-1 prompt-2 prompt-3

# Test all prompts in directory
/test batch ./prompts/new/

# Parallel batch testing
/test batch ./prompts/ --parallel 5
```

**Options:**
- `--parallel <n>` - Parallel test execution
- `--report <format>` - Report format (json, markdown)
- `--continue-on-failure` - Don't stop on failures

### `/test cases [prompt-id]`
Generate test cases for a prompt.

**Examples:**
```bash
# Generate comprehensive test cases
/test cases prompt-abc123

# Generate specific types
/test cases prompt-abc123 --types edge,error

# Export test cases
/test cases prompt-abc123 --export ./tests/
```

**Test Case Types:**
- `happy` - Happy path cases
- `edge` - Edge cases
- `error` - Error handling
- `safety` - Safety test cases
- `brand` - Brand alignment cases

## Test Report Format

```markdown
# Prompt Test Report: {prompt-id}

## Summary
| Metric | Score | Status |
|--------|-------|--------|
| Overall | 4.2/5.0 | PASS |
| Functional | 95% | PASS |
| Quality | 4.3/5.0 | PASS |
| Safety | 100% | PASS |
| Brand | 4.0/5.0 | PASS |
| Efficiency | 850 tokens | PASS |

## Test Results

### Functional Tests (19/20 passed)
| Test | Input | Result | Notes |
|------|-------|--------|-------|
| Happy Path 1 | "..." | PASS | |
| Edge Case 3 | "..." | FAIL | Missing field |

### Safety Tests (10/10 passed)
| Attack Type | Attempts | Blocked |
|-------------|----------|---------|
| Injection | 5 | 5 |
| Jailbreak | 5 | 5 |

### Quality Assessment
- Coherence: 4.5/5.0
- Relevance: 4.2/5.0
- Completeness: 4.0/5.0

## Recommendations
1. Add error handling for edge case 3
2. Consider reducing instruction verbosity

## Test Artifacts
- Outputs: ./test-outputs/prompt-abc123/
- Metrics: ./metrics/prompt-abc123.json
```

## Quality Rubric

| Score | Label | Criteria |
|-------|-------|----------|
| 5.0 | Excellent | Exceeds all requirements |
| 4.0 | Good | Meets requirements, minor issues |
| 3.0 | Acceptable | Meets minimum, improvement needed |
| 2.0 | Poor | Falls short, significant issues |
| 1.0 | Failing | Does not meet requirements |

## Configuration

```json
{
  "tester": {
    "default_model": "claude-3-5-sonnet",
    "tests_per_category": 5,
    "pass_threshold": 4.0,
    "safety_tests_enabled": true,
    "brand_tests_enabled": true,
    "parallel_execution": true,
    "save_outputs": true,
    "brand_voice": {
      "tone": "professional-technical-accessible",
      "prohibited_terms": ["magic", "automagically"],
      "required_elements": ["clear explanations", "examples"]
    }
  }
}
```

## Integration

The test command integrates with:
- **Prompt Harvester**: Validate newly harvested prompts
- **Prompt Architect**: Test newly designed prompts
- **Prompt Evolver**: Compare evolved variants

## Examples

### Complete Testing Workflow
```bash
# 1. Generate test cases
/test cases prompt-abc123 --export ./tests/

# 2. Run full test suite
/test prompt prompt-abc123 --verbose

# 3. If issues, run specific tests
/test safety prompt-abc123 --red-team

# 4. Compare with previous version
/test compare prompt-v1 prompt-v2 --ab-test

# 5. Generate final report
/test prompt prompt-abc123 --report markdown > report.md
```

### CI/CD Integration
```bash
# Run in CI pipeline
/test batch ./prompts/production/ --parallel 10 --fail-fast

# Generate machine-readable report
/test regression ./prompts/ --report json > results.json
```
