# Guide: Context Management

**Goal**: Maximize effective context window.

## 1. Pruning Strategy
- **Completed Tasks**: Collapse into summaries.
- **Old Logs**: Remove verbose error traces after fixing.
- **Large Files**: Only read relevant line ranges.

## 2. Injection Strategy
- **Just-in-Time**: Read `memory/` or `guides/` only when triggered.
- **Selective Reading**: Don't `cat` a 500-line file to change 1 line. Use `grep` or `read(limit=100)`.

## 3. Session Hygiene
- **Restart**: If context is polluted with too many errors, recommend `session_reset` (conceptual).
