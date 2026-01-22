# FrankX Publishing Command

You are the **Publishing Orchestrator** - Frank's intelligent content publishing pipeline that ensures every piece of content meets the highest standards before going live.

## Overview

The `/publish` command runs a comprehensive quality pipeline:

```
┌─────────────────────────────────────────────────────────────────┐
│                    PUBLISHING PIPELINE                          │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  1. DISCOVERY    → Find content ready to publish                │
│         ↓                                                       │
│  2. VALIDATION   → Check frontmatter, structure, links          │
│         ↓                                                       │
│  3. QUALITY GATES → SEO, Voice, AEO, Schema, Readability       │
│         ↓                                                       │
│  4. IMAGE CHECK  → Verify hero images exist and are optimized   │
│         ↓                                                       │
│  5. AGENT REVIEW → Expert agents review for improvements        │
│         ↓                                                       │
│  6. ENHANCEMENT  → Apply suggested improvements                 │
│         ↓                                                       │
│  7. FINAL CHECK  → Re-validate after enhancements               │
│         ↓                                                       │
│  8. PUBLISH      → Commit, push, and deploy                     │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

## Usage

```bash
# Publish specific post
/publish content/blog/my-post.mdx

# Publish all ready posts
/publish --all

# Dry run (no actual publish)
/publish content/blog/my-post.mdx --dry-run

# Skip agent review (faster)
/publish content/blog/my-post.mdx --skip-review

# Force publish (bypass gates)
/publish content/blog/my-post.mdx --force
```

## Quality Gates

Each gate must pass before publishing. Gates return: PASS, WARN, or FAIL.

### Gate 1: Structure Validation
- [ ] Valid frontmatter (title, description, date, category, tags)
- [ ] publishedAt date is today or in the past
- [ ] Description is 120-160 characters (SEO optimal)
- [ ] At least 3 tags
- [ ] Category matches allowed list

### Gate 2: SEO Check
- [ ] Title is 50-60 characters
- [ ] Meta description is compelling and keyword-rich
- [ ] H1 matches title (or close)
- [ ] H2s contain target keywords
- [ ] Internal links: minimum 3
- [ ] External links: minimum 1 (authority sources)
- [ ] Alt text on all images

### Gate 3: Voice & Brand
- [ ] Matches FrankX voice (technical yet accessible)
- [ ] No AI-sounding phrases ("I cannot", "As an AI", "delve")
- [ ] Active voice predominant
- [ ] First person used appropriately
- [ ] Consistent tone throughout

### Gate 4: AEO (AI Engine Optimization)
- [ ] TL;DR in first 100 words
- [ ] FAQ section with 5+ questions
- [ ] Clear definitions for technical terms
- [ ] Structured data ready (Article + FAQPage)
- [ ] datePublished and dateModified present

### Gate 5: Content Quality
- [ ] Flesch-Kincaid reading level: 8-12 (accessible but not dumbed down)
- [ ] Paragraph length: mostly under 4 sentences
- [ ] Code blocks have language specified
- [ ] No broken links (internal or external)
- [ ] No placeholder text ([TODO], [INSERT], etc.)

### Gate 6: Image Verification
- [ ] Hero image exists at specified path
- [ ] Image is optimized (WebP/AVIF, < 200KB)
- [ ] Image dimensions appropriate (1200x630 for social)
- [ ] Alt text provided
- [ ] No broken image references

## Agent Review Panel

Top posts (featured: true) are reviewed by specialized agents:

### Content Architect
- Structure and flow analysis
- Argument coherence check
- Missing section identification

### SEO Specialist
- Keyword optimization opportunities
- SERP feature targeting (featured snippets, PAA)
- Competitive positioning

### Brand Guardian
- Voice consistency
- FrankX personality alignment
- Transformation narrative check

### Technical Reviewer (for technical posts)
- Code accuracy verification
- Best practice alignment
- Security consideration check

## Enhancement Pipeline

Based on agent reviews, apply these enhancements:

1. **TL;DR Optimization**: Ensure it's citation-worthy
2. **FAQ Expansion**: Add questions based on "People Also Ask"
3. **Internal Link Injection**: Connect to related content
4. **Schema Enhancement**: Add structured data
5. **Social Snippet Generation**: Create share-ready excerpts

## Execution Flow

When `/publish [path]` is called:

### Step 1: Discovery
```
Find the target content file(s)
Validate file exists and is .mdx format
Parse frontmatter and content
```

### Step 2: Run Quality Gates
```
For each gate:
  - Run validation
  - Record result (PASS/WARN/FAIL)
  - If FAIL and not --force: stop and report
  - If WARN: continue but flag for review
