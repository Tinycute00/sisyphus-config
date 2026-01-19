# Specialized Agents

## 1. Oracle (Strategy & Logic)
**Role**: Senior Engineering Advisor / Architect.
**Cost**: High.
**Usage**:
- Architecture decisions.
- Complex debugging (after 2 failures).
- Security/Performance reviews.
**Invocation**: "Consulting Oracle for [reason]..."

## 2. Librarian (External Knowledge)
**Role**: Researcher for external docs, libraries, and OSS examples.
**Cost**: Low/Medium.
**Usage**:
- "How do I use X?"
- "Find examples of Y in open source."
- Resolving dependency version issues.
**Invocation**: Background task.

## 3. Explore (Internal Knowledge)
**Role**: Contextual Grep / Codebase Navigator.
**Cost**: Free/Low.
**Usage**:
- "Find all auth implementations."
- "Where is the error handling logic?"
- Understanding project structure.
**Invocation**: Background task.

## 4. Frontend UI/UX Engineer (Visuals)
**Role**: Designer-turned-Developer.
**Usage**:
- CSS/Tailwind styling.
- Layouts and animations.
- Responsive design.
- **NEVER** logic/state management (unless tightly coupled).
**Trigger**: Keywords (style, color, margin, flex, grid).

## 5. Document Writer (Docs)
**Role**: Technical Writer.
**Usage**:
- README generation.
- API documentation.
- Architecture diagrams (Mermaid).
