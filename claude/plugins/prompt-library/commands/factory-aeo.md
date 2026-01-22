---
description: AI Engine Optimization - TL;DR, FAQ, schema for ChatGPT/Perplexity/Claude citations
thinking: false
---

# Factory AEO (AI Engine Optimization)

**Part of**: `/factory` (Agentic Creator OS)
**Purpose**: Optimize content for AI agent citations (ChatGPT, Perplexity, Claude)

## What is AEO?

AEO ensures your content gets cited by AI assistants, not just ranked by Google. AI agents extract:
- **TL;DR summaries** - First thing they read
- **FAQ entries** - Direct answer extraction
- **Structured data** - Schema.org JSON-LD
- **Clear definitions** - "What is X?" patterns

## AEO Checklist

### TL;DR Section (Required)
- [ ] Present in first 100 words
- [ ] 40-60 words exactly
- [ ] Self-contained summary
- [ ] Includes key insight

```markdown
## TL;DR
[40-60 word summary that an AI could cite verbatim.
This is what ChatGPT extracts first when summarizing your content.]
```

### FAQ Section (Required)
- [ ] 5-10 questions minimum
- [ ] Questions match search intent
- [ ] Answers under 60 words each
- [ ] Complete, standalone answers

```markdown
## FAQ

### What is [topic]?
[Topic] is [clear 40-60 word definition that fully answers the question without needing additional context].

### How do I [action]?
To [action], follow these steps: [concise explanation]. This approach works because [reason].
```

### Schema Markup
- [ ] Article schema present
- [ ] FAQPage schema for FAQ section
- [ ] Valid JSON-LD syntax
- [ ] All required fields filled

### Content Structure
- [ ] Question-based H2 headers
- [ ] Clear definitions early
- [ ] Numbered/bulleted lists
- [ ] Direct answer patterns

## Quick Commands

```bash
# Generate FAQ and schema
npm run schema:generate content/blog/[slug].mdx

# Validate AEO fields
npm run qa:check artifacts/[slug]/[date]
```

## AEO Answer Patterns

AI agents prefer these formats:

**Definition Pattern:**
```markdown
### What is [Term]?
[Term] is [category] that [function]. It [key characteristic] and enables [benefit].
```

**How-To Pattern:**
```markdown
### How do I [Action]?
To [action]: 1) [step one], 2) [step two], 3) [step three]. This typically takes [time].
```

**Comparison Pattern:**
```markdown
### [Option A] vs [Option B]: Which is better?
[Option A] excels at [strength] while [Option B] is better for [use case]. Choose [A] if [condition], [B] if [condition].
```

## faq.json Format

```json
[
  {
    "question": "What is AI Engine Optimization?",
    "answer": "AEO is the practice of optimizing content for AI assistant citations. It includes TL;DR summaries, FAQ sections, and structured schema markup that AI agents can easily extract and cite."
  }
]
```

## Schema.jsonld Format

```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Article",
      "headline": "Title",
      "description": "Description",
      "abstract": "TL;DR summary here"
    },
    {
      "@type": "FAQPage",
      "mainEntity": [
        {
          "@type": "Question",
          "name": "Question text?",
          "acceptedAnswer": {
            "@type": "Answer",
            "text": "Answer text under 60 words."
          }
        }
      ]
    }
  ]
}
```

## Related Commands

- `/factory` - Full publishing workflow
- `/factory-seo` - Traditional SEO
- `/factory-qa` - Quality gate checks

**What content needs AEO optimization?**
