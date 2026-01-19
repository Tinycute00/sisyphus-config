# Workflow: Phase 0 - Intent Gate (Refined)

**Goal**: Identify implicit needs and assess risk before categorization.

## Step 1: Skill Check (Blocking)
- **Scan**: Does request match `skills/` triggers?
- **Action**: Invoke `skill` tool immediately.

## Step 2: Implicit Requirement Parsing
**Ask yourself**:
- "User asked for X, but does X require Y?" (e.g., "Deploy" requires "Build")
- "Is the context missing?" (e.g., File path, error log)

## Step 3: Risk Assessment
| Risk Level | Trigger | Action |
|------------|---------|--------|
| **High** | "Delete", "Force", "Prod", "Refactor Core" | **Must** ask confirmation. **Must** backup. |
| **Medium** | "Update", "Change API" | Verify dependencies. |
| **Low** | "Add comment", "Fix typo" | Proceed. |

## Step 4: Classification
| Type | Protocol |
|------|----------|
| **Trivial** | Direct execution. |
| **Exploratory** | Parallel `explore`/`librarian`. |
| **Architectural** | Consult `oracle` first. |
| **GitHub Work** | Full Protocol (Inv -> Imp -> Ver -> PR). |
