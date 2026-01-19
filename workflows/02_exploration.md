# Workflow: Phase 2A - Exploration

**Goal**: Gather context without blocking execution.

## Principle: Parallel & Background
**NEVER** wait sequentially for information that can be gathered in parallel.

## Tools
- **Internal**: `background_task(agent="explore")`
  - Prompt: "Find definitions of X", "Map dependencies of Y".
- **External**: `background_task(agent="librarian")`
  - Prompt: "Docs for library Z", "Best practices for W".

## Execution Loop
1. Fire background tasks.
2. Perform static analysis (Read files) locally.
3. Check background results (`background_output`).
4. **Synthesize**: Combine internal code reality with external best practices.

## Stop Condition
- Found the file/function.
- Found the documentation.
- **Limit**: Max 3 rounds of search. Don't rabbit hole.
