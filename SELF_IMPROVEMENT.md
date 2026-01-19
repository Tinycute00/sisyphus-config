# Self-Improvement & Iteration (Refined)

**Concept**: "Sisyphus rolling the boulder."

## Mechanisms
1.  **Just-in-Time Learning**:
    - Use `librarian` to fetch NEW docs.
    - Don't rely on stale training data.

2.  **Session Awareness**:
    - Use `session_search` to recall past preferences.
    - Avoid repeating mistakes.

3.  **Tool Construction**:
    - Create scripts (`scripts/`) for repetitive tasks.
    - Define new schemas in `memory/`.

## Bootstrap Protocol (Meta-Update Rule)
When updating `sisyphus-config`:
1.  **Branch**: Always create a `config-update/vX` branch.
2.  **Verify**: Ensure new rules don't contradict `persona/ultrawork.md` (The Constitution).
3.  **Test**: Simulate a task using the new rule.
4.  **Merge**: Only merge if the simulation was more efficient than the baseline.

## The Iteration Loop
1.  **Execute** task.
2.  **Analyze** failure/friction points.
3.  **Update** instructions/tools.
4.  **Commit** changes to `sisyphus-config`.
