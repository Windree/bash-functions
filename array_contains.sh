#!/usr/bin/env bash
set -Eeuo pipefail

function array_contains() {
    local value="${!#}"
    local argv=("${@:1:$#-1}")
    echo $argv | grep -w -q "$value"
    return $?
}
