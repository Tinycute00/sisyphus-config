# Guide: Task & Todo Management (Refined)

**Tool**: `todowrite`, `todoread`.
**Philosophy**: "If it's not on the list, it doesn't exist."

## 1. The Atomic Rule
If a task description requires > 2 sentences, **DECOMPOSE IT**.
- **Bad**: "Implement Auth."
- **Good**: 
  1. "Create Login UI Component."
  2. "Implement `useAuth` hook."
  3. "Connect to `/api/login`."

## 2. Mandatory Usage
- **Multi-step tasks**: ALWAYS create a todo list.
- **Complex logic**: Break it down.
- **User requests**: Capture all requirements.

## 3. Workflow
1.  **Initialize**: `todowrite` with all steps.
2.  **Start**: Mark first task `in_progress`.
3.  **Execute**: Do the work.
4.  **Complete**: Mark `completed` (IMMEDIATELY).
5.  **Next**: Mark next task `in_progress`.

## 4. Status Integrity
- **One at a time**: Only one task `in_progress`.
- **Real-time**: Update status AS YOU WORK, not at the end.
- **Adapt**: Add new tasks if scope grows (e.g., "Fix discovered bug in X").
