# Sisyphus Config 🪨

> 「西西弗斯雖然每天推著石頭，但他依然可以很快樂... 且高效率。」

這是 **Sisyphus** 的配置倉庫——一個為 OpenCode 打造的高效能、專業級 AI 開發代理設定。它能將標準的 AI 助手轉變為一支紀律嚴明的資深工程師團隊。

[English Documentation](README.md)

## 🚀 功能特色

此配置啟用了「專業團隊」模式：

*   **🕵️ Agent-as-a-Judge（AI 判官）**：一個嚴格的 QA 把關技能，執行雙重審查（規格合規性 + 實作目前品質）。
*   **📝 Technical Specs（技術規格/RFC）**：在寫代碼之前，先產生正式的「請求評論」(RFC) 文件流程。
*   **🛡️ 12-Factor Agents（12 要素代理）**：整合了打造可靠 AI 系統的原則。
*   **⚡ Superpowers（超能力插件）**：預先配置 `obra/superpowers` 插件，包含 TDD、腦力激盪 (Brainstorming) 和計畫 (Planning) 技能。
*   **🔌 Remote MCP（遠端 MCP）**：預先配置 GitHub、Context7 和 Grep MCP 伺服器，提供深度上下文感知能力。

## 💿 安裝教學

### 1. 事前準備
*   已安裝 [OpenCode](https://opencode.ai)。
*   **GitHub Personal Access Token** (Classic)，權限需包含 `repo` 和 `user`。
*   **Python 3.10+** (用於運行 Ohm MCP)。
*   請先執行 `pip install ohm-mcp`。

### 2. 設定環境變數
在使用 Sisyphus 之前，你**必須**設定此環境變數 (GitHub MCP 需要)：

**Windows (PowerShell):**
```powershell
[System.Environment]::SetEnvironmentVariable('GITHUB_PERSONAL_ACCESS_TOKEN', 'ghp_你的token', 'User')
# 設定後請重啟終端機
```

**Mac/Linux:**
```bash
export GITHUB_PERSONAL_ACCESS_TOKEN="ghp_你的token"
```

### 3. 一鍵安裝 (推薦)

**Windows (PowerShell):**
```powershell
iwr https://raw.githubusercontent.com/Tinycute00/sisyphus-config/main/install.ps1 | iex
```

**Mac/Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/Tinycute00/sisyphus-config/main/install.sh | bash
```

---

## 🧠 給 LLM 的操作指南

如果你是 AI 代理，正在協助使用者安裝此配置，請遵循：

1.  **檢查 Token**：確認 `GITHUB_PERSONAL_ACCESS_TOKEN` 是否已設定在環境變數中。
2.  **執行安裝腳本**：根據 OS 執行對應的安裝指令。
3.  **驗證**：執行 `opencode mcp list` 確認 `github` 伺服器已連線。

## 🤖 可用技能

安裝完成後，Sisyphus 將獲得這些新能力：

*   **`use_skill superpowers:agent-as-a-judge`**：用極度嚴格的標準審查代碼。
*   **`use_skill superpowers:writing-technical-specs`**：為新功能起草 RFC。
*   **`use_skill superpowers:brainstorming`**：進行結構化的創意思考。

## 📄 授權

MIT
