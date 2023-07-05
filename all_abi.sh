#!/usr/bin/env bash
fd abi.proto -X rg -e ".*Result.*= [0-9]*;" | cut -d " " -f5 | sort -u
