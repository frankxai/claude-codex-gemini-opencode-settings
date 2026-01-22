#!/bin/bash
# FrankX AI Settings Installer
# Supports: claude, opencode, gemini, codex, cline, all

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TOOL="${1:-all}"

echo "╔═══════════════════════════════════════════════╗"
echo "║     FrankX AI Settings Installer              ║"
echo "╚═══════════════════════════════════════════════╝"
echo ""

install_claude() {
    echo "📦 Installing Claude Code settings..."

    CLAUDE_DIR="$HOME/.claude"
    mkdir -p "$CLAUDE_DIR/plugins"

    # Link plugins
    for plugin in "$SCRIPT_DIR/claude-plugins/plugins/"*/; do
        plugin_name=$(basename "$plugin")
        if [ -d "$plugin" ]; then
            ln -sf "$plugin" "$CLAUDE_DIR/plugins/$plugin_name"
            echo "   ✓ Linked plugin: $plugin_name"
        fi
    done

    # Copy settings if not exists
    if [ ! -f "$CLAUDE_DIR/settings.json" ]; then
        cp "$SCRIPT_DIR/claude-plugins/settings.json" "$CLAUDE_DIR/"
        echo "   ✓ Copied settings.json"
    else
        echo "   ⚠ settings.json exists, skipping (merge manually if needed)"
    fi

    echo "✅ Claude Code setup complete!"
}

install_opencode() {
    echo "📦 Installing OpenCode settings..."

    OPENCODE_DIR=".opencode"
    mkdir -p "$OPENCODE_DIR/agents"

    if [ -f "$SCRIPT_DIR/opencode-settings/oh-my-opencode.json" ]; then
        cp "$SCRIPT_DIR/opencode-settings/oh-my-opencode.json" "$OPENCODE_DIR/"
        echo "   ✓ Copied oh-my-opencode.json"
    fi

    # Copy agents
    if [ -d "$SCRIPT_DIR/opencode-settings/agents" ]; then
        cp -r "$SCRIPT_DIR/opencode-settings/agents/"* "$OPENCODE_DIR/agents/" 2>/dev/null || true
        echo "   ✓ Copied agent configs"
    fi

    echo "✅ OpenCode setup complete!"
}

install_gemini() {
    echo "📦 Installing Gemini CLI settings..."

    GEMINI_DIR=".gemini"
    mkdir -p "$GEMINI_DIR"

    if [ -d "$SCRIPT_DIR/gemini-settings" ]; then
        cp -r "$SCRIPT_DIR/gemini-settings/"* "$GEMINI_DIR/" 2>/dev/null || true
        echo "   ✓ Copied Gemini settings"
    fi

    echo "✅ Gemini CLI setup complete!"
}

install_codex() {
    echo "📦 Installing Codex settings..."

    CODEX_DIR=".codex"
    mkdir -p "$CODEX_DIR"

    if [ -f "$SCRIPT_DIR/codex-settings/config.toml" ]; then
        cp "$SCRIPT_DIR/codex-settings/config.toml" "$CODEX_DIR/"
        echo "   ✓ Copied config.toml"
    fi

    echo "✅ Codex setup complete!"
}

install_cline() {
    echo "📦 Installing Cline settings..."

    CLINE_DIR=".cline"
    mkdir -p "$CLINE_DIR"

    if [ -d "$SCRIPT_DIR/cline-settings" ]; then
        cp -r "$SCRIPT_DIR/cline-settings/"* "$CLINE_DIR/" 2>/dev/null || true
        echo "   ✓ Copied Cline settings"
    fi

    echo "✅ Cline setup complete!"
}

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
        ;;
    *)
        echo "Usage: ./install.sh [claude|opencode|gemini|codex|cline|all]"
        exit 1
        ;;
esac

echo ""
echo "╔═══════════════════════════════════════════════╗"
echo "║  Installation complete!                       ║"
echo "║  Restart your AI tool to load new settings.  ║"
echo "╚═══════════════════════════════════════════════╝"
