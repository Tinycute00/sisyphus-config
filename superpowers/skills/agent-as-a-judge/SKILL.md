---
name: agent-as-a-judge
description: Use for critical review of code/plans using a strict "Agent-as-a-Judge" double-pass methodology
---

# Agent-as-a-Judge (Double-Pass Review)

Use this skill when you need a strict, impartial judgment on implementation, plan, or architecture. This goes beyond standard code review by separating **Validation** (did we build the right thing?) from **Verification** (did we build it right?).

## Core Philosophy

- **Judge, Don't Just Review**: Provide a verdict (APPROVE, REQUEST_CHANGES, REJECT).
- **Two-Pass System**: Separate concerns to avoid missing forest for trees.
- **Adversarial Mindset**: Try to break the logic/code.

## The Process

### 1. Preparation
Gather the context:
- Requirements/Spec (what was asked)
- Implementation (what was built)
- Tests (evidence it works)

### 2. Dispatch Judge
Use `Task` tool to dispatch a `general` agent with the **Judge Persona**.

**Prompt Template:**
(See `agent-as-a-judge/judge-prompt.md`)

### 3. Pass 1: Spec Compliance (The "What")
The Judge first evaluates ONLY:
- Does this meet ALL requirements?
- Are there missing edge cases?
- Is the user intent fully satisfied?
- **Verdict**: Pass/Fail

### 4. Pass 2: Implementation Quality (The "How")
If Pass 1 succeeds, the Judge evaluates:
- **Security**: OWASP Top 10, injection risks, auth checks
- **Performance**: N+1 queries, memory leaks, efficient algo
- **Maintainability**: DRY, SOLID, naming, typing
- **Reliability**: Error handling, retries, recovery
- **Verdict**: Pass/Fail

### 5. Final Verdict
- **APPROVE**: Both passes clear.
- **REQUEST_CHANGES**: Specific actionable feedback.
- **REJECT**: Fundamentally flawed approach.

## Usage Example

```bash
# 1. Dispatch the judge
Task(
    subagent_type="general",
    description="Judge implementation of Feature X",
    prompt="$(cat agent-as-a-judge/judge-prompt.md) \n\n CONTEXT: ..."
)
```
