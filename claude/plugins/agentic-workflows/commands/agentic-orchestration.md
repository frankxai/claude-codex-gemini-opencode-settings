# /agentic-orchestration - Multi-Agent Workflow Orchestration

**Purpose**: Coordinate multiple AI agents to complete complex tasks through intelligent task decomposition, parallel execution, and seamless handoffs.

---

## When to Use This Workflow

Activate `/agentic-orchestration` when you need to:
- Break down complex projects into agent-executable tasks
- Coordinate multiple departments (content, dev, design, marketing, business)
- Execute parallel workstreams with dependencies
- Create end-to-end automation pipelines

---

## Orchestration Framework

### 1. Task Decomposition

Before executing, decompose the user's request into atomic tasks:

```
USER REQUEST: "Launch my new product"

DECOMPOSITION:
+-- Content: Write product description, landing page copy, email sequence
+-- Dev: Build landing page, set up checkout, configure analytics
+-- Design: Create hero image, social graphics, email templates
+-- Marketing: SEO optimization, social media campaign, ad copy
+-- Business: Pricing strategy, invoice template, CRM setup
```

### 2. Dependency Mapping

Identify task dependencies to optimize execution order:

```yaml
execution_order:
  phase_1_parallel:
    - design.hero_image
    - content.product_description
    - business.pricing_strategy

  phase_2_after_phase_1:
    - dev.build_landing_page  # needs: design.hero_image, content.product_description
    - marketing.seo_audit     # needs: content.product_description

  phase_3_after_phase_2:
    - content.email_sequence  # needs: dev.build_landing_page (for links)
    - marketing.social_campaign

  phase_4_final:
    - dev.deploy_and_test
    - business.crm_setup
```

### 3. Agent Activation Pattern

Use the Task tool to spawn specialized agents:

```markdown
## Spawning Agents

For each task, spawn the appropriate agent:

1. **Content Tasks** - Content focus with brand voice
2. **Dev Tasks** - Architecture and implementation
3. **Design Tasks** - Visual specifications, image generation
4. **Marketing Tasks** - Research + SEO + social
5. **Business Tasks** - Operations and database work
```

---

## Execution Protocol

### Phase 1: Analysis (Always First)

```markdown
1. Parse user request for:
   - Primary objective
   - Implicit requirements
   - Success criteria
   - Timeline constraints

2. Identify required departments:
   [ ] Content - writing, copy, scripts
   [ ] Dev - code, deployment, infrastructure
   [ ] Design - visuals, branding, assets
   [ ] Marketing - SEO, social, analytics
   [ ] Business - operations, finance, CRM

3. Create task graph with dependencies
```

### Phase 2: Parallel Execution

```markdown
1. Launch independent tasks simultaneously using multiple Task tool calls
2. Track progress with TodoWrite
3. Collect outputs from each agent
4. Handle failures with retry or escalation
```

### Phase 3: Handoff & Integration

```markdown
1. Pass outputs between dependent tasks
2. Merge partial results
3. Quality check integrated output
4. Report status to user
```

### Phase 4: Completion & Verification

```markdown
1. Verify all tasks complete
2. Run integration tests (if applicable)
3. Generate summary report
4. Suggest next actions
```

---

## Example Orchestrations

### Example 1: Blog Post Pipeline

```markdown
User: "Write and publish a blog post about AI productivity"

Orchestration:
1. [Research] Explore agent: Find trending AI productivity topics
2. [Content] Write article with SEO optimization
3. [Design] Generate hero image
4. [Dev] Create MDX file, optimize images
5. [Marketing] Generate social media posts
6. [Publish] Deploy to website
```

### Example 2: Product Launch

```markdown
User: "Launch my new course"

Orchestration:
1. [Parallel]
   - Content: Course description, benefits, outline
   - Design: Hero images, testimonial cards
   - Business: Pricing tiers, payment setup
2. [Sequential]
   - Dev: Build landing page
   - Marketing: SEO optimization
3. [Final]
   - Content: Email announcement sequence
   - Marketing: Social media campaign
   - Dev: Deploy and test checkout
```

### Example 3: Client Onboarding

```markdown
User: "Onboard new client Acme Corp"

Orchestration:
1. [Business] Create CRM record, contract template
2. [Content] Welcome email, onboarding docs
3. [Dev] Set up project workspace, access permissions
4. [Design] Branded welcome package
5. [Marketing] Add to client showcase (if approved)
```

---

## Orchestration Commands

Use these sub-commands within the orchestration:

| Command | Purpose |
|---------|---------|
| `/orchestrate:plan` | Show task decomposition without executing |
| `/orchestrate:parallel` | Execute all independent tasks simultaneously |
| `/orchestrate:sequential` | Execute tasks one by one with handoffs |
| `/orchestrate:status` | Show current progress across all tasks |
| `/orchestrate:complete` | Finalize and generate completion report |

---

## Integration with Other Workflows

This workflow integrates with:
- `/agentic-creator-os` - Department-specific operations
- `/creator-intelligence-system` - Knowledge and memory management
- `/factory` - Content publishing pipeline
- `/research` - Deep research operations

---

## Best Practices

1. **Start Small**: Begin with 2-3 parallel tasks, scale up as needed
2. **Clear Handoffs**: Each agent output should be usable by the next
3. **Fail Fast**: Surface errors early, don't let them cascade
4. **Track Everything**: Use TodoWrite religiously
5. **User Checkpoints**: For major decisions, pause and confirm

---

## Output Format

After orchestration completes, provide:

```markdown
## Orchestration Complete

**Objective**: [Original request]
**Duration**: [Time taken]
**Tasks Completed**: [X/Y]

### Deliverables
- [List of created files/outputs]

### Summary
[Brief description of what was accomplished]

### Next Actions
- [ ] Suggested follow-up 1
- [ ] Suggested follow-up 2
```

---

*Built for creators who want AI teams, not just AI tools.*
