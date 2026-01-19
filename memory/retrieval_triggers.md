# Memory Retrieval Triggers

**Goal**: Proactive knowledge injection.

## 1. On Error
**Trigger**: Bash output contains "Error", "Exception", "Failed".
**Action**: `memory_search_nodes(query="ResolvedBug " + error_message)`
**Reason**: Have I fixed this before?

## 2. On Design Phase
**Trigger**: User asks "How should I structure X?"
**Action**: `memory_search_nodes(query="ProjectPattern")`
**Reason**: Follow existing architectural patterns.

## 3. On Conflict
**Trigger**: User contradicts a previous instruction.
**Action**: `memory_search_nodes(query="UserPreference")`
**Reason**: Resolve preference conflicts explicitly.
