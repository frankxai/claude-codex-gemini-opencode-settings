---
description: Content calendar management - scheduling and tracking content production
thinking: false
---

# /content-calendar - Content Scheduling & Tracking

**Purpose**: View, update, and manage the weekly content calendar. Track what's planned, in progress, and published.

---

## Calendar File

The master calendar lives at: `docs/CONTENT_CALENDAR.md`

---

## Quick Commands

```markdown
/content-calendar              # View this week's calendar
/content-calendar week:next    # View next week
/content-calendar add "title"  # Add new content item
/content-calendar status       # Check what's done/pending
/content-calendar update       # Update an item's status
```

---

## Calendar Structure

```markdown
## Week of [DATE]

### Status Legend
- [ ] Planned
- [~] In Progress
- [x] Published
- [!] Blocked

### Monday - [Date]
| Time | Type | Title | Status | Notes |
|------|------|-------|--------|-------|
| AM | Blog | Title Here | [ ] | Draft needed |
| PM | Social | LinkedIn post | [ ] | Depends on blog |

### Tuesday - [Date]
...
```

---

## Workflow

### 1. Weekly Planning (Sunday/Monday)
- Review last week's performance
- Set this week's goals
- Populate calendar with specific items
- Assign priorities

### 2. Daily Execution
- Check calendar for today's items
- Create content using `/factory` or `/frankx-ai-blog`
- Update status as you complete

### 3. Weekly Review (Friday)
- Mark completed items
- Note what worked/didn't
- Carry over unfinished items
- Plan next week

---

## Integration

### From Strategy
`/content-strategy` generates calendar items

### To Production
Calendar items feed into:
- `/factory` - Full pipeline
- `/frankx-ai-blog` - Blog creation
- `/generate-social` - Social content

### Analytics
After publishing, track in:
- `/frankx-ai-analytics` - Performance data

---

## Status Updates

When updating an item:
```markdown
/content-calendar update "Blog Title" status:published
/content-calendar update "Twitter Thread" status:in_progress
/content-calendar update "Video Script" status:blocked reason:"waiting for assets"
```

---

*Calendar management ready. What do you need?*
