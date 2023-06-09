| AS ABI                                  | wasmv1 ABI                     | proto                               | comment                     |
| --------------------------------------- | ------------------------------ | ----------------------------------- | --------------------------- |
| abort                                   | abi_abort                      |                                     | working need update         |
| seed                                    |                                |                                     |                             |
| Date.now                                |                                |                                     |                             |
| console.log                             |                                |                                     |                             |
| console.info                            |                                |                                     |                             |
| console.warn                            |                                |                                     |                             |
| console.error                           |                                |                                     |                             |
| console.debug                           |                                |                                     |                             |
| trace                                   |                                |                                     |                             |
| process.exit                            |                                |                                     |                             |
| assembly_script_print                   |                                |                                     |                             |
| assembly_script_call                    | abi_call                       |                                     |                             |
| assembly_script_get_remaining_gas       |                                |                                     |                             |
| assembly_script_create_sc               | abi_create_sc                  | CreateSCResult                      |                             |
| assembly_script_set_data                |                                |                                     |                             |
| assembly_script_set_data_for            |                                |                                     |                             |
| assembly_script_get_data                |                                |                                     |                             |
| assembly_script_get_data_for            |                                |                                     |                             |
| assembly_script_delete_data             |                                |                                     |                             |
| assembly_script_delete_data_for         |                                |                                     |                             |
| assembly_script_append_data             |                                |                                     |                             |
| assembly_script_append_data_for         |                                |                                     |                             |
| assembly_script_has_data                |                                |                                     |                             |
| assembly_script_has_data_for            |                                |                                     |                             |
| assembly_script_get_owned_addresses     |                                |                                     |                             |
| assembly_script_get_call_stack          |                                |                                     |                             |
| assembly_script_generate_event          | abi_generate_event             | GenerateEventResult                 | working need update         |
| assembly_script_transfer_coins          | abi_transfer_coins             | TransferCoinsResult                 | working need update         |
| assembly_script_transfer_coins_for      |                                |                                     |                             |
| assembly_script_get_balance             |                                |                                     |                             |
| assembly_script_get_balance_for         |                                |                                     |                             |
| assembly_script_hash                    |                                |                                     |                             |
| assembly_script_signature_verify        |                                |                                     |                             |
| assembly_script_address_from_public_key |                                |                                     |                             |
| assembly_script_validate_address        |                                |                                     |                             |
| assembly_script_unsafe_random           |                                |                                     |                             |
| assembly_script_get_call_coins          |                                |                                     |                             |
| assembly_script_get_time                |                                |                                     |                             |
| assembly_script_send_message            |                                |                                     |                             |
| assembly_script_get_current_period      |                                |                                     |                             |
| assembly_script_get_current_thread      |                                |                                     |                             |
| assembly_script_set_bytecode            |                                |                                     |                             |
| assembly_script_set_bytecode_for        |                                |                                     |                             |
| assembly_script_get_op_keys             |                                |                                     |                             |
| assembly_script_get_keys                |                                |                                     |                             |
| assembly_script_get_keys_for            |                                |                                     |                             |
| assembly_script_has_op_key              |                                |                                     |                             |
| assembly_script_get_op_data             |                                |                                     |                             |
| assembly_script_get_bytecode            |                                |                                     |                             |
| assembly_script_get_bytecode_for        |                                |                                     |                             |
| assembly_script_local_call              | abi_local_call                 |                                     | working need update         |
| assembly_script_local_execution         |                                |                                     |                             |
| assembly_script_caller_has_write_access |                                |                                     |                             |
| assembly_script_function_exists         | abi_function_exists            |                                     | working need update         |
| assembly_script_hash_sha256             |                                |                                     |                             |
|                                         | abi_native_address_to_string   | NativeAddressToStringResult         |                             |
|                                         | abi_native_pubkey_to_string    | NativePubKeyToStringResult          |                             |
|                                         | abi_native_sig_to_string       | NativeSigToStringResult             |                             |
|                                         | abi_native_hash_to_string      | NativeHashToStringResult            |                             |
|                                         | abi_native_address_from_string | NativeAddressFromStringResult       |                             |
|                                         | abi_native_pubkey_from_string  | NativePubKeyFromStringResult        |                             |
|                                         | abi_native_sig_from_string     | NativeSigFromStringResult           |                             |
|                                         | abi_native_hash_from_string    | NativeHashFromStringResult          |                             |
|                                         | abi_check_native_address       | CheckNativeAddressResult            |                             |
|                                         | abi_check_native_pubkey        | CheckNativePubKeyResult             |                             |
|                                         | abi_check_native_sig           | CheckNativeSigResult                |                             |
|                                         | abi_check_native_hash          | CheckNativeHashResult               |                             |
|                                         | abi_check_native_amount        | CheckNativeAmountResult             |                             |
|                                         | abi_add_native_amounts         | AddNativeAmountsResult              |                             |
|                                         | abi_sub_native_amounts         | SubNativeAmountsResult              |                             |
|                                         | abi_mul_native_amount          | MulNativeAmountResult               |                             |
|                                         | abi_div_rem_native_amount      | ScalarDivRemNativeAmountResult      |                             |
|                                         | abi_div_rem_native_amounts     | DivRemNativeAmountResult            |                             |
|                                         | abi_native_amount_to_string    | NativeAmountToStringResult          |                             |
|                                         | abi_native_amount_from_string  | NativeAmountFromStringResult        |                             |
|                                         | abi_native_amount_to_bytes     |                                     | to be removed in sc-runtime |
|                                         | abi_native_amount_from_bytes   |                                     | to be removed in sc-runtime |
|                                         | abi_log                        |                                     | tempory, for dev purpose    |
|                                         |                                | CheckedAddNativeTimeResult          |                             |
|                                         |                                | CheckedSubNativeTimeResult          |                             |
|                                         |                                | CheckedMulNativeTimeResult          |                             |
|                                         |                                | CheckedScalarDivRemNativeTimeResult |                             |
|                                         |                                | CheckedDivRemNativeTimeResult       |                             |
|                                         |                                | CompareNativeTimeResult             |                             |
|                                         |                                | CompareNativeAddressResult          |                             |
|                                         |                                | CompareNativePubKeyResult           |                             |
|                                         |                                | CompareNativeSigResult              |                             |
|                                         |                                | VerifyNativeSigResult               |                             |
|                                         |                                | CompareNativeAmountResult           |                             |
|                                         |                                | Keccak256Result                     |                             |
|                                         |                                | VerifyEvmSigResult                  |                             |
|                                         |                                | VerifyBlsSingleSigResult            |                             |
|                                         |                                | VerifyBlsMultiSigResult             |                             |