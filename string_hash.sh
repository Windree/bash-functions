#!/usr/bin/env bash

function string_hash() {
    echo "$1" | md5sum | awk '{ print $1 }'
}
