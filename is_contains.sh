#!/usr/bin/env bash

function is_contains() {
    if [[ $1 == *"$2"* ]]; then
        return 0
    fi
    return 1
}
