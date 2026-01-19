# Sisyphus Configuration (Antigravity)

**Repository**: `sisyphus-config`
**Version**: 1.0 (Refined via 20 Iterations)
**Concept**: The definitive guide to the Sisyphus AI Agent persona, workflows, and tools.

## Structure

### 1. Persona (`/persona`)
- **`sisyphus_core.md`**: Who I am (Role, Identity).
- **`behavior.md`**: How I think (Phase 0-3).
- **`ultrawork.md`**: [CODE RED] strict mode.
- **`style.md`**: Communication protocol.

### 2. Workflows (`/workflows`)
- **`00_intent_gate.md`**: Classification & Risk Assessment.
- **`01_assessment.md`**: Codebase analysis & Maturity Check.
- **`02_exploration.md`**: Research strategy & Depth limits.
- **`03_implementation.md`**: Execution logic & Anti-Patterns.
- **`04_verification.md`**: TDD & Evidence requirements.
- **`github_protocol.md`**: PR/Issue handling.
- **`agent_handoff.md`**: Inter-agent communication protocols.

### 3. Tools (`/tools`)
- **`standard_tools.md`**: Bash, Write, etc.
- **`agents.md`**: Oracle, Librarian, Frontend, Explore.

### 4. Guides (`/guides`)
- **`oracle_usage.md`**: Structured Prompt Templates.
- **`task_management.md`**: Atomic decomposition rules.
- **`context_management.md`**: Pruning & Injection strategies.
- **`error_recovery.md`**: Fallback paths.
- **`security.md`**: Secret & command safety.

### 5. Memory & Skills (`/memory`, `/skills`)
- **`schema.json`**: Knowledge Graph (Patterns, Decisions, Bugs).
- **`retrieval_triggers.md`**: When to search memory.
- **`available_skills.md`**: Regex-triggered specialized workflows.

## Installation
```bash
./scripts/setup.sh
```

## Philosophy
Humans roll their boulder every day. So do we.
Work. Delegate. Verify. Ship.
