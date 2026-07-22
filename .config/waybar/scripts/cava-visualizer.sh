#!/usr/bin/env bash
# ~/.config/waybar/scripts/cava-visualizer.sh
#
# Streams a compact bar visualizer for waybar's custom/cava module.
# Requires: cava (pacman -S cava)
# Reads: ~/.config/cava/waybar_config (raw ascii output, 10 bars, 0-7 range)
#
# waybar's custom module runs this continuously (no "interval" key set) and
# treats each printed line as the module's new text.
#
# `stdbuf -oL` forces cava's stdout to line-buffer instead of fully
# buffering (the default once stdout isn't a terminal) -- without it,
# frames can sit in a ~4KB buffer for a long time before waybar ever
# sees them, which looks like "nothing is happening".

BARS=(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)

stdbuf -oL cava -p "$HOME/.config/cava/waybar_config" | while IFS=';' read -ra levels; do
  out=""
  for lvl in "${levels[@]}"; do
    [[ -z "$lvl" ]] && continue
    (( lvl < 0 )) && lvl=0
    (( lvl > 7 )) && lvl=7
    out+="${BARS[$lvl]}"
  done
  printf '%s\n' "$out"
done
