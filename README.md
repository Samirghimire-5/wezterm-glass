# WezTerm Glassy Config

A **minimal, glassy, keyboard-driven WezTerm configuration** for Linux, designed for developers who love **keyboard-first workflows** and clean aesthetics.  

- Deep black + cyan theme  
- Glassy background with subtle gradient  
- Vim-style pane navigation  
- Quick pane rotation / swapping  
- Single-file configuration for easy installation  

---

##  Installation

You have **two options**: an installer script (recommended) or a manual clone & copy.

---

###  Option 1: Automatic Installer (Recommended)
**For http:**
```bash
git clone https://github.com/Samirghimire-5/wezterm-glass.git
```
or,
 
**For SSH:**
```bash
git clone git@github.com:Samirghimire-5/wezterm-glass.git
```
Then,
```bash
cd wezterm-glass
./install.sh
```

**This will:**\
Create ~/.config/wezterm if it doesn’t exist \
Symlink the config file for easy updates \
Fail safely if a config already exists

---

### Option 2: Manual Clone & Copy (Beginner-Friendly)
**For http:**
```bash
git clone https://github.com/Samirghimire-5/wezterm-glass.git
```
or,
 
**For SSH:**
```bash
git clone git@github.com:Samirghimire-5/wezterm-glass.git
```
Then,
```bash
mkdir -p ~/.config
cp -r wezterm-glass/wezterm ~/.config/
```

After either method, reload WezTerm:

```bash
CTRL + SHIFT + R
```
--- 

### Keybindings

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

### Customization

You can tweak:

- **Font:** `wezterm.font("JetBrains Mono")`
- **Font size:** `config.font_size = 14.0`
- **Background opacity:** `config.window_background_opacity`
- **Keybindings:** edit the `config.keys` table

All changes are made in `wezterm.lua`.

---

### Screenshots

![Screenshot 1](https://i.ibb.co/G4NxqHL0/Screenshot-from-2026-01-18-22-18-37.png)

![Screenshot 2](https://i.ibb.co/HDmNg855/Screenshot-from-2026-01-18-22-20-39.png)

---

### Inspiration

**Inspired by** minimal Linux setups, Neovim workflows, and keyboard-first tools.

---

### Enjoy !!!
