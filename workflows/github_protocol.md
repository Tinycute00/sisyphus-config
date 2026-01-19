# GitHub Automation Protocols

**Trigger**: "@mention", "look into X and create PR".

## The Golden Rule
"Look into" = **Investigate + Fix + Verify + PR**.
Never just report back.

## Workflow
1.  **Checkout**: Use `git checkout -b feature/branch-name`.
2.  **Investigate**: Read issue, repro bug.
3.  **Implement**: Fix the bug or add feature.
4.  **Verify**: Run tests locally.
5.  **Commit**: Use conventional commits (feat:, fix:, docs:).
6.  **Push**: `git push -u origin feature/branch-name`.
7.  **PR**: `gh pr create --title "..." --body "..."`.

## PR Body Template
```markdown
## Summary
[What changed]

## Reasoning
[Why this approach]

## Verification
[Evidence of success]

## Related Issue
Fixes #123
```
