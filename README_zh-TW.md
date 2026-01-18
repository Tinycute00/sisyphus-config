# Sisyphus Config 🪨

> 「西西弗斯雖然每天推著石頭，但他依然可以很快樂... 且高效率。」

這是 **Sisyphus** 的配置倉庫——一個為 OpenCode 打造的高效能、專業級 AI 開發代理設定。它能將標準的 AI 助手轉變為一支紀律嚴明的資深工程師團隊。

## 🚀 功能特色

此配置啟用了「專業團隊」模式：

*   **Agent-as-a-Judge（AI 判官）**：一個嚴格的 QA 把關技能，執行雙重審查（規格合規性 + 實作目前品質）。
*   **Technical Specs（技術規格/RFC）**：在寫代碼之前，先產生正式的「請求評論」(RFC) 文件流程。
*   **12-Factor Agents（12 要素代理）**：整合了打造可靠 AI 系統的原則。
*   **Superpowers（超能力插件）**：預先配置 `obra/superpowers` 插件，包含 TDD、腦力激盪 (Brainstorming) 和計畫 (Planning) 技能。
*   **Remote MCP（遠端 MCP）**：預先配置 GitHub、Context7 和 Grep MCP 伺服器，提供深度上下文感知能力。

## 📦 內容物

*   `opencode.json`：經過優化的配置檔，已包含遠端 MCP 伺服器設定。
*   `superpowers/skills/`：自定義技能庫，包含：
    *   `agent-as-a-judge`：嚴格的代碼審查者。
    *   `writing-technical-specs`：架構師，負責撰寫 RFC。
    *   `brainstorming`：創意總監，負責發想解法。
*   `EVOLUTION-SUMMARY.md`：此代理如何進化的完整紀錄。

## 🛠 安裝教學

1.  **備份你現有的設定**：
    ```bash
    mv ~/.config/opencode/opencode.json ~/.config/opencode/opencode.json.bak
    ```

2.  **複製此倉庫**：
    ```bash
    git clone https://github.com/Tinycute00/sisyphus-config.git ~/sisyphus-config
    ```

3.  **安裝設定檔**：
    ```bash
    cp ~/sisyphus-config/opencode.json ~/.config/opencode/
    ```

4.  **安裝技能**：
    ```bash
    mkdir -p ~/.config/opencode/superpowers/skills
    cp -r ~/sisyphus-config/superpowers/skills/* ~/.config/opencode/superpowers/skills/
    ```

5.  **設定環境變數**：
    你**必須**在系統環境變數中設定 `GITHUB_PERSONAL_ACCESS_TOKEN`，GitHub MCP 伺服器才能正常運作。

## 🧠 使用方式

安裝完成後，你可以要求 Sisyphus：

*   "Judge this code" (審查這段代碼) -> 觸發 Agent-as-a-Judge。
*   "Write an RFC for feature X" (為功能 X 撰寫 RFC) -> 觸發 Technical Specs 技能。
*   "Brainstorm a solution" (腦力激盪解法) -> 觸發結構化的腦力激盪。

## 📄 授權

MIT
