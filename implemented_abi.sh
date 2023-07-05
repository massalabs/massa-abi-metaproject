#!/usr/bin/env bash
fd abis.rs -X rg ".*Result" | rg resp_ok | cut -d'!' -f2 | sort -u | cut -d',' -f1 | tr -d '('