---
description: PDF Lead Magnet Factory - Create downloadable guides, ebooks, checklists
thinking: false
---

# Factory PDF Builder

**Part of**: `/factory` (Agentic Creator OS)
**Pipeline**: `pipelines/pdf_product.yaml`

## Create a PDF Lead Magnet

### Step 1: Create Artifact Directory
```bash
mkdir -p artifacts/[guide-name]/$(date +%Y-%m-%d)
```

### Step 2: Create content.md
Write your content following this structure:

```markdown
---
title: "Your Guide Title"
subtitle: "Compelling subtitle with benefit"
author: "Frank Villanueva"
---

# Introduction
[Hook + what they'll learn]

## Section 1: [Topic]
### Key Point
[Content]

## Section 2: [Topic]
[Content]

## Checklist / Action Items
- [ ] Item 1
- [ ] Item 2

## Conclusion
[Summary + next steps]
```

### Step 3: Generate Files
```bash
# Generate metadata
npm run meta:generate artifacts/[slug]/[date]

# Build PDF
npm run pdf:build artifacts/[slug]/[date]

# QA check
npm run qa:check artifacts/[slug]/[date]

# Publish (uploads + creates landing page)
npm run publish:artifact artifacts/[slug]/[date]
```

## Product Types

| Type | Pages | Price | Purpose |
|------|-------|-------|---------|
| Lead Magnet | 5-15 | Free | Email capture |
| Mini Guide | 15-30 | $0-27 | Problem solving |
| Ebook | 30-100 | $27-97 | Comprehensive |
| Checklist | 1-5 | Free | Quick reference |

## PDF Templates

Located in `scripts/pdf-templates/`:
- `lead-magnet.html` - Standard free guide
- `mini-guide.html` - Paid mini product (TODO)
- `ebook.html` - Full ebook (TODO)
- `checklist.html` - Quick reference (TODO)

## Output Structure

```
/artifacts/[slug]/[date]/
├── content.md       # Source content
├── meta.json        # Metadata
├── sources.md       # Citations
├── images/
│   └── cover.png    # PDF cover
├── pdf/
│   ├── preview.html # HTML preview
│   └── lead-magnet.pdf
└── landing_page.mdx # Landing page
```

## Published Locations

- PDF: `/public/downloads/[slug]/lead-magnet.pdf`
- Landing: `/products/[slug]` or `/downloads/[slug]`
- URL: `https://frankx.ai/downloads/[slug]/lead-magnet.pdf`

## Tips for Great PDFs

1. **Start with value** - Hook them in page 1
2. **Use visuals** - Diagrams, screenshots, frameworks
3. **Make it actionable** - Checklists, templates
4. **End with CTA** - Newsletter, next product
5. **Keep it scannable** - Headers, bullets, whitespace

## Related Commands

- `/factory` - Full publishing workflow
- `/factory-qa` - Quality checks
- `/frankx-ai-products` - Product page management

**What PDF do you want to create?**
