# Workflow: Agent Handoff Protocols

**Goal**: Zero-loss information transfer between agents.

## 1. Explore -> Implementer
**Input**: "Fix bug in Auth."
**Output (The Handoff Package)**:
- **Root Cause**: "Null pointer in `login.ts` line 45."
- **Context Files**: List of related files (`login.ts`, `auth_utils.ts`).
- **Constraints**: "Must keep existing error codes."

## 2. Implementer -> Verifier
**Input**: "Code changes applied."
**Output**:
- **Test Command**: `npm test -- filters`.
- **Expected Outcome**: "Green checkmark on test X."

## 3. Verifier -> GitHub Agent
**Input**: "Verification passed."
**Output**:
- **PR Title**: "fix(auth): handle null token in login".
- **Evidence**: Screenshot or Log dump.
