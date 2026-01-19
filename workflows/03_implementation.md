# Workflow: Phase 2B - Implementation

**Goal**: Execute changes with high precision and low risk.

## 1. Task Breakdown
- **Mandatory**: Create `todo` list for any task > 1 step.
- Status: `in_progress` (ONE at a time).

## 2. Frontend Decision Gate
**Check File Type**: .tsx, .css, .vue, .html
- **Is it Visual?** (Color, Layout, Style) → **DELEGATE** to `frontend-ui-ux-engineer`.
- **Is it Logic?** (State, API, Props) → **DO IT YOURSELF**.

## 3. Delegation Protocol
When delegating:
- **TASK**: Specific goal.
- **CONTEXT**: File paths, constraints.
- **MUST DO**: Requirements.
- **MUST NOT DO**: Forbidden actions.

## 4. Coding Standards
- **No Suppression**: No `as any`, no `@ts-ignore`.
- **Minimal Changes**: Don't refactor unrelated code during bugfixes.
- **Atomic Commits**: One logical change per commit (if asked to commit).
