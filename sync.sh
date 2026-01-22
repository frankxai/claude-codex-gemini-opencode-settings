#!/bin/bash
# FrankX AI Settings Sync & Maintenance
# Orchestrates updates across all settings repos

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FRANKX_ROOT="/mnt/c/Users/Frank/FrankX"

echo "╔═══════════════════════════════════════════════╗"
echo "║     FrankX Settings Sync Orchestrator         ║"
echo "╚═══════════════════════════════════════════════╝"
echo ""

# Source mapping: FrankX location -> Package location
declare -A SYNC_MAP=(
    # Claude plugins
    [".claude/commands/factory.md"]="claude-plugins/plugins/creator-tools/commands/factory.md"
    [".claude/commands/publish.md"]="claude-plugins/plugins/creator-tools/commands/publish.md"
    [".claude/commands/oracle-work.md"]="claude-plugins/plugins/oracle-ai/commands/oracle-work.md"
    [".claude/commands/prototype.md"]="claude-plugins/plugins/oracle-ai/commands/prototype.md"

    # Skills
    [".claude-skills/technical/oci-services-expert/CLAUDE.md"]="claude-plugins/plugins/oracle-ai/skills/oci-services/SKILL.md"
    [".claude-skills/creative/suno-prompt-architect/CLAUDE.md"]="claude-plugins/plugins/suno-prompts/skills/suno-prompts/SKILL.md"

    # OpenCode
    [".opencode/oh-my-opencode.json"]="opencode-settings/oh-my-opencode.json"
    [".opencode/agents"]="opencode-settings/agents"

    # Gemini
    [".gemini/ui-ux-pro-max.md"]="gemini-settings/ui-ux-pro-max.md"

    # Codex
    [".codex/skills"]="codex-settings/skills"
)

sync_to_package() {
    echo "📤 Syncing from FrankX to package..."

    for source in "${!SYNC_MAP[@]}"; do
        dest="${SYNC_MAP[$source]}"
        source_path="$FRANKX_ROOT/$source"
        dest_path="$SCRIPT_DIR/$dest"

        if [ -e "$source_path" ]; then
            mkdir -p "$(dirname "$dest_path")"
            if [ -d "$source_path" ]; then
                cp -r "$source_path/"* "$dest_path/" 2>/dev/null || true
            else
                cp "$source_path" "$dest_path"
            fi
            echo "   ✓ $source -> $dest"
        fi
    done

    echo "✅ Sync complete!"
}

update_from_upstream() {
    echo "📥 Updating from upstream repos..."

    # Update fcakyon plugins
    if [ -d "$FRANKX_ROOT/.claude-plugins-fcakyon" ]; then
        echo "   Updating fcakyon plugins..."
        cd "$FRANKX_ROOT/.claude-plugins-fcakyon"
        git pull --rebase 2>/dev/null || echo "   ⚠ Could not pull fcakyon updates"
        cd "$SCRIPT_DIR"
    fi

    echo "✅ Upstream update complete!"
}

validate_plugins() {
    echo "🔍 Validating plugin structure..."

    for plugin_dir in "$SCRIPT_DIR/claude-plugins/plugins/"*/; do
        plugin_name=$(basename "$plugin_dir")
        manifest="$plugin_dir/.claude-plugin/plugin.json"

        if [ -f "$manifest" ]; then
            echo "   ✓ $plugin_name - manifest found"
        else
            echo "   ❌ $plugin_name - missing manifest!"
        fi
    done

    echo "✅ Validation complete!"
}

publish_to_github() {
    echo "🚀 Publishing to GitHub repos..."

    # Main repo
    cd "$SCRIPT_DIR"
    if [ -d ".git" ]; then
        git add -A
        git commit -m "sync: Update settings from FrankX" 2>/dev/null || echo "   No changes to commit"
        git push origin main 2>/dev/null || echo "   ⚠ Could not push (check remote)"
    else
        echo "   ⚠ Not a git repo - initialize with 'git init'"
    fi

    echo "✅ Published!"
}

show_status() {
    echo "📊 Current Status:"
    echo ""

    echo "Claude Plugins:"
    ls -la "$SCRIPT_DIR/claude-plugins/plugins/" 2>/dev/null | grep "^d" | awk '{print "   " $NF}'

    echo ""
    echo "Linked Plugins (in .claude):"
    ls -la "$FRANKX_ROOT/.claude/plugins/" 2>/dev/null | grep "^l" | awk '{print "   " $NF " -> " $(NF-2)}'

    echo ""
    echo "External Sources:"
    [ -d "$FRANKX_ROOT/.claude-plugins-fcakyon" ] && echo "   ✓ fcakyon/claude-codex-settings"
}

case "${1:-status}" in
    sync)
        sync_to_package
        ;;
    update)
        update_from_upstream
        ;;
    validate)
        validate_plugins
        ;;
    publish)
        sync_to_package
        validate_plugins
        publish_to_github
        ;;
    status)
        show_status
        ;;
    all)
        update_from_upstream
        sync_to_package
        validate_plugins
        ;;
    *)
        echo "Usage: ./sync.sh [sync|update|validate|publish|status|all]"
        echo ""
        echo "Commands:"
        echo "  sync     - Copy from FrankX to package"
        echo "  update   - Pull upstream repos (fcakyon)"
        echo "  validate - Check plugin structure"
        echo "  publish  - Sync + validate + push to GitHub"
        echo "  status   - Show current state"
        echo "  all      - Update + sync + validate"
        exit 1
        ;;
esac
