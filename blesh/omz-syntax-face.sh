#!/usr/bin/env bash
# OMZ-style syntax colors for ble.sh
#
# Source this file *after* ble.sh is loaded, then call:
#   blesh_theme_omz_syntax_apply
#
# This maps the default zsh-syntax-highlighting (used by OMZ when no overrides
# are set) to the closest ble.sh faces.

blesh_theme_omz_syntax_apply() {
  # Base/default
  ble-face -s syntax_default none

  # Command classes (OMZ main highlighter: known command-like tokens are green)
  ble-face -s command_builtin       fg=green
  ble-face -s command_function      fg=green
  ble-face -s command_file          fg=green
  ble-face -s command_jobs          fg=green
  ble-face -s command_directory     fg=green,underline
  ble-face -s command_suffix        fg=green,underline
  ble-face -s command_suffix_new    fg=green,underline

  # Alias/reserved-word style
  ble-face -s command_alias         fg=cyan
  ble-face -s command_keyword       fg=yellow

  # Unknown token / parse error
  ble-face -s syntax_error          fg=red,bold

  # Paths + globbing/history expansion
  ble-face -s filename_directory    fg=default,underline
  ble-face -s filename_other        fg=default,underline
  ble-face -s syntax_glob           fg=blue
  ble-face -s syntax_history_expansion fg=blue

  # Quotes / expansions / substitutions
  ble-face -s syntax_quoted         fg=yellow
  ble-face -s syntax_quotation      fg=yellow
  ble-face -s syntax_escape         fg=magenta
  ble-face -s syntax_param_expansion fg=cyan
  ble-face -s syntax_expr           fg=cyan

  # Redirections and comments
  ble-face -s syntax_delimiter      fg=yellow
  ble-face -s syntax_comment        fg=black,bold

}
