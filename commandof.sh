#!/usr/bin/env bash
source "$(dirname "${BASH_SOURCE[0]}")/requires.sh"
requires cat

function commandof() {
    if [ $# -ne 1 ]; then
        echo >&2 'Usage: commandof command'
        echo >&2
        echo >&2 'Output command type which is one of 'alias', 'keyword', 'function', 'builtin', 'file' or '''
        return -1
    fi
    type -t "$1"
    return $?
}

