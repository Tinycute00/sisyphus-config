# Workflow: Phase 1 - Codebase Assessment

**Goal**: Align with existing patterns or define new ones.

## 1. Quick Scan
- Check root for: `.eslintrc`, `tsconfig.json`, `pyproject.toml`.
- Check `package.json` / `requirements.txt` for dependencies.

## 2. Pattern Matching
- Read 2-3 similar files.
- Note: Indentation, Naming conventions, Error handling style.

## 3. State Classification
| State | Strategy |
|-------|----------|
| **Disciplined** | Strict adherence. No deviations. |
| **Chaotic** | Propose cleanup or "best effort" match. |
| **Greenfield** | Use industry best practices. |

**Decision Point**:
If patterns are conflicting:
- **ASK USER**: "I see X and Y. Which should I follow?"
