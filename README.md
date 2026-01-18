# Sisyphus Config 🪨

> "One must imagine Sisyphus happy... and productive."

**Sisyphus Config** turns your OpenCode agent into a **Professional Engineering Team**. It integrates strict QA processes, formal RFC specs, and 12-factor reliability principles directly into your workflow.

![License](https://img.shields.io/badge/license-MIT-blue)
![Platform](https://img.shields.io/badge/platform-OpenCode-green)

[中文說明 (Chinese)](README_zh-TW.md)

## 🚀 Features

*   **🕵️ Agent-as-a-Judge**: A strict QA gatekeeper that performs double-pass reviews (Spec Compliance + Code Quality).
*   **📝 Technical Specs (RFCs)**: Forces a formal "Request for Comments" process before implementation.
*   **🛡️ 12-Factor Agents**: Best practices for building reliable AI systems.
*   **⚡ Superpowers**: Pre-loaded skills for TDD, Brainstorming, and Planning.
*   **🔌 Remote MCP**: Pre-configured GitHub, Context7, and Grep MCP servers.

## 💿 Installation

### 1. Prerequisites
*   [OpenCode](https://opencode.ai) installed.
*   **GitHub Personal Access Token** (Classic) with `repo` and `user` scopes.

### 2. Set Environment Variable
You **MUST** set this before using Sisyphus (for GitHub MCP):

**Windows (PowerShell):**
```powershell
[System.Environment]::SetEnvironmentVariable('GITHUB_PERSONAL_ACCESS_TOKEN', 'ghp_your_token_here', 'User')
# Restart your terminal after this
```

**Mac/Linux:**
```bash
export GITHUB_PERSONAL_ACCESS_TOKEN="ghp_your_token_here"
```

### 3. One-Click Install

**Windows (PowerShell):**
```powershell
iwr https://raw.githubusercontent.com/Tinycute00/sisyphus-config/main/install.ps1 | iex
```

**Mac/Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/Tinycute00/sisyphus-config/main/install.sh | bash
```

---

## 🧠 Usage Guide for LLMs

If you are an AI agent installing this for a user, follow these instructions:

1.  **Check for Token**: Verify if `GITHUB_PERSONAL_ACCESS_TOKEN` is set in the environment.
2.  **Execute Installer**: Run the appropriate install script for the OS.
3.  **Verify**: Run `opencode mcp list` to confirm `github` server is connected.

## 🤖 Available Skills

Once installed, Sisyphus has these new capabilities:

*   **`use_skill superpowers:agent-as-a-judge`**: Review code with extreme scrutiny.
*   **`use_skill superpowers:writing-technical-specs`**: Draft an RFC for a new feature.
*   **`use_skill superpowers:brainstorming`**: Discuss ideas structurally.

## 📄 License

MIT
