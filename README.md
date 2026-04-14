# Starship Powerlevel10k-like Preset

A [Starship](https://starship.rs/) prompt configuration that mimics the look and feel of
[Oh My Zsh](https://ohmyz.sh/) with the [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
theme — designed for **Bash** on remote Linux servers.

## Prompt Layout

```
╭─  user  @  hostname   ~/path/to/dir   branch  ✔  ─────  󱎫 3s   󱑌 09:45 
╰─❯ 
```

| Area | Modules |
|------|---------|
| Left | OS icon · username · hostname · directory · git branch · git status |
| Right (inline) | command duration · time |
| Line 2 | `❯` (green on success, red on error) |

## Requirements

- **Starship** ≥ 1.0 — [install](https://starship.rs/guide/#🚀-installation)
- A **[Nerd Font](https://www.nerdfonts.com/)** installed and set as the terminal font  
  (recommended: *MesloLGS NF*, *FiraCode Nerd Font*, or *JetBrains Mono Nerd Font*)

## Installation

1. Copy the config file to your Starship config location:

   ```bash
   mkdir -p ~/.config
   cp starship.toml ~/.config/starship.toml
   ```

2. Add the following line to your `~/.bashrc`:

   ```bash
   eval "$(starship init bash)"
   ```

3. Reload your shell:

   ```bash
   source ~/.bashrc
   ```

## Features

| Feature | Description |
|---------|-------------|
| 🎨 Powerline style | Segmented left prompt with coloured backgrounds and chevron separators |
| 🖥️ OS icon | Automatically detected (Linux / macOS / Ubuntu / …) |
| 👤 User & host | Always visible; root user highlighted in red |
| 📁 Directory | Truncated to 4 levels; read-only indicator |
| 🌿 Git branch | Branch name with ahead/behind/diverged counters |
| ✅ Git status | Untracked · modified · staged · stashed · conflict indicators |
| ⏱️ Command duration | Shown when execution exceeds 2 seconds |
| 🕐 Time | 24-hour clock on the right side |
| 🐍 Python | Virtualenv + version (detected automatically) |
| 🟢 Node.js | Version (detected automatically) |
| 🦀 Rust | Version (detected automatically) |
| 🐹 Go | Version (detected automatically) |
| 🐳 Docker | Current Docker context |

## Customisation

The config is fully annotated — open `starship.toml` and adjust any section.
Common tweaks:

- **Hide username/hostname** (useful on a personal machine): set `[hostname] disabled = true`
  and `[username] show_always = false`
- **Change time format**: edit `time_format` in `[time]` (uses `strftime` syntax)
- **Command duration threshold**: change `min_time` in `[cmd_duration]` (value in milliseconds)
- **Directory truncation depth**: change `truncation_length` in `[directory]`

## Colour Palette

The theme uses a [Catppuccin Mocha](https://github.com/catppuccin/catppuccin)-inspired palette:

| Role | Hex |
|------|-----|
| Background segments | `#1C3A5E` / `#394260` / `#212736` |
| Text / accents | `#7aa2f7` · `#cba6f7` · `#a6e3a1` · `#f9e2af` |
| Error / warning | `#f38ba8` · `#fab387` |
| Time / misc | `#b4befe` · `#89dceb` |
