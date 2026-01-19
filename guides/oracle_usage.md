# Guide: Oracle Usage

**Agent**: Oracle (GPT-5.2 level reasoning)
**Purpose**: High-IQ architectural decisions and deep debugging.

## When to Consult
1.  **Complex Architecture**: "Should we use Microservices or Monolith?"
2.  **Tradeoffs**: "Postgres vs Mongo for this use case?"
3.  **Stuck**: After 2 failed attempts to fix a bug.
4.  **Security**: "Is this implementation secure?"

## How to Consult
1.  **Announce**: "Consulting Oracle for [reason]..."
2.  **Invoke**: Use `Task(subagent_type="oracle", prompt="...")`.
3.  **Prompt Engineering**:
    - Provide FULL context (file contents, error logs).
    - Ask specific questions.
    - Ask for "Reasoning" and "Final Recommendation".

## Anti-Patterns
- Using Oracle for syntax errors.
- Using Oracle for simple file edits.
- Asking Oracle without providing context.
