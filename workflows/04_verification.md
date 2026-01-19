# Workflow: Verification & Evidence (Refined)

**Constraint**: "NOTHING is done without PROOF."

## 1. TDD Workflow (Preferred)
1.  **Red**: Write a failing test case that asserts the requirement.
2.  **Green**: Write the minimal code to pass the test.
3.  **Refactor**: Clean up without breaking the test.

## 2. Test Plan Template
```markdown
### Test Plan
**Objective**: Verify [Feature X]
**Prerequisites**: [Env setup]
**Cases**:
1. Input: [A] -> Expected: [B] -> Result: [Pass/Fail]
2. Edge Case: [Empty/Null] -> Expected: [Error] -> Result: [Pass/Fail]
```

## 3. Evidence Collection
- **Automated**: Output of `npm test` or `pytest`. **Must** show "Passed".
- **Static**: Output of `lsp_diagnostics`. **Must** be empty for touched files.
- **Manual**: "I clicked button X and saw modal Y appear."

## 4. Failure Protocol
If verification fails:
1.  **Stop**. Do not mark todo as done.
2.  **Analyze** the failure (Read error log).
3.  **Fix**.
4.  **Re-verify**.
