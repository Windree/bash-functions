#!/usr/bin/env bash
set -Eeuo pipefail

function timespan() {
    local days=$((${1} / 60 / 60 / 24))
    local hours=$((${1} / 60 / 60 % 24))
    local minutes=$((${1} / 60 % 60))
    local seconds=$((${1} % 60))
    [[ $days > 0 ]] && printf '%d days ' $days
    printf '%02d:%02d:%02d' $hours $minutes $seconds
    echo
}
