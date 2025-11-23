#!/bin/bash
# Disable unwanted autostart entries

ENTRIES=(
  "apt-notifier"
  "cleanup-notifier-mx"
  "mx-tweak"
  "mx-usb-unmounter"
  "light-locker"
  "onboard"
  "orca"
  "magnus"
  "spice-vdagent"
  "user-dirs-update-gtk"
  "at-spi-dbus-bus"
  "pipewire-start"
  "polkit-gnome-authentication-agent-1"
  "xdg-user-dirs"
  "sxhkd"
)

mkdir -p ~/.config/autostart

for entry in "${ENTRIES[@]}"; do
  # Find matching .desktop file
  current_path="/etc/xdg/autostart"
  source_file=$(find "$current_path" -name "*${entry}*.desktop" 2>/dev/null | head -1)

  echo "found: $source_file in $current_path"

  if [ -n "$source_file" ]; then
    basename=$(basename "$source_file")
    target="$HOME/.config/autostart/$basename"

    # Copy and disable
    cp "$source_file" "$target"
    echo "Hidden=true" >>"$target"
    echo "Disabled: $basename"
  else
    current_path="$HOME/.config/autostart"

    source_file=$(find "$current_path" -name "*${entry}*.desktop" 2>/dev/null | head -1)

    echo "Hidden=true" >>"$source_file"
    echo "Disabled: $source_file"
  fi
done
