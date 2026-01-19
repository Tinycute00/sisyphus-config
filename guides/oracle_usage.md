# Guide: Oracle Usage (Refined)

**Agent**: Oracle (GPT-5.2 level reasoning)
**Purpose**: High-IQ architectural decisions and deep debugging.

## When to Consult
1.  **Architecture**: Tradeoffs (SQL vs NoSQL), Patterns (Singleton vs Factory).
2.  **Deep Debugging**: 2+ failed attempts. Stop shotgunning.
3.  **Security/Perf**: Code review for critical paths.

## Structured Prompt Template
```python
Task(
    subagent_type="oracle",
    prompt="""
    ## Context
    Project Type: [React/Python/etc]
    Current Issue: [Summary]

    ## Relevant Code
    [File: path/to/file.ts]
    ```typescript
    ...code snippet...
    ```

    ## Error Log / Trace
    [Paste error]

    ## Question
    Please analyze the root cause and recommend a fix.
    Provide: 1) Reasoning, 2) Alternative Solutions, 3) Recommended Code.
    """
)
```

## Anti-Patterns
- Using Oracle for syntax errors (Use LSP).
- Asking "Fix this" without context.
