#!/usr/bin/env bash
./all_abi.sh > all_abi.txt
./implemented_abi.sh > implemented_abi.txt
comm all_abi.txt implemented_abi.txt -3
