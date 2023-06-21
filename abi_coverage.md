| AS ABI                      | wasmv1 ABI                     | proto                               | comment             |
| --------------------------- | ------------------------------ | ----------------------------------- | ------------------- |
| abort                       | abi_abort                      |                                     | working need update |
| seed                        |                                | SeedResult                          |                     |
| Date.now                    |                                | DateNowResult                       |                     |
| console.log                 |                                | ConsolePutResult                    |                     |
| console.info                |                                | ConsolePutResult                    |                     |
| console.warn                |                                | ConsolePutResult                    |                     |
| console.error               |                                | ConsolePutResult                    |                     |
| console.debug               |                                | ConsolePutResult                    |                     |
| trace                       |                                | TraceResult                         |                     |
| process.exit                |                                | ProcessExitResult                   |                     |
| as__print                   |                                | PrintResult                         |                     |
| as__call                    | abi_call                       | CallResponse                        |                     |
| as__get_remaining_gas       |                                | GetRemainingGasResult               |                     |
| as__create_sc               | abi_create_sc                  | CreateSCResult                      |                     |
| as__set_data                |                                | SetDataResult                       |                     |
| as__set_data_for            |                                | SetDataForResult                    |                     |
| as__get_data                |                                | GetDataResult                       |                     |
| as__get_data_for            |                                | GetDataForResult                    |                     |
| as__delete_data             |                                | DeleteDataResult                    |                     |
| as__delete_data_for         |                                | DeleteDataForResult                 |                     |
| as__append_data             |                                | AppendDataResult                    |                     |
| as__append_data_for         |                                | AppendDataForResult                 |                     |
| as__has_data                |                                | HasDataResult                       |                     |
| as__has_data_for            |                                | HasDataForResult                    |                     |
| as__get_owned_addresses     |                                | GetOwnedAddressesResult             |                     |
| as__get_call_stack          |                                | GetCallStackResult                  |                     |
| as__generate_event          | abi_generate_event             | GenerateEventResult                 | working need update |
| as__transfer_coins          | abi_transfer_coins             | TransferCoinsResult                 | working need update |
| as__transfer_coins_for      |                                | TransferCoinsForResult              |                     |
| as__get_balance             |                                | GetBalanceResult                    |                     |
| as__get_balance_for         |                                | GetBalanceForResult                 |                     |
| as__hash                    |                                | NativeHashResult                    |                     |
| as__signature_verify        |                                | VerifyNativeSigResult               |                     |
| as__address_from_public_key |                                | NativeAddressFromNativePubKeyResult |                     |
| as__validate_address        | abi_check_native_address       | CheckNativeAddressResult            |                     |
| as__unsafe_random           |                                | UnsafeRandomResult                  |                     |
| as__get_call_coins          |                                | GetCallCoinsResult                  |                     |
| as__get_time                |                                | GetNativeTimeResult                 |                     |
| as__send_message            |                                |                                     |                     |
| as__get_current_period      |                                | GetCurrentPeriodResult              |                     |
| as__get_current_thread      |                                | GetCurrentThreadResult              |                     |
| as__set_bytecode            |                                | SetBytecodeResult                   |                     |
| as__set_bytecode_for        |                                | SetBytecodeForResult                |                     |
| as__get_op_keys             |                                | GetOpKeysResult                     |                     |
| as__get_keys                |                                | GetKeysResult                       |                     |
| as__get_keys_for            |                                | GetKeysForResult                    |                     |
| as__has_op_key              |                                | HasOpKeyResult                      |                     |
| as__get_op_data             |                                | GetOpDataResult                     |                     |
| as__get_bytecode            |                                | GetBytecodeResult                   |                     |
| as__get_bytecode_for        |                                | GetBytecodeForResult                |                     |
| as__local_call              | abi_local_call                 | LocalCallResponse                   | working need update |
| as__local_execution         |                                | LocalExecutionResponse              |                     |
| as__caller_has_write_access |                                | CallerHasWriteAccessResult          |                     |
| as__function_exists         | abi_function_exists            | FunctionExistsResult                | working need update |
| as__hash_sha256             |                                | HashSha256Result                    |                     |
|                             | abi_native_address_to_string   | NativeAddressToStringResult         |                     |
|                             | abi_native_pubkey_to_string    | NativePubKeyToStringResult          |                     |
|                             | abi_native_sig_to_string       | NativeSigToStringResult             |                     |
|                             | abi_native_hash_to_string      | NativeHashToStringResult            |                     |
|                             | abi_native_address_from_string | NativeAddressFromStringResult       |                     |
|                             | abi_native_pubkey_from_string  | NativePubKeyFromStringResult        |                     |
|                             | abi_native_sig_from_string     | NativeSigFromStringResult           |                     |
|                             | abi_native_hash_from_string    | NativeHashFromStringResult          |                     |
|                             | abi_check_native_pubkey        | CheckNativePubKeyResult             |                     |
|                             | abi_check_native_sig           | CheckNativeSigResult                |                     |
|                             | abi_check_native_hash          | CheckNativeHashResult               |                     |
|                             | abi_check_native_amount        | CheckNativeAmountResult             |                     |
|                             | abi_add_native_amounts         | AddNativeAmountsResult              |                     |
|                             | abi_sub_native_amounts         | SubNativeAmountsResult              |                     |
|                             | abi_mul_native_amount          | MulNativeAmountResult               |                     |
|                             | abi_div_rem_native_amount      | ScalarDivRemNativeAmountResult      |                     |
|                             | abi_div_rem_native_amounts     | DivRemNativeAmountResult            |                     |
|                             | abi_native_amount_to_string    | NativeAmountToStringResult          |                     |
|                             | abi_native_amount_from_string  | NativeAmountFromStringResult        |                     |
|                             |                                | CheckedAddNativeTimeResult          |                     |
|                             |                                | CheckedSubNativeTimeResult          |                     |
|                             |                                | CheckedMulNativeTimeResult          |                     |
|                             |                                | CheckedScalarDivRemNativeTimeResult |                     |
|                             |                                | CheckedDivRemNativeTimeResult       |                     |
|                             |                                | CompareNativeTimeResult             |                     |
|                             |                                | CompareNativeAddressResult          |                     |
|                             |                                | CompareNativePubKeyResult           |                     |
|                             |                                | CompareNativeSigResult              |                     |
|                             |                                | CompareNativeAmountResult           |                     |
|                             |                                | Keccak256Result                     |                     |
|                             |                                | VerifyEvmSigResult                  |                     |
|                             |                                | VerifyBlsSingleSigResult            |                     |
|                             |                                | VerifyBlsMultiSigResult             |                     |