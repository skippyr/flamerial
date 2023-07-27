#!/usr/bin/env bash
typeset -r profile_uuid=$(
  gsettings get org.gnome.Terminal.ProfilesList default | tr -d \'
)
apply_property() {
  gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/\
profiles:/:${profile_uuid}/ "${1}" "${2}"
}
apply_property use-theme-colors false
apply_property background-color "#140f0f"
apply_property foreground-color "#e8dcbc"
apply_property cursor-background-color "#e8dcbc"
apply_property cursor-foreground-color "#140f0f"
apply_property highlight-background-color "#e8dcbc"
apply_property highlight-foreground-color "#140f0f"
apply_property palette "[
  \"#140f0f\",
  \"#b32815\",
  \"#960c0c\",
  \"#c76e02\",
  \"#a88e6e\",
  \"#9e6a4f\",
  \"#ba3e00\",
  \"#e8dcbc\",
  \"#a88e6e\",
  \"#b32815\",
  \"#960c0c\",
  \"#c76e02\",
  \"#a88e6e\",
  \"#9e6a4f\",
  \"#ba3e00\",
  \"#e8dcbc\"
]"
