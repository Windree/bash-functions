#!/usr/bin/env bash

function requires() {
    for command in which $@; do
        if ! type "$command" >/dev/null; then
            echo "The '$command' is required"
            exit -255
        fi
    done
}
