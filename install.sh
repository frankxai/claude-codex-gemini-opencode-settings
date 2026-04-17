#!/bin/bash
# FrankX AI Settings Installer
# Supports: claude, opencode, gemini, codex, cline, all
# Version: 2.0.0

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TOOL="${1:-all}"
VERSION="2.0.0"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_header() {
    echo ""
    echo -e "${BLUE}╔═══════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║     FrankX AI Settings Installer v${VERSION}                   ║${NC}"
    echo -e "${BLUE}║     Claude + Codex + Gemini + OpenCode + Cline            ║${NC}"
    echo -e "${BLUE}╚═══════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

install_claude() {
    echo -e "${YELLOW}📦 Installing Claude Code settings...${NC}"

    CLAUDE_DIR="$HOME/.claude"
    mkdir -p "$CLAUDE_DIR/plugins"

    # Link plugins from claude/plugins directory
    if [ -d "$SCRIPT_DIR/claude/plugins" ]; then
        for plugin in "$SCRIPT_DIR/claude/plugins/"*/; do
            plugin_name=$(basename "$plugin")
            if [ -d "$plugin" ]; then
                # Remove existing symlink or directory
                rm -rf "$CLAUDE_DIR/plugins/$plugin_name" 2>/dev/null || true
                ln -sf "$plugin" "$CLAUDE_DIR/plugins/$plugin_name"
                echo -e "   ${GREEN}✓${NC} Linked plugin: $plugin_name"
            fi
        done
    fi

    # Count installed plugins
    plugin_count=$(find "$CLAUDE_DIR/plugins" -maxdepth 1 -type l 2>/dev/null | wc -l)
    echo -e "   ${GREEN}✓${NC} Installed $plugin_count plugins"

    # List available commands
    echo ""
    echo -e "   ${BLUE}Available commands:${NC}"
    echo "   - /factory, /factory-seo, /factory-aeo, /factory-qa, /factory-pdf"
    echo "   - /research, /research-visual"
    echo "   - /agentic-creator-os, /creator-intelligence-system, /agentic-orchestration"
    echo "   - /content-calendar, /log-session"
    echo "   - /oracle-work, /prototype"

    echo -e "${GREEN}✅ Claude Code setup complete!${NC}"
}

install_opencode() {
    echo -e "${YELLOW}📦 Installing OpenCode settings...${NC}"

    OPENCODE_DIR=".opencode"
    mkdir -p "$OPENCODE_DIR/agents"

    # Copy oh-my-opencode.json
    if [ -f "$SCRIPT_DIR/opencode/oh-my-opencode.json" ]; then
        cp "$SCRIPT_DIR/opencode/oh-my-opencode.json" "$OPENCODE_DIR/"
        echo -e "   ${GREEN}✓${NC} Copied oh-my-opencode.json"
    fi

    # Copy agents
    if [ -d "$SCRIPT_DIR/opencode/agents" ]; then
        cp -r "$SCRIPT_DIR/opencode/agents/"* "$OPENCODE_DIR/agents/" 2>/dev/null || true
        agent_count=$(ls -1 "$SCRIPT_DIR/opencode/agents/"*.md 2>/dev/null | wc -l)
        echo -e "   ${GREEN}✓${NC} Copied $agent_count agent configs"
    fi

    # List available agents
    echo ""
    echo -e "   ${BLUE}Available agents:${NC}"
    echo "   - workshop-builder: Technical workshop creation"
    echo "   - content-strategist: Content planning & calendars"
    echo "   - code-architect: Software architecture design"
    echo "   - seo-specialist: SEO & AEO optimization"

    echo -e "${GREEN}✅ OpenCode setup complete!${NC}"
}

install_gemini() {
    echo -e "${YELLOW}📦 Installing Gemini CLI settings...${NC}"

    GEMINI_DIR=".gemini"
    mkdir -p "$GEMINI_DIR"

    if [ -d "$SCRIPT_DIR/gemini" ]; then
        cp -r "$SCRIPT_DIR/gemini/"* "$GEMINI_DIR/" 2>/dev/null || true
        echo -e "   ${GREEN}✓${NC} Copied Gemini settings"
    fi

    echo ""
    echo -e "   ${BLUE}Available skills:${NC}"
    echo "   - ui-ux-pro-max: 50+ UI styles and design patterns"

    echo -e "${GREEN}✅ Gemini CLI setup complete!${NC}"
}

install_codex() {
    echo -e "${YELLOW}📦 Installing Codex settings...${NC}"

    CODEX_DIR="$HOME/.codex"
    mkdir -p "$CODEX_DIR"

    if [ -f "$SCRIPT_DIR/codex/config.toml" ]; then
        cp "$SCRIPT_DIR/codex/config.toml" "$CODEX_DIR/"
        echo -e "   ${GREEN}✓${NC} Copied config.toml"
    fi

    echo ""
    echo -e "   ${BLUE}Features:${NC}"
    echo "   - Custom aliases (review, refactor, test, docs, explain)"
    echo "   - Safety settings (protected files, confirmation)"
    echo "   - Tech stack preferences"

    echo -e "${GREEN}✅ Codex setup complete!${NC}"
}

install_cline() {
    echo -e "${YELLOW}📦 Installing Cline settings...${NC}"

    CLINE_DIR=".cline"
    mkdir -p "$CLINE_DIR"

    if [ -d "$SCRIPT_DIR/cline" ]; then
        cp -r "$SCRIPT_DIR/cline/"* "$CLINE_DIR/" 2>/dev/null || true
        echo -e "   ${GREEN}✓${NC} Copied Cline settings"
    fi

    echo ""
    echo -e "   ${BLUE}Features:${NC}"
    echo "   - Claude Sonnet 4 with custom instructions"
    echo "   - MCP servers (memory, filesystem)"
    echo "   - Design system integration"
    echo "   - Keyboard shortcuts"

    echo -e "${GREEN}✅ Cline setup complete!${NC}"
}

install_amcas() {
    echo -e "${YELLOW}📦 Installing AMCAS (Arcanea Multi-Coding Agent System)...${NC}"
    echo "   - Router Spec: @arcanea/router-spec"
    echo "   - Dispatcher:  @arcanea/arcanea-code"
    echo ""

    # Detect package manager
    if command -v pnpm >/dev/null 2>&1; then
        PKG_CMD="pnpm add -g"
    elif command -v npm >/dev/null 2>&1; then
        PKG_CMD="npm install -g"
    else
        echo -e "   ${RED}✗${NC} Neither pnpm nor npm found. Install Node.js 20+ first."
        return 1
    fi

    # Install globally (idempotent — pnpm/npm handle upgrade)
    $PKG_CMD @arcanea/arcanea-code@latest 2>&1 | tail -3 || \
        echo -e "   ${YELLOW}!${NC} Global install failed (package may not be published yet). Skipping."

    # Run doctor if installed
    if command -v arcanea-code >/dev/null 2>&1; then
        echo ""
        echo -e "   ${BLUE}Running doctor...${NC}"
        arcanea-code doctor | sed 's/^/     /' || true
    else
        echo -e "   ${YELLOW}!${NC} arcanea-code not on PATH after install. Try: npm link from the monorepo clone."
    fi

    echo ""
    echo -e "   ${BLUE}Overlays (install each repo's install.sh separately):${NC}"
    echo "   - frankxai/oh-my-arcanea         (opencode overlay)"
    echo "   - frankxai/claude-arcanea        (claude overlay)"
    echo "   - frankxai/codex-arcanea         (codex overlay)"
    echo "   - frankxai/gemini-arcanea        (gemini overlay)"
    echo ""
    echo -e "${GREEN}✅ AMCAS setup complete!${NC}"
}

show_summary() {
    echo ""
    echo -e "${BLUE}╔═══════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║  Installation Summary                                     ║${NC}"
    echo -e "${BLUE}╚═══════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "  ${GREEN}Plugins:${NC}"
    echo "  - prompt-library: Publishing factory commands"
    echo "  - research-tools: Research intelligence workflows"
    echo "  - agentic-workflows: Multi-agent orchestration"
    echo "  - creator-tools: Content creation agents"
    echo "  - oracle-ai: Enterprise AI patterns"
    echo "  - suno-prompts: Music generation skills"
    echo ""
    echo -e "  ${GREEN}Agents:${NC}"
    echo "  - See AGENTS.md for complete directory"
    echo ""
    echo -e "  ${YELLOW}Next steps:${NC}"
    echo "  1. Restart your AI tool to load new settings"
    echo "  2. Try: /factory, /research, /agentic-creator-os"
    echo "  3. Read AGENTS.md for agent documentation"
    echo ""
}

print_header

case "$TOOL" in
    claude)
        install_claude
        ;;
    opencode)
        install_opencode
        ;;
    gemini)
        install_gemini
        ;;
    codex)
        install_codex
        ;;
    cline)
        install_cline
        ;;
    amcas)
        install_amcas
        ;;
    all)
        install_claude
        echo ""
        install_opencode
        echo ""
        install_gemini
        echo ""
        install_codex
        echo ""
        install_cline
        echo ""
        install_amcas
        show_summary
        ;;
    list)
        echo -e "${BLUE}Available installers:${NC}"
        echo "  claude   - Claude Code plugins and commands"
        echo "  opencode - OpenCode agents and oh-my-opencode"
        echo "  gemini   - Gemini CLI skills"
        echo "  codex    - OpenAI Codex configuration"
        echo "  cline    - Cline VSCode settings"
        echo "  amcas    - Arcanea Multi-Coding Agent System (router + dispatcher)"
        echo "  all      - Install everything"
        echo ""
        echo -e "${BLUE}Usage:${NC} ./install.sh [claude|opencode|gemini|codex|cline|amcas|all|list]"
        ;;
    *)
        echo -e "${RED}Unknown option: $TOOL${NC}"
        echo ""
        echo -e "${BLUE}Usage:${NC} ./install.sh [claude|opencode|gemini|codex|cline|all|list]"
        echo ""
        echo "Run './install.sh list' to see available options"
        exit 1
        ;;
esac

if [ "$TOOL" != "all" ] && [ "$TOOL" != "list" ]; then
    echo ""
    echo -e "${BLUE}╔═══════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║  Installation complete!                                   ║${NC}"
    echo -e "${BLUE}║  Restart your AI tool to load new settings.              ║${NC}"
    echo -e "${BLUE}╚═══════════════════════════════════════════════════════════╝${NC}"
fi
