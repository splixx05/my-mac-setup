#!/usr/bin/env bash

palette="$HOME/.config/colors/tokyonight.toml"
dir_json="$HOME/.config/colors/tokyonight.json"
dir_yaml="$HOME/.config/colors/tokyonight.yaml"

# Export nach JSON
yq -o=json "$palette" >"$dir_json"

# Export nach YAML
yq -oy "$palette" >"$dir_yaml"
