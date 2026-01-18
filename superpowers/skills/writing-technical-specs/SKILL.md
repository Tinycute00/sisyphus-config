---
name: writing-technical-specs
description: Use when brainstorming is complete but before implementation plan. Generates a formal RFC/Design Doc.
---

# Writing Technical Specs (RFCs)

Transform agreed-upon ideas into a formal Request for Comments (RFC) document. This serves as the "Contract" for what will be built.

## When to Use
- After `brainstorming` or `design` phase
- Before `writing-plans` (implementation planning)
- For any feature taking > 1 day or involving architectural changes

## The RFC Template
Create a file at `docs/rfc/NNN-feature-name.md` (increment number):

```markdown
# RFC 001: [Feature Name]

| Status        | (Draft/Review/Approved) |
|:--------------|:------------------------|
| **Author**    | [Agent Name]            |
| **Date**      | YYYY-MM-DD              |
| **Reviewers** | [User]                  |

## 1. Summary
Brief explanation of the feature.

## 2. Motivation
Why are we doing this? What problem does it solve?

## 3. Detailed Design
Technical specification.
- API Endpoints (inputs/outputs)
- Data Models (schema changes)
- Components / Modules
- User Flow

## 4. Alternatives Considered
Option A vs Option B. Why did we choose this one?

## 5. Trade-offs
What are we sacrificing? (Complexity vs Speed, Storage vs CPU, etc.)

## 6. Security Implications
- Auth/Permissions
- Data Privacy
- Input Validation

## 7. Implementation Plan
High-level phases (not detailed tasks yet).
1. Setup
2. Core Logic
3. UI Integration
4. Testing
```

## The Process

1. **Drafting**: Use the context from brainstorming to fill the template.
2. **Review**: Present the RFC to the user.
   - "Does this accurately reflect our design?"
   - "Are there any security concerns missed?"
3. **Refining**: Update based on feedback.
4. **Approval**: Mark status as `Approved` and commit to git.

## Next Steps
Once Approved:
- Proceed to `superpowers:writing-plans` to break down the RFC into atomic tasks.
