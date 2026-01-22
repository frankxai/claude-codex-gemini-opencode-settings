---
description: SEO optimization for Publishing Factory - keywords, meta, structure, links
thinking: false
---

# Factory SEO Optimization

**Part of**: `/factory` (Agentic Creator OS)
**Reference**: `content/STYLE_GUIDE.md`, `pipelines/article_publish.yaml`

## SEO Checklist

### Title Optimization
- [ ] Primary keyword at front
- [ ] Under 60 characters
- [ ] Compelling hook
- [ ] Format: `[Keyword]: [Benefit]`

### Meta Description
- [ ] Under 155 characters
- [ ] Includes primary keyword
- [ ] Has CTA or promise
- [ ] Matches search intent

### Header Structure
- [ ] Single H1 (title)
- [ ] 3-7 H2 sections
- [ ] H2s as questions when relevant
- [ ] Keywords in headers naturally

### Internal Linking
- [ ] Minimum 3 internal links
- [ ] Link to high-value pages:
  - `/intelligence-atlas`
  - `/products/agentic-creator-os`
  - `/prompt-library`
- [ ] Descriptive anchor text (not "click here")

### Keyword Density
- [ ] Primary keyword: 1-2% density
- [ ] Secondary keywords in H2s
- [ ] Related terms sprinkled naturally

## Quick Audit

```bash
# Run content validation
npm run content:validate

# Generate/update schema
npm run schema:generate
```

## SEO Meta Template

```json
{
  "title": "[Primary Keyword]: [Benefit] (< 60 chars)",
  "description": "[Action] [keyword] [outcome]. [CTA]. (< 155 chars)",
  "keywords": ["primary", "secondary", "long-tail"],
  "canonical": "https://frankx.ai/blog/[slug]"
}
```

## Common Fixes

| Issue | Fix |
|-------|-----|
| Title too long | Front-load keyword, cut filler |
| No internal links | Add 3+ to related content |
| Thin content | Expand to 1500+ words |
| Missing H2s | Add question-based sections |
| No FAQ | Add 5-10 Q&A for snippets |

## Related Commands

- `/factory` - Full publishing workflow
- `/factory-aeo` - AI Engine Optimization
- `/frankx-ai-seo` - General site SEO

**What needs SEO optimization?**
