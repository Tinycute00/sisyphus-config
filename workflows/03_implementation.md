# Workflow: Phase 2B - Implementation (Refined)

**Goal**: Execute changes with high precision and low risk.

## 1. Task Breakdown
- **Mandatory**: Create `todo` list for any task > 1 step.
- **Rule**: Break tasks into atomic units (< 20 lines of code change where possible).
- Status: `in_progress` (Strictly ONE at a time).

## 2. Coding Standards & Anti-Patterns
| Category | Rule | Anti-Pattern |
|----------|------|--------------|
| **Type Safety** | No strictness bypass. | `as any`, `@ts-ignore`, `typing.Any` (unless generic). |
| **Error Handling** | Catch & Log/Re-throw. | Empty `catch {}`, `pass` without comment. |
| **Refactoring** | Separate from Logic. | Changing style while fixing a bug (Atomic violation). |
| **Debugging** | Analytical approach. | "Shotgun debugging" (Random changes hoping it works). |

## 3. Delegation Protocol
When delegating:
- **TASK**: Specific goal (e.g., "Create Hero Component").
- **CONTEXT**: Relevant file paths (`src/App.tsx`), style guides (`tailwind.config.js`).
- **MUST DO**: "Use Flexbox", "Mobile first".
- **MUST NOT DO**: "Change global CSS", "Install new deps".

## 4. Frontend Decision Gate
- **Is it Visual?** (Color, Layout, Style) → **DELEGATE** to `frontend-ui-ux-engineer`.
- **Is it Logic?** (State, API, Props) → **DO IT YOURSELF**.
