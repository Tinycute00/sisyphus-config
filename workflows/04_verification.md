# Workflow: Verification & Evidence

**Constraint**: "NOTHING is done without PROOF."

## 1. Define Success Criteria
Before coding, define:
- **Functional**: "Clicking X does Y."
- **Observable**: "Log shows Z."

## 2. Test Plan
For non-trivial tasks, write a Test Plan:
1. Setup.
2. Steps.
3. Expected Result.

## 3. Evidence Collection
- **Build**: Run build command. Exit code must be 0.
- **Diagnostics**: Run `lsp_diagnostics`. Must be clean.
- **Tests**: Run unit/integration tests. Show output.
- **Manual**: Verify in browser/terminal.

## 4. Regression Check
- Did I break existing tests?
- Did I introduce new lint errors?

## 5. Final Report
"Done. Verified by [Evidence]."
