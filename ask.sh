#!/usr/bin/env bash
source "$(dirname "${BASH_SOURCE[0]}")/requires.sh"
source "$(dirname "${BASH_SOURCE[0]}")/array_contains.sh"

function ask() {
    if [ ! -v ask_answer ]; then
        echo >&2 "ask_answer variable must be declared"
        exit 1
    fi
    local question=$1
    shift

    while true; do
        read -p "$question" reply
        if array_contains "$reply" $@; then
            ask_answer=$reply
            return
        fi
    done
}
