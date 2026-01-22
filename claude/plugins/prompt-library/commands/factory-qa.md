---
description: QA Gatekeeper - Voice, claims, SEO, AEO, schema, readability checks
thinking: false
---

# Factory QA Gatekeeper

**Part of**: `/factory` (Agentic Creator OS)
**Script**: `scripts/qa-gatekeeper.mjs`

## Run QA Check

```bash
npm run qa:check artifacts/[slug]/[date]
```

## Quality Gates

### 1. Voice Check
- [ ] No forbidden phrases from `brand/VOICE.md`
- [ ] Tone matches brand voice
- [ ] CTAs follow guidelines

**Forbidden Phrases:**
- "game-changer", "revolutionary", "synergy"
- "leverage" (as verb), "best-in-class"
- "thought leader", "guru", "hustle"
- "passive income", "get rich quick", "secret", "hack"

### 2. Claims Check
- [ ] Every statistic has a source
- [ ] All claims verified in `sources.md`
- [ ] LEGAL_SAFETY.md compliance
- [ ] No unverified guarantees

### 3. SEO Check
- [ ] Title under 60 characters
- [ ] Description under 155 characters
- [ ] 3+ internal links
- [ ] H1/H2 structure correct
- [ ] Keywords specified

### 4. AEO Check
- [ ] TL;DR present (40-60 words)
- [ ] 5-10 FAQ entries
- [ ] FAQ answers under 60 words
- [ ] Questions match search intent

### 5. Schema Check
- [ ] schema.jsonld exists
- [ ] Valid JSON-LD syntax
- [ ] Article schema present
- [ ] FAQPage schema (if FAQs exist)

### 6. Readability Check
- [ ] Word count 1000+
- [ ] Paragraphs not too long
- [ ] Active voice preferred
- [ ] Scannable structure

## QA Report Output

```
STATUS: PASS/FAIL
[+] Voice      - No forbidden phrases
[+] Claims     - Sources verified
[+] SEO        - Title optimized
[+] AEO        - TL;DR present, 6 FAQs
[+] Schema     - Valid JSON-LD
[+] Readability - Good structure

DISTRIBUTION ANGLES (on PASS):
LinkedIn: ...
Twitter: ...
Newsletter: ...
TikTok: ...
YouTube Short: ...
```

## Quick Fixes by Gate

| Gate | Common Issue | Fix |
|------|-------------|-----|
| Voice | Forbidden phrase | Replace with approved vocabulary |
| Claims | Missing source | Add to sources.md |
| SEO | Title too long | Cut to 60 chars |
| AEO | No TL;DR | Add 40-60 word summary |
| Schema | Missing file | Run `npm run schema:generate` |
| Readability | Long paragraphs | Split into 3-4 sentences |

## Related Commands

- `/factory` - Full publishing workflow
- `/factory-seo` - SEO optimization
- `/factory-aeo` - AEO optimization

**Run QA on which artifact?**
