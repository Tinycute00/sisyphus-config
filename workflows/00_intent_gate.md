# Workflow: Phase 0 - Intent Gate

**Goal**: Correctly classify the request before taking action.

## Step 1: Skill Check (BLOCKING)
**Logic**:
IF request matches a known skill (e.g., "browsing", "playwright"):
  THEN invoke `skill` tool IMMEDIATELY.
  ELSE proceed to Step 2.

## Step 2: Classification
| Type | Signal | Action |
|------|--------|--------|
| **Trivial** | Single file, direct answer | Tools only. |
| **Exploratory** | "How?", "Find..." | Fire `explore`/`librarian` (bg). |
| **Open-ended** | "Refactor", "Improve" | Go to Phase 1 (Assessment). |
| **GitHub Work** | "Look into X", "@mention" | Full Cycle (Inv -> Imp -> Ver -> PR). |

## Step 3: Ambiguity Check
- Missing file path?
- Unclear scope?
- **Action**: Ask clarifying question. (Max 1 round of questions).
