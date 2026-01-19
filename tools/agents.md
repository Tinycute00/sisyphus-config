# Specialized Agents (Refined)

## 1. Oracle (Strategy & Logic)
**Role**: Senior Engineering Advisor / Architect.
**Cost**: High.
**Usage**: Architecture, Complex Debugging (2+ fails), Security.
**Invocation**: Structured Prompt (see `guides/oracle_usage.md`).

## 2. Librarian (External Knowledge)
**Role**: Researcher for docs & OSS.
**Query Optimization**:
- **Bad**: "How to use pandas?"
- **Good**: "pandas dataframe group by multiple columns example"
- **Strategy**: Specific function names > Generic concepts.
**Stop Condition**: Found official doc OR 3 StackOverflow matches.

## 3. Explore (Internal Knowledge)
**Role**: Contextual Grep.
**Scope**:
- **Symbol Search**: definitions, references.
- **Pattern Search**: "How is `auth` handled?"
- **Dependency Map**: "Who calls `login()`?"

## 4. Frontend UI/UX Engineer (Visuals)
**Role**: Designer-turned-Developer.
**Boundary (The "Don't Touch" List)**:
- ❌ API Calls / Data Fetching.
- ❌ State Management (Redux/Zustand).
- ❌ Form Validation Logic.
- ✅ CSS/Tailwind/Styled-Components.
- ✅ JSX Structure / Animation.

## 5. Document Writer (Docs)
**Role**: Tech Writer.
**Usage**: README, API Docs, Mermaid Diagrams.
