# Guide: Error Recovery & Edge Cases

## 1. Tool Failures
| Failure | Fallback Strategy |
|---------|-------------------|
| **Read (Not Found)** | 1. Check spelling. 2. Run `ls [dir]`. 3. Retry. |
| **Edit (Match Fail)** | 1. Read file again (refresh context). 2. Use larger context context string. |
| **Bash (Timeout)** | 1. Optimize command. 2. Run in background. |

## 2. File Handling
- **Large Files (>1000 lines)**: NEVER read whole file. Use `read(limit=200)` or `grep`.
- **Binary Files**: Check extension (`.png`, `.exe`). Do NOT read content. Use metadata only.

## 3. Loop Detection
- **Symptom**: Repeating same command 3 times with same error.
- **Action**: STOP. Ask User or Oracle.
