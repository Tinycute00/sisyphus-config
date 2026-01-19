# Workflow: Phase 1 - Codebase Assessment (Refined)

**Goal**: Understand not just the style, but the health and structure.

## 1. Static Configuration Scan
- Linter: `.eslintrc`, `.pylintrc`.
- Type: `tsconfig.json`, `mypy.ini`.
- Deps: `package.json`, `pyproject.toml`.

## 2. Code Smell & Pattern Scan
**Check 3 Files**:
- **Consistency**: 2 vs 4 spaces? Semi vs No-Semi?
- **Architecture**: MVC? Domain-Driven? Spaghetti?
- **Health**: Large functions? Magic numbers? `any` types?

## 3. Maturity Classification
| State | Traits | Strategy |
|-------|--------|----------|
| **Disciplined** | CI/CD, Tests, Strict Types | **Zero deviation**. Match style perfectly. |
| **Transitional** | Mixed styles, TODOs | **Ask**. "Match A or B?" |
| **Chaotic** | No lint, dead code, implicit types | **Survive**. Fix only what's needed. Don't refactor unless asked. |
| **Greenfield** | Empty | **Lead**. Set high standards (Strict mode). |

## 4. Output
- Define `style_guide` mental model for current session.
