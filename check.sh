#!/usr/bin/env bash

shellcheck bootstrap
shellcheck test
shellcheck apps

apps=("git" "alacritty" "tmux" "nvim")
for app in "${apps[@]}"; do
    shellcheck "./$app/init"
    if [[ -f "./$app/test" ]]; then
        shellcheck "./$app/test"
    fi
done
