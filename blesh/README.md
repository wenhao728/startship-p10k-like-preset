# ble.sh OMZ Syntax Theme

This folder contains an OMZ-like syntax highlight mapping for `ble.sh`.

## Files

- `omz-syntax-face.sh`: applies face colors that mimic default
  `zsh-syntax-highlighting` colors used by Oh My Zsh.

## Qucick Install

Choose one method from your local machine (`<user>@<host>` is your server).

### `scp`

```bash
ssh <user>@<host> 'mkdir -p ~/.config/blesh'
scp ./blesh/omz-syntax-face.sh <user>@<host>:~/.config/blesh/omz-syntax-face.sh
```

### `rsync`

```bash
rsync -avz --rsync-path='mkdir -p ~/.config/blesh && rsync' \
  ./blesh/omz-syntax-face.sh \
  <user>@<host>:~/.config/blesh/omz-syntax-face.sh
```

### How to load in shell startup

Add this after `ble.sh` is sourced (e.g. in `~/.bashrc`):

```bash
# Load ble.sh first (your existing path may differ)
source ~/.local/share/blesh/ble.sh

# Apply OMZ-like syntax colors
source ~/.config/blesh/omz-syntax-face.sh
```

## Notes

- This is a closest-face mapping, not a 1:1 engine port.
- If colors look different between local and server, check terminal theme and
  whether both sides use compatible color capabilities (`TERM`, truecolor/256).
