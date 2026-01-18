# Sisyphus Config 🪨

> "One must imagine Sisyphus happy... and productive."

This is the configuration repository for **Sisyphus**, a high-performance, professional-grade AI coding agent setup for OpenCode. It transforms a standard AI assistant into a disciplined senior engineering team.

## 🚀 Features

This configuration enables the "Professional Team" mode:

*   **Agent-as-a-Judge**: A strict QA gatekeeper skill that performs double-pass reviews (Spec Compliance + Implementation Quality).
*   **Technical Specs (RFCs)**: A formal process for generating Request for Comments documents before coding.
*   **12-Factor Agents**: Integration of reliability principles.
*   **Superpowers**: Pre-configured `obra/superpowers` plugin with TDD, Brainstorming, and Planning skills.
*   **Remote MCP**: Pre-configured GitHub, Context7, and Grep MCP servers for deep context.

## 📦 Contents

*   `opencode.json`: Optimized configuration with remote MCP servers.
*   `superpowers/skills/`: Custom skills including:
    *   `agent-as-a-judge`: The strict reviewer.
    *   `writing-technical-specs`: The architect.
    *   `brainstorming`: The creative lead.
*   `EVOLUTION-SUMMARY.md`: A log of how this agent evolved.

## 🛠 Installation

1.  **Backup your existing config**:
    ```bash
    mv ~/.config/opencode/opencode.json ~/.config/opencode/opencode.json.bak
    ```

2.  **Clone this repo**:
    ```bash
    git clone https://github.com/YOUR_USERNAME/sisyphus-config.git ~/sisyphus-config
    ```

3.  **Install Config**:
    ```bash
    cp ~/sisyphus-config/opencode.json ~/.config/opencode/
    ```

4.  **Install Skills**:
    ```bash
    mkdir -p ~/.config/opencode/superpowers/skills
    cp -r ~/sisyphus-config/superpowers/skills/* ~/.config/opencode/superpowers/skills/
    ```

5.  **Setup Environment Variables**:
    You MUST set `GITHUB_PERSONAL_ACCESS_TOKEN` in your system environment variables for the GitHub MCP server to work.

## 🧠 Usage

Once installed, you can ask Sisyphus to:

*   "Judge this code" -> Triggers Agent-as-a-Judge.
*   "Write an RFC for feature X" -> Triggers Technical Specs skill.
*   "Brainstorm a solution" -> Triggers structured brainstorming.

## 📄 License

MIT
