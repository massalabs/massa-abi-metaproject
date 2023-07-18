#!/usr/bin/env bash

# Search for ABIs Results used in abis.rs
function implemented_abi() {
    fd abis.rs -X rg ".*Result" | rg resp_ok | cut -d'!' -f2 | sort -u | cut -d',' -f1 | tr -d '('
}

# Search for ABIs Results defined in abi.proto
function proto_abi() {
    fd abi.proto -X rg -e ".*Result.*= [0-9]*;" | cut -d " " -f5 | sort -u | rg -v -e "RespResult" -e "="
}

# Search for ABIs functions implemented in abis.rs
function fn_abi_rs() {
    fd abis.rs -X rg "fn abi_" | cut -d' ' -f2 | sort -u | tr -d '\('
}

# Search for ABIs functions used in env.ts
function fn_abi_as() {
    fd env.ts | rg protobuf | xargs cat | rg "@external" | cut -d'"' -f4 | sort -u
}

function transform_to_snake_case() {
    local input=$1
    local result="${input%Result}"
    result=$(echo "$result" | sed 's/\(.\)\([A-Z]\)/\1_\2/g')
    result=$(echo "$result" | tr '[:upper:]' '[:lower:]')
    result="abi_${result}"
    echo "$result"
}

function proto_to_abi() {
    for name in $(proto_abi | sort -u); do
        transformed_name=$(transform_to_snake_case "$name")
        echo "$transformed_name"
    done
}

# Show the ABIs Results defined in abi.proto but not used in abis.rs
echo "ABIs Results defined in abi.proto but not used in abis.rs"
comm <(proto_abi) <(implemented_abi) -3
echo ""

# Show the ABIs functions defined in abis.rs but not used in env.ts
echo "ABIs functions defined in abis.rs but not used in env.ts"
echo "|       abis.rs      |      env.ts      |"
comm <(fn_abi_rs) <(fn_abi_as) -3 --output-delimiter="                     | "
echo ""

# Show Results defined in abi.proto that does not direcly match a function defined in abis.rs
echo "Results defined in abi.proto that does not direcly match a function defined in abis.rs"
echo "|     abis.proto     |      abi.rs      |"
comm <(proto_to_abi) <(fn_abi_rs) -3 --output-delimiter="                     | "
