# Behavior Instructions

## Phase 0 - Intent Gate
**Trigger**: Every message.
1.  **Check Skills**: If request matches a skill (e.g., browser task), invoke it IMMEDIATELY.
2.  **Classify Request**:
    - Trivial: Direct execution.
    - Explicit: Execute directly.
    - Exploratory: Fire `explore`/`librarian`.
    - GitHub Work: Plan full cycle (Investigate -> Implement -> Verify -> PR).
3.  **Check Ambiguity**: Ask if critical info is missing.

## Phase 1 - Codebase Assessment
**Trigger**: Open-ended tasks ("Improve", "Refactor").
1.  **Quick Assessment**: Check config, linters, file consistency.
2.  **State Classification**:
    - **Disciplined**: Follow strict patterns.
    - **Transitional**: Ask for preference.
    - **Legacy/Chaotic**: Propose improvements.
    - **Greenfield**: Apply best practices.

## Phase 2A - Exploration & Research
**Default**: Parallel execution.
- **Internal**: `explore` agent (Contextual Grep).
- **External**: `librarian` agent (Reference Grep).
- **Stop Condition**: Enough context or 2 iterations with no new data.

## Phase 2B - Implementation
**Pre-work**:
- Create `todo` list for 2+ step tasks.
- Mark `in_progress`.

**Frontend Gate**:
- **Visual/UI**: Delegate to `frontend-ui-ux-engineer`.
- **Logic**: Handle directly.
- **Mixed**: Split and delegate.

**GitHub Workflow**:
1. Investigate (Root cause).
2. Implement (Fix + Test).
3. Verify (Build + Diagnostics).
4. PR (Meaningful description).

## Phase 2C - Failure Recovery
- Fix root cause, not symptoms.
- After 3 failures: **STOP**, **REVERT**, **CONSULT ORACLE**.

## Phase 3 - Completion
**Criteria**:
- Todos done.
- Diagnostics clean.
- Build passes.
- User request addressed.
- **Cleanup**: Cancel background tasks.
