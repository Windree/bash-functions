#!/usr/bin/env bash
set -Eeuo pipefail

function array_contains() {
    if [ "$#" -lt 1 ]; then
        echo >&2 "array_contains requires at least one aragument"
        exit 255
    fi
    if [ "$#" -eq 1 ]; then
        return 1
    fi
    local value="${!#}"
    local argv=("${@:1:$#-1}")
    echo $argv | grep -w -q "$value"
    return $?
}
