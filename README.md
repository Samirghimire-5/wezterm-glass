# WezTerm Glassy Config 🧊

A **minimal, glassy, keyboard-driven WezTerm configuration** optimized for Linux. Designed for developers who love **keyboard-first workflows** and deep, clean aesthetics.

---

## Features
- **Deep Black + Cyan Theme:** High contrast for focus.
- **Glassy Aesthetic:** 90% opacity with a subtle midnight-blue gradient.
- **Vim-Style Navigation:** Move between panes using `CTRL + H/J/K/L`.
- **Intelligent OS Detection:** Automatically adjusts window decorations for Linux vs. macOS.
- **Safe Installer:** Automatically backs up your old config before installing.

---

## Installation

### 1. Prerequisites
- **WezTerm:** 
    - [Linux Installation](https://wezfurlong.org/wezterm/install/linux.html).
    - [Windows/macOS Installation](https://wezterm.org/installation.html).
<!-- - **Font:** This config uses **JetBrains Mono**. (Recommended: [JetBrainsMono Nerd Font](https://www.nerdfonts.com/)). -->

### 2. Setup (Option 1: Automatic - Linux/macOS - Recommended)
The automatic installer will check for dependencies and **back up your existing config** to `~/.config/wezterm.bak` before linking.

```bash
git clone https://github.com/Samirghimire-5/wezterm-glass.git
cd wezterm-glass
chmod +x install.sh && ./install.sh
```

---

### 3. Setup (Option 2: Manual/Windows)
#### 🐧 Linux & 🍏 macOS
```bash
git clone https://github.com/Samirghimire-5/wezterm-glass.git
mkdir -p ~/.config
cp -r wezterm-glass/wezterm ~/.config/
```

#### 🪟 Windows (PowerShell)
- **Install WezTerm:**
    - [Windows Installation](https://wezterm.org/installation.html).

- **Clone this repository:**

```Powershell
git clone https://github.com/Samirghimire-5/wezterm-glass.git
cd wezterm-glass
```

- **Create the config directory and copy the file:**
```PowerShell
# Create the folder if it doesn't exist
mkdir -p $HOME\.config\wezterm

# Copy the configuration file
cp wezterm\wezterm.lua $HOME\.config\wezterm\
```

- ***Glassy Effect Note:** To ensure the transparency works on Windows:*
    - Go to **Settings** > **Personalization** > **Colors**.
    - Toggle **Transparency effects** to **On**.

---

#### After either method, reload WezTerm:

```bash
CTRL + SHIFT + R
```
--- 

## Keybindings

#### Pane Management

| Shortcut | Action |
|----------|--------|
| `CTRL + SHIFT + G` | Split vertically |
| `CTRL + SHIFT + H` | Split horizontally |
| `CTRL + SHIFT + W` | Close current pane |
| `CTRL + SHIFT + S` | Workspace launcher |
| `CTRL + SHIFT + L` | Activate copy mode |

#### Pane Navigation (Vim-style)

| Shortcut | Direction |
|----------|-----------|
| `CTRL + H` | Move left |
| `CTRL + L` | Move right |
| `CTRL + K` | Move up |
| `CTRL + J` | Move down |

#### Pane Reordering / Rotation

> **Note:** With 2 panes, rotation behaves like swap.

| Shortcut | Action |
|----------|--------|
| `ALT + r` | Rotate panes clockwise |
| `ALT + SHIFT + R` | Rotate panes counter-clockwise |

#### Mouse Bindings

| Shortcut | Action |
|----------|--------|
| `ALT + Left Click` | Drag window |
> **Note:** If this doesn't works use `Win + Left Click` to drag window.

#### Increase Pane Size (Vim-style -- just like dragging with mouse/touchpad)

| Shortcut | Direction |
|----------|-----------|
| `Alt + SHIFT + H` | Increase size to left |
| `Alt + SHIFT + L` | Increase size to right |
| `Alt + SHIFT + K` | Increase size to up |
| `Alt + SHIFT + J` | Increase size to down |

#### Move pane to the new tab in same window

| Shortcut | Action |
|----------|--------|
| `CTRL + SHIFT + ENTER` | Moves the current pane to the new tab |

---

## Screenshots

![Screenshot 1](https://i.ibb.co/G4NxqHL0/Screenshot-from-2026-01-18-22-18-37.png)

---

## ⚠️Compatibility Note
This config is **Linux-First**. While it works on macOS and Windows:

**macOS**: Window decorations are set to **"RESIZE"** to maintain native window controls.

**Windows**: The `install.sh` script is meant for Unix-like shells (Git Bash/WSL). Manual copy is recommended for native Windows.

---
#### Enjoy your new glassy terminal !!!
