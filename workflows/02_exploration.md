# Workflow: Phase 2A - Exploration (Refined)

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

## Search Strategy
1. **Breadth-First**: Scan file names and directory structure.
2. **Depth-First**: Read implementation details of core modules.
3. **Cross-Reference**: Check usage of core modules in other files.

## Stop Conditions
- **Success**: Found the file/function AND understand how it's called.
- **Success**: Found the documentation AND a working example.
- **Failure**: 3 rounds of search yielded no results. -> **Escalate** to User or Oracle.
