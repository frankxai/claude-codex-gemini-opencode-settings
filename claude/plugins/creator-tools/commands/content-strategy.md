# /content-strategy - Strategic Content Planning System

**Purpose**: Plan, review, and execute content strategy aligned with FrankX brand, audience needs, and business goals.

---

## Guided Strategy Workflow

When activated, follow this guided flow:

### Phase 1: Context Gathering

```markdown
Before planning, I need to understand:

1. **Current Focus**: What product/theme are we promoting?
2. **Audience Segment**: Who are we speaking to? (creators, students, founders, developers)
3. **Time Horizon**: This week? This month? This quarter?
4. **Goals**: Traffic? Leads? Authority? Engagement?
```

Ask the user these questions if not provided.

### Phase 2: Audit Current State

Read and analyze:
- `/mnt/c/Users/Frank/FrankX/docs/CONTENT_STRATEGY.md` - Current strategy file
- `/mnt/c/Users/Frank/FrankX/content/blog/` - Existing blog posts
- `/mnt/c/Users/Frank/FrankX/data/products.json` - Products to promote

Report:
- What content exists
- What gaps need filling
- What's performing (if analytics available)

### Phase 3: Strategic Planning

For the focus period, create:

```markdown
## Content Pillars
1. [Pillar 1] - Educational/Tutorial content
2. [Pillar 2] - Thought leadership/Vision content
3. [Pillar 3] - Product/Solution content
4. [Pillar 4] - Community/Story content

## Content Mix
- 40% Educational (how-to, tutorials)
- 30% Thought Leadership (vision, trends)
- 20% Product (features, use cases)
- 10% Community (stories, wins)
```

### Phase 4: Content Calendar

Generate weekly calendar:

```markdown
## Week of [DATE]

### Monday
- [ ] **Blog**: [Title] - [Pillar]
- [ ] **Social**: LinkedIn post promoting blog

### Tuesday
- [ ] **Social**: Twitter thread on [topic]

### Wednesday
- [ ] **Blog**: [Title] - [Pillar]
- [ ] **Email**: Newsletter with highlights

### Thursday
- [ ] **Social**: LinkedIn carousel
- [ ] **Video**: YouTube short

### Friday
- [ ] **Review**: Week performance
- [ ] **Plan**: Next week prep
```

### Phase 5: Output Files

Update these files:
1. `docs/CONTENT_STRATEGY.md` - Master strategy document
2. `docs/CONTENT_CALENDAR.md` - Weekly calendar
3. Create blog post drafts in `content/blog/`

---

## Quick Commands

```markdown
/content-strategy audit       # Audit current content
/content-strategy plan:week   # Plan this week's content
/content-strategy plan:month  # Plan this month's content
/content-strategy review      # Review performance and adjust
/content-strategy calendar    # View/update content calendar
```

---

## Integration Points

### Blog Publishing
After planning, use:
- `/factory` - Full publishing pipeline
- `/frankx-ai-blog` - Blog-specific workflow

### SEO Optimization
- `/factory-seo` - SEO audit and optimization
- `/factory-aeo` - AI Engine Optimization

### Social Distribution
- `/generate-social` - Generate social content from blog posts

---

## FrankX Brand Voice (Reference)

### Tone
- **Authoritative but approachable** - Oracle-level expertise made accessible
- **Transformational** - Every piece facilitates creative evolution
- **Authentic vulnerability** - Real musician-technologist journey
- **Beautiful simplicity** - Complex concepts made elegant

### Key Messages
- "AI tools should amplify your voice, not replace it"
- "Build AI teams, not tool collections"
- "Every creator deserves their own Jarvis"
- "From tech-overwhelmed to AI-empowered"

### Avoid
- Hype without substance
- Generic AI advice everyone gives
- Overly technical jargon without explanation
- Fear-based messaging

---

## Activation

When user runs `/content-strategy`:

1. Check if `docs/CONTENT_STRATEGY.md` exists
2. If not, create initial strategy document
3. Ask clarifying questions about current focus
4. Generate or update content plan
5. Output actionable calendar with specific blog topics
6. Offer to start creating content immediately

---

*Strategic content planning activated. What's our focus this period?*