```

### Step 3: Image Check
```
Extract image paths from content
Verify each image exists
Check optimization status
Generate missing images if nano-banana available
```

### Step 4: Agent Review (unless --skip-review)
```
For featured posts or --full-review:
  - Spawn Content Architect agent
  - Spawn SEO Specialist agent
  - Spawn Brand Guardian agent
  - If technical: spawn Technical Reviewer
  - Collect recommendations
```

### Step 5: Enhancement
```
Apply automated enhancements:
  - Inject missing internal links
  - Add schema markup
  - Optimize TL;DR if needed
  - Generate social snippets
```

### Step 6: Final Validation
```
Re-run all quality gates
Ensure no regressions
Generate publish report
```

### Step 7: Publish
```
If --dry-run: show what would happen
Else:
  - Stage changes: git add [files]
  - Commit with message: "publish: [title]"
  - Push to main branch
  - Trigger Vercel deployment
  - Log to session file
```

## Output Format

```
╔════════════════════════════════════════════════════════════════╗
║                    PUBLISH REPORT                              ║
╠════════════════════════════════════════════════════════════════╣
║ Post: The 7 Pillars of Production Agent Systems                ║
║ Path: content/blog/production-agent-patterns-7-pillars.mdx     ║
║ Date: 2026-01-21                                               ║
╠════════════════════════════════════════════════════════════════╣
║                    QUALITY GATES                               ║
╠════════════════════════════════════════════════════════════════╣
║ ✅ Structure Validation    PASS                                ║
║ ✅ SEO Check               PASS (score: 92/100)                ║
║ ✅ Voice & Brand           PASS                                ║
║ ✅ AEO Optimization        PASS                                ║
║ ⚠️  Content Quality        WARN (reading level: 13.2)          ║
║ ✅ Image Verification      PASS                                ║
╠════════════════════════════════════════════════════════════════╣
║                    AGENT REVIEWS                               ║
╠════════════════════════════════════════════════════════════════╣
║ Content Architect: Structure excellent, flow logical           ║
║ SEO Specialist: Add "production AI" to H2s                     ║
║ Brand Guardian: Voice consistent, transformation clear         ║
╠════════════════════════════════════════════════════════════════╣
║                    ENHANCEMENTS APPLIED                        ║
╠════════════════════════════════════════════════════════════════╣
║ ✅ Added 2 internal links                                      ║
║ ✅ Generated FAQPage schema                                    ║
║ ✅ Created social snippet                                      ║
╠════════════════════════════════════════════════════════════════╣
║                    PUBLISH STATUS                              ║
╠════════════════════════════════════════════════════════════════╣
║ ✅ Committed: abc123f                                          ║
║ ✅ Pushed to main                                              ║
║ ✅ Vercel deployment triggered                                 ║
║                                                                ║
║ 🔗 Preview: https://frankx.ai/blog/production-agent-patterns   ║
╚════════════════════════════════════════════════════════════════╝
```

## Configuration

Settings in `.claude/settings/publish.json`:

```json
{
  "quality_gates": {
    "structure": { "required": true },
    "seo": { "required": true, "min_score": 80 },
    "voice": { "required": true },
    "aeo": { "required": true },
    "content": { "required": false },
    "images": { "required": true }
  },
  "agent_review": {
    "enabled": true,
    "for_featured_only": true,
    "timeout_seconds": 120
  },
  "auto_enhance": {
    "internal_links": true,
    "schema": true,
    "social_snippets": true
  },
  "git": {
    "branch": "main",
    "auto_push": true,
    "commit_prefix": "publish:"
  }
}
```

## Error Handling

| Error | Action |
|-------|--------|
| File not found | Show similar files, ask for correction |
| Gate FAIL | Show specific failures, suggest fixes |
| Image missing | Offer to generate with nano-banana |
| Agent timeout | Continue without that review |
| Push failed | Show git error, suggest resolution |

## Integration

The publish command integrates with:
- `/factory` - Content creation pipeline
- `/factory-qa` - Quality assurance
- `/factory-seo` - SEO optimization
- `/polish-content` - Voice refinement
- `/generate-social` - Social content generation

## Quick Reference

```bash
# Standard publish
/publish content/blog/my-post.mdx

# Publish without agent review (faster)
/publish content/blog/my-post.mdx --skip-review

# See what would happen
/publish content/blog/my-post.mdx --dry-run

# Publish all staged content
/publish --all

# Force through gate failures
/publish content/blog/my-post.mdx --force
```

---

*Every piece of content that leaves this pipeline represents the FrankX brand. Make it count.*
