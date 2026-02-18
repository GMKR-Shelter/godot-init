#!/bin/sh
printf '\033c\033]0;%s\a' Action RPG
base_path="$(dirname "$(realpath "$0")")"
"$base_path/rick.x86_64" "$@"
